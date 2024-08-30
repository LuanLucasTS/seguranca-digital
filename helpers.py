from mysql.connector import pooling, Error
from cryptography.fernet import Fernet
import calendar


def recupera_dados():
    with open("key", "rb") as key_file:
        key = key_file.read()
    cipher_suite = Fernet(key)
    with open("config", "rb") as file:
        cipher_text = file.read()
    plain_text = cipher_suite.decrypt(cipher_text)
    dados, validade = plain_text.decode().split("|")
    db_host, db_username, db_password, database = dados.split(":")
    return db_host, db_username, db_password, database, validade


def connection():
    try:
        dados = recupera_dados()
        pool = pooling.MySQLConnectionPool(
            pool_name="mypool",
            pool_size=10,
            host=dados[0],
            user=dados[1],
            password=dados[2],
            database=dados[3]
        )
        connection = pool.get_connection()
        if connection.is_connected():
            return connection
    except Error as e:
        print(f"Erro ao obter conexão: {e}")
        return None


def execute_query(query, params=None):
    conexao = connection()
    if conexao is None:
        print("Não foi possível obter conexão com o banco de dados.")
        return
    try:
        cursor = conexao.cursor()
        if params:
            cursor.execute(query, params)
        else:
            cursor.execute(query)
        result = cursor.fetchall()
        cursor.close()
        conexao.close()
        return result
    except Error as e:
        print(f"Erro ao executar a consulta: {e}")
        conexao = connection()
        if connection is not None:
            try:
                cursor = conexao.cursor()
                if params:
                    cursor.execute(query, params)
                else:
                    cursor.execute(query)
                result = cursor.fetchall()
                cursor.close()
                conexao.close()
                return result
            except Error as e:
                print(f"Erro ao reexecutar a consulta: {e}")
                return None
        else:
            print("Não foi possível restabelecer a conexão.")
            return None

def execute_non_query(query, params=None):
    conexao = connection()
    if conexao is None:
        print("Não foi possível obter conexão com o banco de dados.")
        return False
    try:
        cursor = conexao.cursor()
        if params:
            cursor.execute(query, params)
        else:
            cursor.execute(query)
        conexao.commit()
        cursor.close()
        conexao.close()
        return True
    except Error as e:
        print(f"Erro ao executar a operação: {e}")
        # Tentando restabelecer a conexão e reexecutar a operação
        conexao = connection()
        if conexao is not None:
            try:
                cursor = conexao.cursor()
                if params:
                    cursor.execute(query, params)
                else:
                    cursor.execute(query)
                conexao.commit()
                cursor.close()
                conexao.close()
                return True
            except Error as e:
                print(f"Erro ao reexecutar a operação: {e}")
                return False
        else:
            print("Não foi possível restabelecer a conexão.")
            return False
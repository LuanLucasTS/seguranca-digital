from flask import Flask, render_template, request, jsonify
import mysql.connector
from mysql.connector import Error

app = Flask(__name__)

# Função para conectar ao banco de dados
def get_db_connection():
    try:
        conn = mysql.connector.connect(
            host="localhost",
            user="seguranca-digital",
            password="AaHY^454#jUQSXJHtXdox4QY!w",
            database="seguranca-digital"
        )
        return conn
    except Error as e:
        print(f"Erro ao conectar ao banco de dados: {e}")
        return None

# Função para obter dados de autenticação
def get_data():
    conn = get_db_connection()
    if conn:
        cursor = conn.cursor()
        cursor.execute("SHOW COLUMNS FROM status_autenticacao")
        columns = [column[0] for column in cursor.fetchall() if column[0] != 'id']
        query = f"SELECT {', '.join(columns)} FROM status_autenticacao"
        cursor.execute(query)
        columns = [col[0] for col in cursor.description]
        result = cursor.fetchone()
        cursor.close()
        conn.close()

        if result:
            # Cria o dicionário original
            data_dict = dict(zip(columns, result))

            # Adiciona uma numeração sequencial
            numbered_dict = {i + 1: (key, value) for i, (key, value) in enumerate(data_dict.items())}

            return numbered_dict
    return None


# Função para atualizar dados de autenticação
def update_authentication_data(field, value):
    conn = get_db_connection()
    if conn:
        cursor = conn.cursor()
        query = f"UPDATE status_autenticacao SET {field} = %s"
        cursor.execute(query, (value,))
        conn.commit()
        cursor.close()
        conn.close()

@app.route('/update-config', methods=['POST'])
def update_config():
    data = request.json
    field = data['field']
    value = data['value']
    update_authentication_data(field, value)
    return jsonify(success=True)

def get_info(tabela):
    result = None
    try:
        conn = get_db_connection()
        if conn:
            cursor = conn.cursor()
            cursor.execute(f"SELECT * FROM {tabela}")
            result = cursor.fetchall()
            cursor.close()
            conn.close()
    except Exception as e:
        print(f"An error occurred: {e}")
    return result

@app.route('/')
def index():
    data = get_data()
    print(data)
    info = get_info("info_pagina")
    itens = get_info("itens_pagina")
    return render_template('index.html', data=data, info=info, itens=itens)

@app.route('/tema')
def tema():
    return render_template('tema.html')

@app.route('/demo')
def demo():
    return render_template('demo.html')

if __name__ == "__main__":
    app.run(debug=True)

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

# Função para obter dados de
def get_data(categoria):
    conn = get_db_connection()
    if conn:
        cursor = conn.cursor()
        cursor.execute(f"SHOW COLUMNS FROM status_{categoria}")
        columns = [column[0] for column in cursor.fetchall() if column[0] != 'id']
        query = f"SELECT {', '.join(columns)} FROM status_{categoria}"
        cursor.execute(query)
        columns = [col[0] for col in cursor.description]
        result = cursor.fetchone()
        cursor.close()
        conn.close()

        if result:
            data_dict = dict(zip(columns, result))
            numbered_dict = {i + 1: (key, value) for i, (key, value) in enumerate(data_dict.items())}
            return numbered_dict
    return None


# Função para atualizar dados de autenticação
def update_authentication_data(field, value, categoria):
    conn = get_db_connection()
    if conn:
        cursor = conn.cursor()
        query = f"UPDATE status_{categoria} SET {field} = %s"
        cursor.execute(query, (value,))
        conn.commit()
        cursor.close()
        conn.close()

@app.route('/update-config', methods=['POST'])
def update_config():
    data = request.json
    field = data['field']
    value = data['value']
    categoria = data['categoria']
    update_authentication_data(field, value, categoria)
    return jsonify(success=True)

def get_dados(tabela, categoria):
    result = None
    try:
        conn = get_db_connection()
        if conn:
            cursor = conn.cursor()
            cursor.execute(f"SELECT * FROM {tabela} where categoria = '{categoria}'")
            result = cursor.fetchall()
            cursor.close()
            conn.close()
    except Exception as e:
        print(f"An error occurred: {e}")
    return result

@app.route('/lista/<categoria>')
def lista(categoria):
    data = get_data(categoria)
    info = get_dados("info_pagina", categoria)
    itens = get_dados("itens_pagina", categoria)
    return render_template('lista.html', data=data, info=info, itens=itens, categoria=categoria)

@app.route('/tema')
def tema():
    return render_template('tema.html')

@app.route('/demo')
def demo():
    return render_template('demo.html')

if __name__ == "__main__":
    app.run(debug=True)

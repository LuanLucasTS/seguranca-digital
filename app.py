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
def get_authentication_data():
    conn = get_db_connection()
    if conn:
        cursor = conn.cursor()
        cursor.execute("SELECT senha_forte, nao_reusar, gerenciador_senha FROM autenticacao LIMIT 1")
        result = cursor.fetchone()
        cursor.close()
        conn.close()
        return {
            "senha_forte": result[0],
            "nao_reusar": result[1],
            "gerenciador_senha": result[2]
        }
    else:
        return None

# Função para atualizar dados de autenticação
def update_authentication_data(field, value):
    conn = get_db_connection()
    if conn:
        cursor = conn.cursor()
        query = f"UPDATE autenticacao SET {field} = %s"
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

@app.route('/')
def index():
    data = get_authentication_data()
    return render_template('index.html', data=data)

@app.route('/tema')
def tema():
    return render_template('tema.html')

@app.route('/demo')
def demo():
    return render_template('demo.html')

if __name__ == "__main__":
    app.run(debug=True)

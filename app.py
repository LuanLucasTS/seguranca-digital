from flask import Flask, render_template, request, jsonify
import mysql.connector

app = Flask(__name__)
def get_authentication_data():
    # Conecte-se ao banco de dados MySQL
    conn = mysql.connector.connect(
        host="localhost",
        user="seguranca-digital",
        password="AaHY^454#jUQSXJHtXdox4QY!w",
        database="seguranca-digital"
    )
    cursor = conn.cursor()

    # Execute a consulta para obter os dados
    cursor.execute("SELECT senha_forte, nao_reusar, gerenciador_senha FROM autenticacao LIMIT 1")
    result = cursor.fetchone()

    cursor.close()
    conn.close()

    return {
        "senha_forte": result[0],
        "nao_reusar": result[1],
        "gerenciador_senha": result[2]
    }

def update_authentication_data(field, value):
    # Conecte-se ao banco de dados MySQL
    conn = mysql.connector.connect(
        host="localhost",
        user="seguranca-digital",
        password="AaHY^454#jUQSXJHtXdox4QY!w",
        database="seguranca-digital"
    )
    cursor = conn.cursor()

    # Execute a consulta para atualizar os dados
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

if __name__ == "__main__":
    app.run(debug=True)

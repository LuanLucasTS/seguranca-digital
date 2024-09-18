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

def contar_colunas_e_nao_zero(tabela, linha_id):
    conn = get_db_connection()
    cursor = conn.cursor()

    # Obter o número de colunas da tabela
    cursor.execute(f"SELECT COUNT(*) FROM information_schema.columns WHERE table_name = '{tabela}' AND table_schema = 'seguranca-digital' AND column_name != 'id'")
    colunas = cursor.fetchone()[0]

    # Obter os valores da linha onde o id = linha_id, exceto a coluna "id"
    cursor.execute(f"SELECT * FROM {tabela} WHERE id = {linha_id}")
    linha = cursor.fetchone()

    # Obter o nome das colunas da tabela
    cursor.execute(f"SHOW COLUMNS FROM {tabela}")
    colunas_nome = cursor.fetchall()

    # Contar quantos valores são diferentes de 0, excluindo a coluna 'id'
    pronto = sum(1 for i, valor in enumerate(linha) if colunas_nome[i][0] != 'id' and valor != 0)

    cursor.close()
    conn.close()

    return pronto, colunas


def total_itens():
    conn = get_db_connection()
    cursor = conn.cursor()
    query = f"SELECT count(*) from itens_pagina"
    cursor.execute(query)
    total_itens = cursor.fetchone()
    cursor.close()
    conn.close()
    return total_itens

@app.route('/lista/<categoria>')
def lista(categoria):
    data = get_data(categoria)
    info = get_dados("info_pagina", categoria)
    itens = get_dados("itens_pagina", categoria)
    return render_template('lista.html', data=data, info=info, itens=itens, categoria=categoria)

@app.route('/')
def home():

    autenticacao = contar_colunas_e_nao_zero('status_autenticacao', 1)
    navegacao = contar_colunas_e_nao_zero('status_navegacao', 1)
    email = contar_colunas_e_nao_zero('status_email', 1)
    mensagem = contar_colunas_e_nao_zero('status_mensagem', 1)
    midia_social = contar_colunas_e_nao_zero('status_midia_social', 1)
    redes = contar_colunas_e_nao_zero('status_redes', 1)
    dispositivos_moveis = contar_colunas_e_nao_zero('status_dispositivos_moveis', 1)
    computador = contar_colunas_e_nao_zero('status_computador', 1)
    casa_inteligente = contar_colunas_e_nao_zero('status_casa_inteligente', 1)
    financas_pessoais = contar_colunas_e_nao_zero('status_financas_pessoais', 1)
    aspecto_humano = contar_colunas_e_nao_zero('status_aspecto_humano', 1)
    seguranca_fisica = contar_colunas_e_nao_zero('status_seguranca_fisica', 1)
    total_feito = autenticacao[0] + navegacao[0] + email[0] + mensagem[0] + midia_social[0] + redes[0] + dispositivos_moveis[0] + computador[0] + casa_inteligente[0] + financas_pessoais[0] + aspecto_humano[0] + seguranca_fisica[0]
    return render_template('home.html',
                           total_itens=total_itens(),
                           total_feito=total_feito,
                           autenticacao=autenticacao,
                           navegacao=navegacao,
                           email=email,
                           mensagem=mensagem,
                           midia_social=midia_social,
                           redes=redes,
                           dispositivos_moveis=dispositivos_moveis,
                           computador=computador,
                           casa_inteligente=casa_inteligente,
                           financas_pessoais=financas_pessoais,
                           aspecto_humano=aspecto_humano,
                           seguranca_fisica=seguranca_fisica)


if __name__ == "__main__":
    app.run(debug=True)

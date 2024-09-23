from flask import Flask, render_template, request, jsonify, redirect, url_for, flash, session
import mysql.connector
from mysql.connector import Error
import bcrypt
from datetime import datetime

app = Flask(__name__)
app.config['SECRET_KEY'] = 'asd89xc8n353897sd78vasvb3952isdf'

# Função para conectar ao banco de dados
def get_db_connection():
    try:
        conn = mysql.connector.connect(
            host="192.168.1.109",
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
    cursor = conn.cursor()
    email = (session['email_logado'])
    query = f"SELECT id FROM usuarios where email='{email}'"
    cursor.execute(query)
    id = cursor.fetchone()
    id = id[0]
    if conn:
        cursor = conn.cursor()
        cursor.execute(f"SHOW COLUMNS FROM status_{categoria}")
        columns = [column[0] for column in cursor.fetchall() if column[0] != 'id']
        query = f"SELECT {', '.join(columns)} FROM status_{categoria} WHERE id={id}"
        cursor.execute(query)
        columns = [col[0] for col in cursor.description]
        result = cursor.fetchone()
        if result:
            data_dict = dict(zip(columns, result))
            numbered_dict = {i + 1: (key, value) for i, (key, value) in enumerate(data_dict.items())}
            return numbered_dict
    return None


# Função para atualizar dados de autenticação
def update_authentication_data(field, value, categoria, id):
    conn = get_db_connection()
    if conn:
        cursor = conn.cursor()
        query = f"UPDATE status_{categoria} SET {field} = %s WHERE id={id}"
        cursor.execute(query, (value,))
        conn.commit()
        cursor.close()
        conn.close()

@app.route('/update-config', methods=['POST'])
def update_config():
    conn = get_db_connection()
    cursor = conn.cursor()
    email = (session['email_logado'])
    query = f"SELECT id FROM usuarios where email='{email}'"
    cursor.execute(query)
    id = cursor.fetchone()
    id = id[0]
    data = request.json
    field = data['field']
    value = data['value']
    categoria = data['categoria']
    update_authentication_data(field, value, categoria, id)
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
    if 'email_logado' not in session or session['email_logado'] is None:
        flash('Necessário fazer login')
        return redirect(url_for('login'))
    data = get_data(categoria)
    info = get_dados("info_pagina", categoria)
    itens = get_dados("itens_pagina", categoria)
    return render_template('lista.html', data=data, info=info, itens=itens, categoria=categoria)

@app.route('/')
def home():
    if 'email_logado' not in session or session['email_logado'] is None:
        flash('Necessário fazer login')
        return redirect(url_for('login'))

    conn = get_db_connection()
    cursor = conn.cursor()
    email = (session['email_logado'])
    query = f"SELECT id FROM usuarios where email='{email}'"
    cursor.execute(query)
    id = cursor.fetchone()
    id = id[0]
    autenticacao = contar_colunas_e_nao_zero('status_autenticacao', id)
    navegacao = contar_colunas_e_nao_zero('status_navegacao', id)
    email = contar_colunas_e_nao_zero('status_email', id)
    mensagem = contar_colunas_e_nao_zero('status_mensagem', id)
    midia_social = contar_colunas_e_nao_zero('status_midia_social', id)
    redes = contar_colunas_e_nao_zero('status_redes', id)
    dispositivos_moveis = contar_colunas_e_nao_zero('status_dispositivos_moveis', id)
    computador = contar_colunas_e_nao_zero('status_computador', id)
    casa_inteligente = contar_colunas_e_nao_zero('status_casa_inteligente', id)
    financas_pessoais = contar_colunas_e_nao_zero('status_financas_pessoais', id)
    aspecto_humano = contar_colunas_e_nao_zero('status_aspecto_humano', id)
    seguranca_fisica = contar_colunas_e_nao_zero('status_seguranca_fisica', id)
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

@app.route('/login', methods=['POST', 'GET'])
def login():
    conn = get_db_connection()
    cursor = conn.cursor()
    if request.method == 'GET':
        return render_template('login.html')
    else:
        email = request.form['email']
        senha = request.form['senha']
        query = f"SELECT senha FROM usuarios WHERE email='{email}'"
        cursor.execute(query)
        resultado = cursor.fetchone()
        resultado = resultado[0]
        if not resultado:
            flash('Falha na autenticação.')
            return redirect(url_for('login'))
        elif bcrypt.checkpw(senha.encode('utf-8'), resultado.encode('utf-8')):
            session['email_logado'] = request.form['email']
            return redirect(url_for('home'))
        else:
            flash('Falha na autenticação.')
            return redirect(url_for('home'))


@app.route('/logout')
def logout():
    session['email_logado'] = None
    flash('Você foi desconectado.')
    return redirect(url_for('login'))


@app.route('/novo_usuario', methods=['POST', 'GET'])
def novo_usuario():
    nome = request.form['nome']
    email = request.form['email']
    senha = bcrypt.hashpw(request.form['senha'].encode(), bcrypt.gensalt(12))
    senha = senha.decode()
    data_atual = datetime.now()
    conn = get_db_connection()
    cursor = conn.cursor()
    query = f"SELECT * FROM usuarios WHERE email='{email}'"
    cursor.execute(query)
    usuario = cursor.fetchone()
    if usuario:
        flash("Já existe um usuário com esse email")
        return redirect(url_for('login'))


    if conn:
        query = f"INSERT INTO usuarios (nome, email, senha, data_criacao) VALUES ('{nome}', '{email}', '{senha}', '{data_atual}')"
        cursor.execute(query)
        aspecto_humando = (f"INSERT INTO `seguranca-digital`.status_aspecto_humano (verifique_remetentes, notificacoes_popup, "
                           f"supervisao_dispositivo, prevenir_camfecting, surfista_ombro, phishing, stalkerwares, fontes_confiaveis,"
                           f" armazenamento_dados, borrar_documentos, https, cartoes_virtuais, permissoes_aplicativo, listas_publicas, informacoes_adicionais, c"
                           f"ompartilhamento_dados, privacidade, compartimentar, protetor_privacidade, endereco_encaminhamento, pagamento_anonimo) "
                           f"VALUES(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);")
        cursor.execute(aspecto_humando)
        autenticacao = (f"INSERT INTO `seguranca-digital`.status_autenticacao (senha_forte, nao_reusar, gerenciador_senha, evitar_compartilhar, "
                        f"`2fa`, codigos_backup, alertas_vazamento, protejet_senha, atualizar_senhas, nao_salvar, avitar_desconhecido, evitar_dicas,"
                        f" pergunta_seguranca, pin_curto, evitar_sms, gerenciador_2fa, desbloqueio_facial, keyloggers, token_hardware, gerenciador_offline, nomes_exclusivos) "
                        f"VALUES(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);")
        cursor.execute(autenticacao)
        casa_inteligente = (f"INSERT INTO `seguranca-digital`.status_casa_inteligente (renomear_dispositivos, desativar_microfone, entender_dados, configuracoes_privacidade,"
                            f" cuidado_vinculacao, firmware_atualizado, proteja_rede, cuidado_wearables, local_internet, riscos_alexa, monitorar_rede, negar_acesso, avaliar_riscos) "
                            f"VALUES(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);")
        cursor.execute(casa_inteligente)
        computador = (f"INSERT INTO `seguranca-digital`.status_computador (sistema_atualizado, criptografia, backup, cuidado_usb, bloqueio_tela, cortana_siri, revisar_aplicativos, "
                      f"gerenciar_permissoes, dados_nuvem, desbloqueio, deslicar_pc, conta_microsoft, servicoes_compartilhamento, conta_administrador, bloquear_webcam, filtro_privacidade, "
                      f"fisicamente_seguro, carregador, randon_wifi, firewall, keyloggers, conexao_teclado, injecao_teclas, antivirus_gratuito, rootkits, senha_bios, sistema_seguranca, vms, "
                      f"compartimentar, desativar_recursos, inicializacao_segura, acesso_ssh, fechar_portas, controle_acesso, token_canario) "
                      f"VALUES(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);")
        cursor.execute(computador)
        dispositivos_moveis = (f"INSERT INTO `seguranca-digital`.status_dispositivos_moveis (criptografia, recursos_conectividade, aplicativos_minimos, "
                               f"permissao_aplicativo, aplicativos_oficiais, ameacas_carregamento, pin_operadora, identificador_chamadas, mapas_offline, "
                               f"anuncios_personalizados, monitorar_rastreadores, apagar_discpositivo, firewall_movel, atividade_segundo_plano, sandbox, "
                               f"teclados_virtuais, reiniciar_dispositivo, evitar_sms, numero_privado, stalkerwares, navegador_aplicativo, rom_personalizada, trafego_tor) "
                               f"VALUES(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);")
        cursor.execute(dispositivos_moveis)
        email = (f"INSERT INTO `seguranca-digital`.status_email (varios_emails, endereco_privado, conta_segura, carregamento_automatico, texto_simples, aplicativos_terceiros, "
                 f"dados_confidenciais, provedor_seguro, chave_inteligente, encaminhamento_anonimo, subendereçamento, dominio_personalizado, cliente_backup, assinatura, "
                 f"respostas_automaticas, protocolo_correto, porta_tls) VALUES(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);")
        cursor.execute(email)
        financas_pessoais = (f"INSERT INTO `seguranca-digital`.status_financas_pessoais (alertas_fraude, congelamento_credito, cartoes_virtuais, transacoes_locais, "
                             f"criptomoedas, carteira_offline, comprar_criptomoedas, misturar_bitcoin, compras_online, entrega_alternativa) "
                             f"VALUES(0, 0, 0, 0, 0, 0, 0, 0, 0, 0);")
        cursor.execute(financas_pessoais)
        mensagem = (f"INSERT INTO `seguranca-digital`.status_mensagem (criptografia, codigo_aberto, confiavel, configuracoes_seguranca, ambiente_destinatario, servicos_nuvem, "
                    f"bate_papo_grupo, ambiente_seguro, combine_plano_comunicacao, retirar_metadados, urls_padrao, verifique_destinatario, mensagens_efemeras, evite_sms, "
                    f"cuidado_rastreadores, jurisdicao, sigilo_encaminhamento, plataforma_descentralizada) "
                    f"VALUES(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);")
        cursor.execute(mensagem)
        midia_social = (f"INSERT INTO `seguranca-digital`.status_midia_social (proteja_conta, configuracoes_privacidade, interacoes_publicas, interacoes_permanentes, "
                        f"nao_revele_muito, cuidado_envio, email_telefone, permissoes_desnecessarias, integracao_terceiros, dados_geograficos, remover_metadados, camuflagem_imagem, falsificar_gps, informações_falsas, nao_tenha)"
                        f"VALUES(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);")
        cursor.execute(midia_social)
        navegacao = (f"INSERT INTO `seguranca-digital`.status_navegacao (bloquear_anuncios, navegador_privacidade, pesquisa_privado, complementos_desnecessarios, "
                     f"navegador_atualizado, https, dns_https, multi_secao, modo_anonimo, impressao_digital, gerenciar_cookies, cookies_terceiros, rastreadores_terceiros, "
                     f"redirecionamento, login_navegador, servicos_previsao, google_tradutor, desativar_notificacoes, download_automático, acesso_sensores, localizacao, "
                     f"camera_microfone, senha_navegador, preenchimento_automatico, exfil, activex, webrtc, falsificar_assinatura_html5, agente_falso, desconsiderar_dnt, "
                     f"rastreamento_hsts, conexoes_automaticas, isolamento_primario, rastreamento_url, primeiro_lancamento, navegador_tor, desabilitar_javascript) "
                     f"VALUES(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);")
        cursor.execute(navegacao)
        redes = (f"INSERT INTO `seguranca-digital`.status_redes (senha_roteador, wpa2, firmware_atualizado, vpn_rede, vazamento_dns, vpn_segura, dns_seguro, roteador_gratuito, "
                 f"permissao_mac, ip_local, ssid, listagem_SSID, oculte_ssid, desativar_wps, desativar_upnp, rede_convidados, ip_padrao, desativar_servicos, fechar_portas, "
                 f"acesso_remoto, gerenciamento_nuvem, alcance_wifi, trafego_tor, desativar_wifi) VALUES(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);")
        cursor.execute(redes)
        seguranca_fisica = (f"INSERT INTO `seguranca-digital`.status_seguranca_fisica (destruir_documentos, desativar_registros_publicos, marca_dagua, chamadas_recebidas, fique_alerta, "
                            f"perimetro_seguro, dispositivos_seguros, fora_vista, pin, skimmers, endereco_residencial, pin_biometria, cctv, reconhecimento_antifacial, visao_noturna, vestigios_dna) "
                            f"VALUES(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);")
        cursor.execute(seguranca_fisica)
        conn.commit()
        cursor.close()
        conn.close()
        flash("Cadastro realizado com sucesso!")
    else:
        flash("Falha ao cadastrar. Por favor entre em contato com o administrador do sistema")
    return redirect(url_for('login'))


if __name__ == "__main__":
    app.run(debug=True)

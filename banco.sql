CREATE DATABASE `seguranca-digital`
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

CREATE USER 'seguranca-digital'@'localhost' IDENTIFIED BY 'AaHY^454#jUQSXJHtXdox4QY!w';
GRANT ALL PRIVILEGES ON `seguranca-digital`.* TO 'seguranca-digital'@'localhost';

CREATE TABLE `info_pagina` (
  `id` int(2),
  `icone` varchar(50),
  `titulo` varchar(30),
  `detalhes` text,
  `categoria` varchar(20),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE `itens_pagina` (
  `id` int(2),
  `descricao` varchar(100),
  `nivel` varchar(20),
  `detalhes` text,
  `categoria` varchar(20),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE `status_autenticacao` (
  `id` int(2),
  `senha_forte` int(2),
  `nao_reusar` int(2),
  `gerenciador_senha` int(2),
  `evitar_compartilhar` int(2),
  `2fa` int(2),
  `codigos_backup` int(2),
  `alertas_vazamento` int(2),
  `protejet_senha` int(2),
  `atualizar_senhas` int(2),
  `nao_salvar` int(2),
  `avitar_desconhecido` int(2),
  `evitar_dicas` int(2),
  `pergunta_seguranca` int(2),
  `pin_curto` int(2),
  `evitar_sms` int(2),
  `gerenciador_2fa` int(2),
  `desbloqueio_facial` int(2),
  `keyloggers` int(2),
  `token_hardware` int(2),
  `gerenciador_offline` int(2),
  `nomes_exclusivos` int(2),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE `status_navegacao` (
  `id` int(2),
  `bloquear_anuncios` int(2),
  `navegador_privacidade` int(2),
  `pesquisa_privado` int(2),
  `complementos_desnecessarios` int(2),
  `navegador_atualizado` int(2),
  `https` int(2),
  `dns_https` int(2),
  `multi_secao` int(2),
  `modo_anonimo` int(2),
  `impressao_digital` int(2),
  `gerenciar_cookies` int(2),
  `cookies_terceiros` int(2),
  `rastreadores_terceiros` int(2),
  `redirecionamento` int(2),
  `login_navegador` int(2),
  `servicos_previsao` int(2),
  `google_tradutor` int(2),
  `desativar_notificacoes` int(2),
  `download_automático` int(2),
  `acesso_sensores` int(2),
  `localizacao` int(2),
  `camera_microfone` int(2),
  `senha_navegador` int(2),
  `preenchimento_automatico` int(2),
  `exfil` int(2),
  `activex` int(2),
  `webrtc` int(2),
  `falsificar_assinatura_html5` int(2),
  `agente_falso` int(2),
  `desconsiderar_dnt` int(2),
  `rastreamento_hsts` int(2),
  `conexoes_automaticas` int(2),
  `isolamento_primario` int(2),
  `rastreamento_url` int(2),
  `primeiro_lancamento` int(2),
  `navegador_tor` int(2),
  `desabilitar_javascript` int(2)
) ENGINE=InnoDB;

CREATE TABLE `status_email` (
  `id` int(2),
  `varios_emails` int(2),
  `endereco_privado` int(2),
  `conta_segura` int(2),
  `carregamento_automatico` int(2),
  `texto_simples` int(2),
  `aplicativos_terceiros` int(2),
  `dados_confidenciais` int(2),
  `provedor_seguro` int(2),
  `chave_inteligente` int(2),
  `encaminhamento_anonimo` int(2),
  `subendereçamento` int(2),
  `dominio_personalizado` int(2),
  `cliente_backup` int(2),
  `assinatura` int(2),
  `respostas_automaticas` int(2),
  `protocolo_correto` int(2),
  `porta_tls` int(2)
) ENGINE=InnoDB;

CREATE TABLE `mensagens` (
  `id` int(2),
  `criptografia` int(2),
  `codigo_aberto` int(2),
  `confiavel` int(2),
  `configuracoes_seguranca` int(2),
  `ambiente_destinatario` int(2),
  `servicos_nuvem` int(2),
  `bate_papo_grupo` int(2),
  `ambiente_seguro` int(2),
  `combine_plano_comunicacao` int(2),
  `retirar_metadados` int(2),
  `urls_padrao` int(2),
  `verifique_destinatario` int(2),
  `mensagens_efemeras` int(2),
  `evite_sms` int(2),
  `cuidado_rastreadores` int(2),
  `jurisdicao` int(2),
  `sigilo_encaminhamento` int(2),
  `plataforma_descentralizada` int(2)
) ENGINE=InnoDB;

CREATE TABLE `midias_sociais` (
  `id` int(2),
  `proteja_conta` int(2),
  `configuracoes_privacidade` int(2),
  `interacoes_publicas` int(2),
  `interacoes_permanentes` int(2),
  `nao_revele_muito` int(2),
  `cuidado_envio` int(2),
  `email_telefone` int(2),
  `permissoes_desnecessarias` int(2),
  `integracao_terceiros` int(2),
  `dados_geograficos` int(2),
  `remover_metadados` int(2),
  `camuflagem_imagem` int(2),
  `falsificar_gps` int(2),
  `informações_falsas` int(2),
  `nao_tenha` int(2)
) ENGINE=InnoDB;

CREATE TABLE `redes` (
  `id` int(2),
  `senha_roteador` int(2),
  `wpa2` int(2),
  `firmware_atualizado` int(2),
  `vpn_rede` int(2),
  `vazamento_dns` int(2),
  `vpn_segura` int(2),
  `dns_seguro` int(2),
  `roteador_gratuito` int(2),
  `permissao_mac` int(2),
  `ip_local` int(2),
  `ssid` int(2),
  `listagem_SSID` int(2),
  `oculte_ssid` int(2),
  `desativar_wps` int(2),
  `desativar_upnp` int(2),
  `rede_convidados` int(2),
  `ip_padrao` int(2),
  `desativar_servicos` int(2),
  `fechar_portas` int(2),
  `acesso_remoto` int(2),
  `gerenciamento_nuvem` int(2),
  `alcance_wifi` int(2),
  `trafego_tor` int(2),
  `desativar_wifi` int(2)
) ENGINE=InnoDB;

CREATE TABLE `dispositivos_moveis` (
  `id` int(2),
  `criptografia` int(2),
  `recursos_conectividade` int(2),
  `aplicativos_minimos` int(2),
  `permissao_aplicativo` int(2),
  `aplicativos_oficiais` int(2),
  `ameacas_carregamento` int(2),
  `pin_operadora` int(2),
  `identificador_chamadas` int(2),
  `mapas_offline` int(2),
  `anuncios_personalizados` int(2),
  `monitorar_rastreadores` int(2),
  `firewall_movel` int(2),
  `atividade_segundo_plano` int(2),
  `sandbox` int(2),
  `trafego_tor` int(2),
  `teclados_virtuais` int(2),
  `reiniciar_dispositivo` int(2),
  `evitar_sms` int(2),
  `numero_privado` int(2),
  `stalkerwares` int(2),
  `navegador_aplicativo` int(2),
  `rom_personalizada` int(2)
) ENGINE=InnoDB;

CREATE TABLE `computador` (
  `id` int(2),
  `sistema_atualizado` int(2),
  `criptografia` int(2),
  `backup` int(2),
  `cuidado_usb` int(2),
  `bloqueio_tela` int(2),
  `cortana_siri` int(2),
  `revisar_aplicativos` int(2),
  `gerenciar_permissoes` int(2),
  `dados_nuvem` int(2),
  `desbloqueio` int(2),
  `deslicar_pc` int(2),
  `conta_microsoft` int(2),
  `servicoes_compartilhamento` int(2),
  `conta_administrador` int(2),
  `bloquear_webcam` int(2),
  `filtro_privacidade` int(2),
  `fisicamente_seguro` int(2),
  `carregador` int(2),
  `randon_wifi` int(2),
  `firewall` int(2),
  `keyloggers` int(2),
  `conexao_teclado` int(2),
  `injecao_teclas` int(2),
  `antivirus_gratuito` int(2),
  `senha_bios` int(2),
  `sistema_seguranca` int(2),
  `vms` int(2),
  `compartimentar` int(2),
  `desativar_recursos` int(2),
  `inicializacao_segura` int(2),
  `acesso_ssh` int(2),
  `fechar_portas` int(2),
  `controle_acesso` int(2),
  `token_canario` int(2)
) ENGINE=InnoDB;

CREATE TABLE `casa_inteligente` (
  `id` int(2),
  `renomear_dispositivos` int(2),
  `desativar_microfone` int(2),
  `enterder_dados` int(2),
  `configuracoes_privacidade` int(2),
  `cuidado_vinculacao` int(2),
  `firmware_atualizado` int(2),
  `proteja_rede` int(2),
  `cuidado_wearables` int(2),
  `riscos_alexa` int(2),
  `monitorar_rede` int(2),
  `negar_acesso` int(2),
  `avaliar_riscos` int(2)
) ENGINE=InnoDB;

CREATE TABLE `financas_pessoais` (
  `id` int(2),
  `alertas_fraude` int(2),
  `congelamento_credito` int(2),
  `cartoes_virtuais` int(2),
  `transacoes_locais` int(2),
  `criptomoedas` int(2),
  `carteira_offline` int(2),
  `comprar_criptomoedas` int(2),
  `misturar_bitcoin` int(2),
  `compras_online` int(2),
  `entrega_alternativa` int(2)
) ENGINE=InnoDB;

CREATE TABLE `aspecto_homano` (
  `id` int(2),
  `verifique_remetentes` int(2),
  `notificacoes_popup` int(2),
  `supervisao_dispositivo` int(2),
  `prevenir_camfecting` int(2),
  `surfista_ombro` int(2),
  `phishing` int(2),
  `stalkerwares` int(2),
  `fontes_confiaveis` int(2),
  `armazenamento_dados` int(2),
  `borrar_documentos` int(2),
  `https` int(2),
  `cartoes_virtuais` int(2),
  `permissoes_aplicativo` int(2),
  `listas_publicas` int(2),
  `informacoes_adicionais` int(2),
  `compartilhamento_dados` int(2),
  `privacidade` int(2),
  `compartimentar` int(2),
  `protetor_privacidade` int(2),
  `endereco_encaminhamento` int(2),
  `pagamento_anonimo` int(2)
) ENGINE=InnoDB;

CREATE TABLE `aspecto_homano` (
  `id` int(2),
  `destruir_documentos` int(2),
  `desativar_registros_publicos` int(2),
  `marca_dagua` int(2),
  `chamadas_recebidas` int(2),
  `fique_alerta` int(2),
  `perimetro_seguro` int(2),
  `dispositivos_seguros` int(2),
  `fora_vista` int(2),
  `pin` int(2),
  `skimmers` int(2),
  `endereco_residencial` int(2),
  `pin_biometria` int(2),
  `cctv` int(2),
  `reconhecimento_antifacial` int(2),
  `visao_noturna` int(2),
  `vestigios_dna` int(2)
) ENGINE=InnoDB;


INSERT INTO `seguranca-digital`.status_autenticacao
(id, senha_forte, nao_reusar, gerenciador_senha, evitar_compartilhar, `2fa`, codigos_backup, alertas_vazamento, protejet_senha, atualizar_senhas, nao_salvar, avitar_desconhecido, evitar_dicas, pergunta_seguranca, pin_curto, evitar_sms, gerenciador_2fa, desbloqueio_facial, keyloggers, token_hardware, gerenciador_offline, nomes_exclusivos)
VALUES(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
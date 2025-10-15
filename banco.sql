CREATE DATABASE `seguranca-digital`
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

CREATE USER 'seguranca-digital'@'%' IDENTIFIED BY 'AaHY^454#jUQSXJHtXdox4QY!w';
GRANT ALL PRIVILEGES ON `seguranca-digital`.* TO 'seguranca-digital'@'%';

CREATE TABLE `info_pagina` (
  `id` int(5) NOT NULL,
  `icone` varchar(50),
  `titulo` varchar(30),
  `detalhes` text,
  `categoria` varchar(20),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE `itens_pagina` (
  `id` int(2) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `nivel` varchar(20) DEFAULT NULL,
  `detalhes` text DEFAULT NULL,
  `categoria` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `status_autenticacao` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `desabilitar_javascript` int(2),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE `status_email` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `porta_tls` int(2),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE `status_mensagem` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `plataforma_descentralizada` int(2),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE `status_midia_social` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `nao_tenha` int(2),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE `status_redes` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `desativar_wifi` int(2),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE `status_dispositivos_moveis` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `apagar_discpositivo` int(2),
  `firewall_movel` int(2),
  `atividade_segundo_plano` int(2),
  `sandbox` int(2),
  `teclados_virtuais` int(2),
  `reiniciar_dispositivo` int(2),
  `evitar_sms` int(2),
  `numero_privado` int(2),
  `stalkerwares` int(2),
  `navegador_aplicativo` int(2),
  `rom_personalizada` int(2),
  `trafego_tor` int(2),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE `status_computador` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `rootkits` int(2),
  `senha_bios` int(2),
  `sistema_seguranca` int(2),
  `vms` int(2),
  `compartimentar` int(2),
  `desativar_recursos` int(2),
  `inicializacao_segura` int(2),
  `acesso_ssh` int(2),
  `fechar_portas` int(2),
  `controle_acesso` int(2),
  `token_canario` int(2),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE `status_casa_inteligente` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `renomear_dispositivos` int(2),
  `desativar_microfone` int(2),
  `entender_dados` int(2),
  `configuracoes_privacidade` int(2),
  `cuidado_vinculacao` int(2),
  `firmware_atualizado` int(2),
  `proteja_rede` int(2),
  `cuidado_wearables` int(2),
  `local_internet` int(2),
  `riscos_alexa` int(2),
  `monitorar_rede` int(2),
  `negar_acesso` int(2),
  `avaliar_riscos` int(2),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE `status_financas_pessoais` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `alertas_fraude` int(2),
  `congelamento_credito` int(2),
  `cartoes_virtuais` int(2),
  `transacoes_locais` int(2),
  `criptomoedas` int(2),
  `carteira_offline` int(2),
  `comprar_criptomoedas` int(2),
  `misturar_bitcoin` int(2),
  `compras_online` int(2),
  `entrega_alternativa` int(2),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE `status_aspecto_humano` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `pagamento_anonimo` int(2),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE `status_seguranca_fisica` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `vestigios_dna` int(2),
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE `usuarios` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50),
  `email` varchar(50),
  `senha` varchar(200),
  `data_criacao` date,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(1, 'Use senhas fortes', 'Essencial', 'Se sua senha for muito curta ou contiver palavras, lugares ou nomes de dicionário, ela poderá ser facilmente quebrada por força bruta ou adivinhada por alguém. A maneira mais fácil de criar uma senha forte é torná-la longa (mais de 12 caracteres). - considere usar uma ''frase secreta'', composta de muitas palavras. Como alternativa, use um gerador de senha para criar uma senha aleatória longa e forte. Experimente HowSecureIsMyPassword.net para ter uma ideia de quão rapidamente as senhas comuns podem ser. crackeado Leia mais sobre como criar senhas fortes: securityinabox.org.', 'autenticacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(2, 'Não reutilize senhas', 'Essencial', 'Se alguém reutilizar uma senha e um site em que tivesse uma conta sofresse um vazamento, um criminoso poderia facilmente obter acesso às outras contas. Isso geralmente é feito por meio de solicitações de login automatizadas não autorizadas em grande escala e é chamado de Credential Stuffing. Infelizmente, isso é muito comum, mas é simples de se proteger: use uma senha diferente para cada uma de suas contas online.', 'autenticacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(3, 'Use um gerenciador de senhas seguro', 'Essencial', 'Para a maioria das pessoas, será quase impossível lembrar centenas de senhas fortes e exclusivas. Um gerenciador de senhas é um aplicativo que gera, armazena e preenche automaticamente suas credenciais de login. Todas as suas senhas serão criptografadas em uma senha mestra. (que você deve lembrar e deve ser muito forte). A maioria dos gerenciadores de senhas possui extensões de navegador e aplicativos móveis, portanto, qualquer que seja o dispositivo em que você esteja, suas senhas podem ser preenchidas automaticamente. Um bom versátil é o Bitwarden', 'autenticacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(4, 'Evite compartilhar senhas', 'Essencial', 'Embora possa haver momentos em que você precise compartilhar o acesso a uma conta com outra pessoa, geralmente você deve evitar fazer isso porque torna mais fácil o comprometimento da conta se você realmente precisar compartilhar uma senha, por exemplo, ao trabalhar. para uma equipe com uma conta compartilhada, isso deve ser feito por meio de recursos integrados a um gerenciador de senhas.', 'autenticacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(5, 'Habilitar autenticação de dois fatores', 'Essencial', '2FA é onde você deve fornecer algo que você sabe (uma senha) e algo que você tem (como um código em seu telefone) para fazer login. Isso significa que se alguém tiver sua senha (por exemplo, por meio de phishing, malware ou violação de dados ), eles não conseguirão fazer login em sua conta. É fácil começar, baixe um aplicativo autenticador em seu telefone e, em seguida, acesse as configurações de segurança de sua conta e siga as etapas para ativar o 2FA na próxima vez que fizer login em um. novo dispositivo, será solicitado o código exibido no aplicativo do seu telefone (funciona sem internet e o código geralmente muda a cada 30 segundos)', 'autenticacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(6, 'Mantenha os códigos de backup seguros', 'Essencial', 'Ao ativar a autenticação multifator, você geralmente receberá vários códigos que poderá usar se o seu método 2FA for perdido, quebrado ou indisponível. Mantenha esses códigos em um local seguro para evitar perda ou acesso não autorizado. um local seguro no disco (por exemplo, em armazenamento offline ou em um arquivo/unidade criptografado). Não armazene-os em seu Gerenciador de senhas como fontes 2FA e senhas e devem ser mantidos separadamente.', 'autenticacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(7, 'Inscreva-se para receber alertas de violação', 'Opcional', 'Depois que um site sofre uma violação significativa de dados, os dados vazados geralmente acabam na internet. Existem vários sites que coletam esses registros vazados e permitem que você pesquise seu endereço de e-mail para verificar se está em alguma de suas listas. , haveibeenpwned.com e dehashed.com permitem que você se inscreva no monitoramento, onde eles irão notificá-lo se seu endereço de e-mail aparecer em algum novo conjunto de dados. É útil saber o mais rápido possível quando isso acontecer, para que você possa alterar seus dados. As senhas das contas afetadas também possuem notificação em todo o domínio, onde você pode receber alertas se algum endereço de e-mail em todo o seu domínio aparecer (útil se você usar aliases para encaminhamento anônimo).', 'autenticacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(8, 'Proteja sua senha/PIN', 'Opcional', 'Ao digitar sua senha em locais públicos, certifique-se de não estar na linha direta de uma câmera CCTV e de que ninguém possa ver por cima do seu ombro. Cubra sua senha ou código PIN enquanto você digita e não revele nenhuma senha em texto simples na tela', 'autenticacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(9, 'Atualize senhas críticas periodicamente', 'Opcional', 'Vazamentos e violações de bancos de dados são comuns, e é provável que várias de suas senhas já estejam em algum lugar online. Atualizar ocasionalmente as senhas de contas críticas para a segurança pode ajudar a mitigar isso. Não há necessidade de fazer isso com muita frequência, semestralmente deve ser suficiente.', 'autenticacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(10, 'Não salve sua senha em navegadores', 'Opcional', 'A maioria dos navegadores modernos oferece o salvamento de suas credenciais quando você faz login em um site. Não permita isso, pois elas nem sempre são criptografadas e, portanto, podem permitir que alguém obtenha acesso às suas contas. Em vez disso, use um gerenciador de senhas dedicado para armazenar de suas senhas', 'autenticacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(11, 'Evite fazer login no dispositivo de outra pessoa', 'Opcional', 'Evite fazer login no computador de outras pessoas, pois você não pode ter certeza de que o sistema delas está limpo. Seja especialmente cauteloso com máquinas públicas, pois malware e rastreamento são mais comuns nesse tipo de computador. Usar o dispositivo de outra pessoa é especialmente perigoso com contas críticas, como serviços bancários on-line. Ao usar a máquina de outra pessoa, certifique-se de estar em uma sessão privada/anônima (use Ctrl+Shift+N/Cmd+Shift+N). Isso solicitará que o navegador não salve suas credenciais, cookies e histórico de navegação.', 'autenticacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(12, 'Evite dicas de senha', 'Opcional', 'Alguns sites permitem que você defina dicas de senha. Muitas vezes é muito fácil adivinhar as respostas. Nos casos em que as dicas de senha são obrigatórias, use respostas aleatórias e registre-as no gerenciador de senhas Nome da primeira escola: 6D-02-8B-!a-E8-8F-81.', 'autenticacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(13, 'Nunca responda perguntas de segurança online com sinceridade', 'Opcional', 'Se um site fizer perguntas de segurança (como local de nascimento, nome de solteira da mãe ou primeiro carro, etc.), não forneça respostas reais. É uma tarefa trivial para os hackers descobrirem essas informações on-line ou por meio de engenharia social. Use uma resposta fictícia e armazene-a em seu gerenciador de senhas. Usar palavras reais é melhor do que caracteres aleatórios.', 'autenticacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(14, 'Não use um PIN de 4 dígitos', 'Opcional', 'Não use um PIN curto para acessar seu smartphone ou computador. Em vez disso, use uma senha de texto ou senhas muito mais longas que não são fáceis de decifrar (um PIN de 4 dígitos tem 10.000 combinações, em comparação com 7,4 milhões para um PIN de 4 caracteres. código alfanumérico)', 'autenticacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(15, 'Evite usar SMS para autenticação em dois fatores', 'Opcional', 'Ao ativar a autenticação multifator, opte por códigos baseados em aplicativo ou um token de hardware, se compatível, pois o SMS é suscetível a uma série de ameaças comuns, como troca e interceptação de SIM.Do ponto de vista prático, o SMS só funcionará quando você tiver sinal e pode ser lento. Se um site ou serviço exigir o uso de um número de SMS para recuperação, considere comprar um segundo número de telefone pré-pago usado apenas para recuperação de conta nesses casos.', 'autenticacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(16, 'Evite usar seu gerenciador de senhas para gerar senhas de uso único.', 'Avançado', 'Muitos gerenciadores de senhas também são capazes de gerar códigos 2FA. É melhor não usar seu gerenciador de senhas principal como autenticador 2FA, pois isso se tornaria um ponto único de falha se comprometido.', 'autenticacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(17, 'Evite o desbloqueio facial', 'Avançado', 'A maioria dos telefones e laptops oferece um recurso de autenticação de reconhecimento facial, usando a câmera para comparar uma foto do seu rosto com um hash armazenado. Pode ser muito conveniente, mas existem inúmeras maneiras de enganá-lo e obter acesso ao dispositivo, por meio de fotos digitais. e reconstruções de imagens de CFTV Ao contrário da sua senha, provavelmente há fotos do seu rosto na internet e vídeos gravados por câmeras de vigilância.', 'autenticacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(18, 'Cuidado com os Keyloggers', 'Avançado', 'Um keylogger de hardware é um dispositivo físico plantado entre o teclado e a porta USB, que intercepta todas as teclas digitadas e, às vezes, retransmite dados para um servidor remoto. Ele fornece ao hacker acesso a tudo o que é digitado, incluindo senhas. apenas verificando sua conexão USB depois que seu PC estiver sem supervisão. Também é possível que keyloggers sejam plantados dentro da caixa do teclado, portanto, procure por quaisquer sinais de que o gabinete foi adulterado. Os dados digitados em um teclado virtual, colado da área de transferência ou preenchido automaticamente por um gerenciador de senhas não pode ser interceptado por um keylogger de hardware.', 'autenticacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(19, 'Considere um token de hardware', 'Avançado', 'Uma chave de segurança U2F/FIDO2 é um dispositivo USB (ou NFC) que você insere ao fazer login em um serviço online, para verificar sua identidade, em vez de inserir um OTP do seu autenticador. SoloKey e NitroKey são exemplos de tais chaves. com eles vários benefícios de segurança, já que o navegador se comunica diretamente com o dispositivo e não pode ser enganado sobre qual host está solicitando autenticação, pois o certificado TLS é verificado.', 'autenticacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(20, 'Considere o gerenciador de senhas offline', 'Avançado', 'Para maior segurança, um gerenciador de senhas off-line criptografado lhe dará controle total sobre seus dados. KeePass é uma escolha popular, com muitos plug-ins e bifurcações de comunidade com compatibilidade e funcionalidades adicionais. Clientes populares incluem: KeePassXC (desktop), KeePassDX (Android). e StrongBox (iOS). A desvantagem é que pode ser um pouco menos conveniente para alguns e cabe a você fazer backup e armazená-lo com segurança.', 'autenticacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(21, 'Considere nomes de usuário exclusivos', 'Avançado', 'Ter senhas diferentes para cada conta é um bom primeiro passo, mas se você também usar um nome de usuário, e-mail ou número de telefone exclusivo para fazer login, será significativamente mais difícil para quem tenta obter acesso não autorizado. O método mais fácil para vários e-mails é usar apelidos gerados automaticamente para encaminhamento de e-mail anônimo. É aqui que [qualquer coisa]@seudominio.com chegará à sua caixa de entrada, permitindo que você use um e-mail diferente para cada conta (consulte Provedores de alias de e-mail). Os nomes de usuário são mais fáceis, pois você pode usar seu gerenciador de senhas para gerá-los, armazená-los e preenchê-los automaticamente. Números de telefone virtuais podem ser gerados através do seu provedor VOIP', 'autenticacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(22, '	Bloquear anúncios', 'Essencial', 'Usar um bloqueador de anúncios pode ajudar a melhorar sua privacidade, bloqueando os rastreadores implementados pelos anúncios. O uBlock Origin é um complemento de navegador muito eficiente e de código aberto, desenvolvido por Raymond Hill. Essa capacidade de rastreá-lo, coletando informações pessoais sobre você e seus hábitos, podem então ser vendidas ou usadas para mostrar anúncios mais direcionados e alguns anúncios são totalmente maliciosos ou falsos. O bloqueio de anúncios também faz com que as páginas carreguem mais rápido, usam menos dados e proporciona uma experiência menos confusa.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(23, 'Use um navegador que respeite a privacidade', 'Essencial', 'Firefox (com alguns ajustes) e Brave são navegadores seguros e que respeitam a privacidade. Ambos são rápidos, de código aberto, fáceis de usar e estão disponíveis em todos os principais sistemas operacionais. evite Google Chrome, Edge e Safari como (sem configuração correta) todos os três, coletam dados de uso.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(24, 'Use um mecanismo de pesquisa privado', 'Essencial', 'Usar um mecanismo de pesquisa que preserva a privacidade e não rastreia reduzirá o risco de que seus termos de pesquisa não sejam registrados ou usados ​​contra você. Considere DuckDuckGo ou Qwant. O Google implementa algumas políticas de rastreamento incrivelmente invasivas e tem um histórico de exibição de resultados de pesquisa tendenciosos. Portanto, o Google, juntamente com o Bing, o Baidu, o Yahoo e o Yandex, são incompatíveis com qualquer pessoa que pretenda proteger a sua privacidade. Recomenda-se atualizar a pesquisa padrão do seu navegador para um mecanismo de pesquisa que respeite a privacidade.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(25, 'Remova complementos desnecessários do navegador', 'Essencial', 'As extensões são capazes de ver, registrar ou modificar qualquer coisa que você faça no navegador e alguns aplicativos de navegador de aparência inocente têm interesse malicioso. Os sites ver quais extensões você instalou e podem usar isso para melhorar sua impressão podem digital, para identificar com mais precisão.e rastrear você. As lojas virtuais do Firefox e do Chrome permitem que você verifique quais permissões/direitos de acesso uma extensão necessária antes de colocá-la. Verifique os comentários.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(26, 'Mantenha o navegador atualizado', 'Essencial', 'As vulnerabilidades do navegador são constantemente descobertas e corrigidas, por isso é importante mantê-lo atualizado para evitar uma exploração de dia zero. Alguns navegadores serão atualizados automaticamente para a versão estável mais recente., mas é sempre bom ficar de olho em qual versão seu navegador se encontra.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(27, 'Verifique se há HTTPS', 'Essencial', 'Se você inserir informações em um site não HTTPS, esses dados serão transportados sem criptografia e, portanto, poderão ser lidos por qualquer pessoa que os intercepte. Não insira nenhum dado em um site não HTTPS, mas também não deixe que o cadeado verde lhe dê uma falsa sensação de segurança, só porque um site possui certificado SSL, não significa que seja legítimo ou confiável.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(28, 'Use DNS sobre HTTPS', 'Essencial', 'O DNS tradicional faz solicitações em texto simples para que todos possam ver. Ele permite a espionagem e manipulação de dados DNS por meio de ataques man-in-the-middle. Enquanto o DNS sobre HTTPS realiza a resolução de DNS por meio do protocolo HTTPS, o que significa que os dados entre você e seu resolvedor de DNS são criptografados. Uma opção popular é o 1.1.1.1 do CloudFlare, ou compare provedores – é simples de habilitar no navegador. Observe que o DoH tem seus próprios problemas, principalmente impedindo a filtragem da web.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(29, 'Multi seções', 'Essencial', 'A compartimentação é muito importante para manter separados os diferentes aspectos da sua navegação. Por exemplo, usar perfis diferentes para trabalho, navegação geral, mídias sociais, compras on-line, etc., reduzirá o número de associações que os corretores de dados podem vincular a você. Uma opção é utilizar o Firefox Containers que foi desenvolvido exatamente para esse fim. Alternativamente, você pode usar navegadores diferentes para tarefas diferentes (Brave, Firefox, Tor etc).', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(30, 'Usar aba anônima', 'Essencial', 'Ao usar a máquina de outra pessoa, certifique-se de estar em uma sessão privada/anônima. Isso impedirá que o histórico do navegador, os cookies e alguns dados sejam salvos, mas não é infalível – você ainda pode ser rastreado.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(31, 'Entenda a impressão digital do seu navegador', 'Essencial', 'A impressão digital do navegador é um método de rastreamento incrivelmente preciso, onde um site identifica você com base nas informações do seu dispositivo. Você pode ver sua impressão digital em amiunique.org – O objetivo é ser o menos exclusivo possível.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(32, 'Gerenciamento de cookies', 'Essencial', 'Limpar cookies regularmente é uma etapa que você pode realizar para ajudar a evitar que os sites rastreiem você. Os cookies também podem armazenar o seu token de sessão, que, se capturado, permitiria que alguém acessasse suas contas sem credenciais. Para atenuar isso, você deve limpar os cookies com frequência.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(33, 'Bloqueio de cookies de terceiros', 'Essencial', 'Cookies de terceiros colocados no seu dispositivo por um site diferente daquele que você está visitando. Isto representa um risco de privacidade, pois uma terceira entidade pode coletar dados da sua sessão atual.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(34, 'Bloqueio de gerenciador de terceiros', 'Essencial', 'O bloqueio de rastreadores ajudará a impedir que sites, anunciantes, análises e muito mais rastreiem você em segundo plano. Privacy Badger, DuckDuckGo Privacy Essentials, uBlock Origin e uMatrix (avançado) são bloqueadores de rastreadores de código aberto muito eficazes, disponíveis para todos os principais navegadores.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(35, 'Cuidado com redirecionamentos', 'Opcional', 'Embora alguns redirecionamentos sejam inofensivos, outros, como os redirecionamentos não validados, são usados ​​em ataques de phishing, podendo fazer com que um link malicioso pareça legítimo. Se não tiver certeza sobre um URL de redirecionamento, você pode verificar para onde ele encaminha com uma ferramenta como o RedirectDetective.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(36, 'Não faça login no seu navegador', 'Opcional', 'Muitos navegadores permitem que você faça login para sincronizar histórico, favoritos e outros dados de navegação entre dispositivos. No entanto, isto não só permite uma maior recolha de dados, mas também aumenta a superfície de ataque ao fornecer outra via para um agente malicioso obter informações pessoais.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(37, 'Desabilite serviços de previsão', 'Opcional', 'Alguns navegadores permitem serviços de previsão, onde você recebe resultados de pesquisa em tempo real ou preenchimento automático de URL. Se estiver ativado, os dados serão enviados ao Google (ou ao seu mecanismo de pesquisa padrão) a cada pressionamento de tecla, e não quando você pressiona Enter.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(38, 'Evite a extensão do google tradutor', 'Opcional', 'Ao visitar uma página da web escrita em um idioma estrangeiro, você pode ser solicitado a instalar a extensão do Google Tradutor. Esteja ciente de que o Google coleta todos os dados (incluindo campos de entrada), juntamente com detalhes do usuário atual. Em vez disso, use um serviço de tradução que não esteja vinculado ao seu navegador.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(39, 'Desabilite as notificações do navegador', 'Opcional', 'As notificações push do navegador são um método comum para os criminosos encorajarem você a clicar no link deles, pois é fácil falsificar a fonte. Esteja ciente disso e para obter instruções sobre como desativar as notificações do navegador, consulte este artigo.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(40, 'Desabilite os downloads automáticos', 'Opcional', 'Os downloads drive-by são um método comum de colocar arquivos prejudiciais no dispositivo do usuário. Isso pode ser atenuado desativando o download automático de arquivos e tomando cuidado com sites que solicitam o download inesperado de arquivos.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(41, 'Desabilite o acesso aos sensores', 'Opcional', 'Sites móveis podem acessar os sensores do seu dispositivo sem perguntar. Se você conceder essas permissões ao seu navegador uma vez, todos os sites poderão usar esses recursos, sem permissão ou notificação.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(42, 'Desabilite a localização', 'Opcional', 'Os Serviços de Localização permitem que os sites solicitem sua localização física para melhorar sua experiência. Isso deve ser desativado nas configurações. Observe que ainda existem outros métodos para determinar sua localização aproximada.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(43, 'Desabilite o acesso da camera e microfone', 'Opcional', 'Verifique as configurações do navegador para garantir que nenhum site tenha acesso à webcam ou ao microfone. Também pode ser benéfico usar proteção física, como capa de webcam e bloqueador de microfone.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(44, 'Desabilite o salvamento de senhas no navegador', 'Opcional', 'Não permita que seu navegador armazene nomes de usuário e senhas. Eles podem ser facilmente visualizados ou acessados. Em vez disso, use um gerenciador de senhas.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(46, 'Desabilite o autocompletar no navegador', 'Opcional', 'Desative o preenchimento automático para quaisquer dados confidenciais ou pessoais. Este recurso pode ser prejudicial se o seu navegador estiver comprometido de alguma forma. Em vez disso, considere usar o recurso Notas do seu gerenciador de senhas.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(47, 'Proteja-se do ataque  Exfil', 'Avançado', 'O ataque CSS Exfiltrate é um método onde credenciais e outros detalhes confidenciais podem ser obtidos apenas com CSS puro. Você pode ficar protegido com o plugin CSS Exfil Protection.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(48, 'Desative o ActiveX', 'Avançado', 'ActiveX é uma API de extensão de navegador incorporada ao Microsoft IE e habilitada por padrão. Não é mais comumente usado, mas como dá direitos de acesso íntimo aos plug-ins e pode ser perigoso, você deve desativá-lo.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(49, 'Desative o WebRTC', 'Avançado', 'O WebRTC permite comunicação de áudio/vídeo de alta qualidade e compartilhamento de arquivos ponto a ponto diretamente do navegador. No entanto, pode representar um vazamento de privacidade. Para saber mais, confira este guia.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(50, 'Falsificação de assinatura de tela HTML5', 'Avançado', 'O Canvas Fingerprinting permite que os sites identifiquem e rastreiem os usuários com muita precisão. Você pode usar a extensão Canvas-Fingerprint-Blocker para falsificar sua impressão digital ou usar o Tor.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(51, 'Agente de usuário falso', 'Avançado', 'O agente do usuário informa ao site qual dispositivo, navegador e versão você está usando. Trocar de agente de usuário periodicamente é um pequeno passo que você pode dar para se tornar menos exclusivo.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(52, 'Desabilitar DnT', 'Avançado', 'A ativação do Do Not Track tem um impacto muito limitado, uma vez que muitos sites não respeitam ou não seguem isso. Como raramente é usado, também pode ser adicionado à sua assinatura, tornando-o mais exclusivo.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(53, 'Previna-se do rastreamento HSTS', 'Avançado', 'O HSTS foi projetado para ajudar a proteger sites, mas surgiram preocupações com a privacidade, pois permitiu que os operadores de sites plantassem supercookies. Ele pode ser desativado visitando chrome://net-internals/#hsts em navegadores baseados em Chromium.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(54, 'Desabilite conecções automaticas à servidores', 'Avançado', 'Mesmo quando você não estiver usando seu navegador, ele poderá se conectar com os servidores para relatar atividades de uso, análises e diagnósticos. Você pode desabilitar algumas dessas opções, o que pode ser feito nas configurações.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(55, 'Ativar o isolamento primário', 'Avançado', 'O isolamento primário significa que todas as fontes de identificador e estado do navegador têm como escopo o domínio da barra de URL, o que pode reduzir bastante o rastreamento.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(56, 'Retirar parâmetros de rastreamento de URLs', 'Avançado', 'Os sites geralmente acrescentam parâmetros GET adicionais aos URLs em que você clica, para identificar informações como origem/referenciador. Você pode limpar manualmente ou usar uma extensão como ClearURLs para remover dados de rastreamento de URLs automaticamente.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(57, 'Segurança na primeira execução', 'Avançado', 'Depois de instalar um navegador da web, na primeira vez que você iniciá-lo (antes de definir suas configurações de privacidade), a maioria dos navegadores ligará para casa. Portanto, depois de instalar um navegador, você deve primeiro desabilitar sua conexão com a Internet e, em seguida, configurar as opções de privacidade antes de reativar sua conectividade com a Internet.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(58, 'Use o navegador Tor', 'Avançado', 'O Projeto Tor fornece um navegador que criptografa e roteia seu tráfego através de vários nós, mantendo os usuários protegidos contra interceptação e rastreamento. As principais desvantagens são a velocidade e a experiência do usuário.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(59, 'Desabilite o JavaScript', 'Avançado', 'Avançado
Muitos aplicativos da web modernos são baseados em JavaScript, portanto, desativá-los diminuirá bastante sua experiência de navegação. Mas se você realmente quiser dar tudo de si, isso realmente reduzirá sua superfície de ataque.', 'navegacao');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(60, 'Tenha mais de um endereço de email', 'Essencial', 'Considere usar um endereço de e-mail diferente para comunicações críticas de segurança de e-mails triviais, como boletins informativos. Esta compartimentação poderia reduzir a quantidade de danos causados ​​por uma violação de dados e também facilitar a recuperação de uma conta comprometida.', 'email');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(61, 'Mantenha o endereço de e-mail privado', 'Essencial', 'Não compartilhe seu e-mail principal publicamente, pois os endereços de e-mail costumam ser o ponto de partida para a maioria dos ataques de phishing.', 'email');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(62, 'Mantenha sua conta segura', 'Essencial', 'Use uma senha longa e exclusiva, habilite 2FA e tenha cuidado ao fazer login. Sua conta de e-mail fornece um ponto de entrada fácil para um invasor para todas as suas outras contas online.', 'email');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(63, 'Desative o carregamento automático de conteúdo remoto', 'Essencial', 'As mensagens de email podem conter conteúdo remoto, como imagens ou folhas de estilo, geralmente carregadas automaticamente do servidor. Você deve desabilitar esta opção, pois ela expõe seu endereço IP e informações do dispositivo e é frequentemente usada para rastreamento. Para obter mais informações, consulte este artigo.', 'email');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(65, 'Use texto simples', 'Opcional', 'Existem dois tipos principais de e-mail na internet: texto simples e HTML. O primeiro é fortemente preferido para privacidade e segurança, pois as mensagens HTML geralmente incluem identificadores em links e imagens embutidas, que podem coletar dados pessoais e de uso. Existem também vários riscos de execução remota de código direcionado ao analisador HTML do seu cliente de e-mail, que não pode ser explorado se você estiver usando texto simples. Para obter mais informações, bem como instruções de configuração para seu provedor de e-mail, consulte UsePlaintext.email.', 'email');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(66, 'Não conecte aplicativos de terceiros à sua conta de e-mail', 'Opcional', 'Se você conceder a um aplicativo ou plug-in de terceiros acesso total à sua caixa de entrada, eles terão acesso total e irrestrito a todos os seus e-mails e seu conteúdo, o que representa riscos significativos de segurança e privacidade.', 'email');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(67, 'Não compartilhe dados confidenciais por e-mail', 'Opcional', 'Os e-mails são facilmente interceptados. Além disso, você não pode ter certeza de quão seguro é o ambiente do destinatário. Portanto, os e-mails não podem ser considerados seguros para troca de informações confidenciais, a menos que sejam criptografados.', 'email');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(68, 'Considere mudar para um provedor de correio seguro', 'Opcional', 'Secure and reputable email providers such as Forward Email, ProtonMail, and Tutanota allow for end-to-end encryption, full privacy as well as more security-focused features. Unlike typical email providers, your mailbox cannot be read by anyone but you, since all messages are encrypted.', 'email');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(69, 'Use uma chave inteligente', 'Avançado', 'OpenPGP não oferece suporte ao sigilo de encaminhamento, o que significa que se a sua chave privada ou a do destinatário for roubada, todas as mensagens anteriores criptografadas com ela serão expostas. Portanto, você deve tomar muito cuidado para manter suas chaves privadas seguras. Um método para fazer isso é usar uma chave inteligente USB para assinar ou descriptografar mensagens, permitindo que você faça isso sem que sua chave privada saia do dispositivo USB.', 'email');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(70, 'Usar alias/encaminhamento anônimo', 'Avançado', 'O alias de e-mail permite que mensagens sejam enviadas para [qualquer coisa]@meu-domínio.com e ainda cheguem à sua caixa de entrada principal. Permitindo efetivamente que você use um endereço de e-mail diferente e exclusivo para cada serviço no qual você se inscrever. Isso significa que se você começar a receber spam, poderá bloquear esse alias e determinar qual empresa vazou seu endereço de e-mail.', 'email');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(71, 'Subendereçamento', 'Avançado', 'Uma alternativa ao alias é o subendereçamento, onde qualquer coisa após o símbolo + é omitida durante a entrega da correspondência. Isso permite que você acompanhe quem compartilhou/vazou seu endereço de e-mail, mas, diferentemente do alias, não protegerá contra a revelação do seu endereço real.', 'email');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(72, 'Use um domínio customizado', 'Avançado', 'Usar um domínio personalizado significa que você não depende do endereço atribuído pelo seu provedor de e-mail. Assim, você pode facilmente trocar de provedor no futuro e não precisa se preocupar com a descontinuação de um serviço.', 'email');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(73, 'Sincronize com um cliente para fazer backup', 'Avançado', 'Para evitar a perda de acesso temporário ou permanente aos seus e-mails durante um evento não planejado (como uma interrupção ou bloqueio de conta), o Thunderbird pode sincronizar/fazer backup de mensagens de várias contas via IMAP e armazená-las localmente no seu dispositivo principal.', 'email');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(74, 'Tenha cuidado com assinaturas de email', 'Avançado', 'Você não sabe o quão seguro é o ambiente de e-mail que o destinatário da sua mensagem pode ter. Existem várias extensões que rastreiam mensagens automaticamente e criam um banco de dados detalhado de informações de contato com base em assinaturas de e-mail.', 'email');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(75, 'Cuidado com respostas automáticas', 'Avançado', 'As respostas automáticas fora do escritório são muito úteis para informar as pessoas de que haverá um atraso na resposta, mas muitas vezes as pessoas revelam demasiada informação – que pode ser usada em engenharia social e ataques direcionados.', 'email');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(76, 'Escolha o protocolo de email certo', 'Avançado', 'Não utilize protocolos desatualizados (abaixo de IMAPv4 ou POPv3), ambos possuem vulnerabilidades conhecidas e segurança desatualizada.', 'email');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(77, 'Sempre use portas TLS', 'Avançado', 'Existem opções SSL para POP3, IMAP e SMTP como portas TCP/IP padrão. Eles são fáceis de usar e têm amplo suporte, portanto devem sempre ser usados ​​em vez de portas de e-mail de texto simples.', 'email');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(78, 'Use apenas mensageiros totalmente criptografados de ponta a ponta', 'Essencial', 'A criptografia ponta a ponta é um sistema de comunicação em que as mensagens são criptografadas no seu dispositivo e não descriptografadas até chegarem ao destinatário pretendido. Isto garante que qualquer interveniente que intercepte o tráfego não possa ler o conteúdo da mensagem, nem qualquer pessoa com acesso aos servidores centrais onde os dados são armazenados.', 'mensagem');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(79, 'Use apenas plataformas de mensagens de código aberto', 'Essencial', 'Se o código for de código aberto, ele poderá ser examinado e auditado de forma independente por qualquer pessoa qualificada para fazê-lo, para garantir que não haja backdoors, vulnerabilidades ou outros problemas de segurança.', 'mensagem');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(80, 'Use uma plataforma de mensagens “confiável”', 'Essencial', 'Ao selecionar um aplicativo de mensagens criptografadas, certifique-se de que ele seja totalmente de código aberto, estável, mantido ativamente e, de preferência, apoiado por desenvolvedores confiáveis.', 'mensagem');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(81, 'Verifique as configurações de segurança', 'Essencial', 'Ative as configurações de segurança, incluindo verificação de contatos, notificações de segurança e criptografia. Desative recursos opcionais não relacionados à segurança, como recibo de leitura, último online e notificação de digitação.', 'mensagem');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(82, 'Garanta que o ambiente dos seus destinatários seja seguro', 'Essencial', 'Sua conversa só pode ser tão segura quanto o elo mais fraco. Freqüentemente, a maneira mais fácil de se infiltrar em um canal de comunicação é atingir o indivíduo ou nó com menos proteção.', 'mensagem');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(83, 'Desabilite serviços em nuvem', 'Essencial', 'Alguns aplicativos de mensagens móveis oferecem um complemento para web ou desktop. Isto não só aumenta a superfície de ataque, mas também tem sido associado a vários problemas críticos de segurança e, portanto, deve ser evitado, se possível.', 'mensagem');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(84, 'Chats em grupo seguros', 'Essencial', 'O risco de comprometimento aumenta exponencialmente quanto mais participantes houver em um grupo, à medida que a superfície de ataque aumenta. Verifique periodicamente se todos os participantes são legítimos.', 'mensagem');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(85, '
Crie um ambiente seguro para comunicação', 'Essencial', 'Existem vários estágios em que suas comunicações digitais podem ser monitoradas ou interceptadas. Isso inclui: o seu dispositivo ou o dos seus participantes, seu ISP, gateway nacional ou registro governamental, o provedor de mensagens, os servidores.', 'mensagem');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(86, 'Combine um plano de comunicação', 'Opcional', 'Em determinadas situações, pode valer a pena fazer um plano de comunicação. Isso deve incluir métodos primários e de backup para se comunicarem com segurança.', 'mensagem');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(87, 'Retirar metadados da mídia', 'Opcional', 'Metadados são “Dados sobre Dados” ou informações adicionais anexadas a um arquivo ou transação. Ao enviar uma foto, gravação de áudio, vídeo ou documento, você pode estar revelando mais do que pretendia.', 'mensagem');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(88, 'URLs padrão', 'Opcional', 'O envio de links por meio de vários serviços pode expor involuntariamente suas informações pessoais. Isso ocorre porque, quando uma miniatura ou visualização é gerada, isso acontece no lado do cliente.', 'mensagem');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(89, 'Verifique seu destinatário', 'Opcional', 'Certifique-se sempre de estar falando com o destinatário pretendido e de que ele não foi comprometido. Um método para fazer isso é usar um aplicativo que suporte verificação de contato.', 'mensagem');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(90, 'Habilitar mensagens efêmeras', 'Opcional', 'Mensagens autodestrutivas são um recurso que faz com que suas mensagens sejam excluídas automaticamente após um determinado período de tempo. Isto significa que se o seu dispositivo for perdido, roubado ou apreendido, um adversário só terá acesso às comunicações mais recentes.', 'mensagem');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(91, 'Evite SMS', 'Opcional', 'SMS pode ser conveniente, mas não é seguro. É suscetível a ameaças como interceptação, troca de sim, manipulação e malware.', 'mensagem');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(92, 'Cuidado com os rastreadores', 'Opcional', 'Tenha cuidado com aplicativos de mensagens com rastreadores, pois as estatísticas detalhadas de uso que eles coletam costumam ser muito invasivas e, às vezes, podem revelar sua identidade, bem como informações pessoais que, de outra forma, você não pretenderia compartilhar.', 'mensagem');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(93, 'Considere a jurisdição', 'Avançado', 'As jurisdições onde a organização está sediada e os dados estão hospedados também devem ser levadas em consideração.', 'mensagem');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(94, 'Use uma plataforma anônima', 'Avançado', 'Se você acredita que pode ser um alvo, você deve optar por uma plataforma de mensagens anônimas que não exija um número de telefone ou qualquer outra informação de identificação pessoal para se inscrever ou usar.', 'mensagem');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(95, 'Certifique-se de que o sigilo de encaminhamento seja compatível', 'Avançado', 'Opte por uma plataforma que implemente sigilo de encaminhamento. É aqui que seu aplicativo gera uma nova chave de criptografia para cada mensagem.', 'mensagem');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(96, 'Considere uma plataforma descentralizada', 'Avançado', 'Se todos os dados fluem através de um provedor central, você deve confiar seus dados e metadados a ele. Você não pode verificar se o sistema em execução é autêntico sem backdoors.', 'mensagem');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(97, 'Proteja sua conta', 'Essencial', 'Perfis de mídia social são roubados ou assumidos com muita frequência. Para proteger sua conta: use uma senha única e forte e habilite a autenticação de dois fatores.', 'midia_social');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(98, 'Verifique as configurações de privacidade', 'Essencial', 'A maioria das redes sociais permite que você controle suas configurações de privacidade. Certifique-se de estar confortável com quais dados você está expondo atualmente e para quem.', 'midia_social');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(99, 'Pense em todas as interações como sendo públicas', 'Essencial', 'Ainda existem vários métodos de visualização do conteúdo “privado” de um usuário em muitas redes sociais. Portanto, antes de enviar, postar ou comentar qualquer coisa, pense “Eu me importaria se isso fosse totalmente público?”', 'midia_social');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(100, 'Pense em todas as interações como sendo permanentes', 'Essencial', 'Praticamente todas as postagens, comentários, fotos etc. são continuamente apoiados por uma infinidade de serviços de terceiros, que arquivam esses dados e os tornam indexáveis ​​e disponíveis publicamente quase para sempre.', 'midia_social');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(101, 'Não revele muito', 'Essencial', 'As informações de perfil criam uma mina de ouro de informações para hackers, o tipo de dados que os ajuda a personalizar golpes de phishing. Evite compartilhar muitos detalhes (DoB, cidade natal, escola, etc.).', 'midia_social');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(102, 'Cuidado com o que você faz upload', 'Essencial', 'Atualizações de status, comentários, check-ins e mídia podem revelar involuntariamente muito mais do que você pretendia. Isto é especialmente relevante para fotos e vídeos, que podem mostrar coisas em segundo plano.', 'midia_social');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(103, 'Não compartilhe email ou número de telefone', 'Essencial', 'Publicar seu endereço de e-mail real ou número de celular oferece a hackers, trolls e spammers mais munição para usar contra você e também pode permitir a conexão de aliases, perfis ou pontos de dados separados.', 'midia_social');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(104, 'Não de permissões desnecessárias', 'Essencial', 'Por padrão, muitos dos aplicativos populares de redes sociais solicitarão permissão para acessar seus contatos, registro de chamadas, localização, histórico de mensagens, etc.', 'midia_social');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(105, 'Tome cuidado com integrações de terceiros', 'Essencial', 'Evite inscrever-se em contas usando login de rede social, revogue o acesso a aplicativos sociais que você não usa mais.', 'midia_social');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(106, 'Evite publicar dados geográficos enquanto ainda estiver no local', 'Essencial', 'Se você planeja compartilhar qualquer conteúdo que revele um local, espere até sair desse local. Isto é particularmente importante quando você estiver viajando em um restaurante, campus, hotel/resort, prédio público ou aeroporto.', 'midia_social');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(107, 'Remova metadados antes de enviar medias', 'Opcional', 'A maioria dos smartphones e algumas câmeras anexam automaticamente um conjunto abrangente de dados adicionais (chamados dados EXIF) a cada fotografia. Remova esses dados antes de fazer upload.', 'midia_social');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(108, 'Implementar camuflagem de imagens', 'Avançado', 'Ferramentas como o Fawkes podem ser usadas para alterar sutilmente a estrutura dos rostos nas fotos de uma forma que seja imperceptível aos humanos, mas impedirá que os sistemas de reconhecimento facial sejam capazes de reconhecer um determinado rosto.', 'midia_social');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(109, 'Considere falsificar GPS nas proximidades de casa', 'Avançado', 'Mesmo que você nunca use as redes sociais, sempre haverá outras pessoas que não serão tão cuidadosas e poderão revelar sua localização.', 'midia_social');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(110, 'Considere utilizar informações falsas', 'Avançado', 'Se você quiser apenas ler e não pretende postar muito, considere usar um nome alternativo e detalhes de contato falsos.', 'midia_social');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(111, 'Não tenha qualquer rede social', 'Avançado', 'A mídia social é fundamentalmente não privada, portanto, para máxima segurança e privacidade online, evite usar qualquer rede social convencional.', 'midia_social');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(112, 'Use VPN', 'Essencial', 'Use uma VPN paga e confiável. Isso pode ajudar a proteger os sites que você visita de registrar seu IP real, reduzir a quantidade de dados que seu ISP pode coletar e aumentar a proteção em WiFi público.', 'redes');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(113, 'Mude a senha do seu roteador', 'Essencial', 'Depois de adquirir um novo roteador, altere a senha. As senhas padrão do roteador estão disponíveis publicamente, o que significa que qualquer pessoa nas proximidades poderá se conectar.', 'redes');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(114, 'Use WPA2 e uma senha forte', 'Essencial', 'Existem diferentes protocolos de autenticação para conexão WiFi. Atualmente, as opções mais seguras são WPA2 e WPA3 (em roteadores mais recentes).', 'redes');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(115, 'Mnatenha o firmware do roteador atualizado', 'Essencial', 'Os fabricantes lançam atualizações de firmware que corrigem vulnerabilidades de segurança, implementam novos padrões e, às vezes, adicionam recursos ou melhoram o desempenho do seu roteador.', 'redes');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(116, 'Implemente uma VPN em toda a rede', 'Opcional', 'Se você configurar sua VPN em seu roteador, firewall ou servidor doméstico, o tráfego de todos os dispositivos será criptografado e roteado através dele, sem a necessidade de aplicativos VPN individuais.', 'redes');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(117, 'Proteja-se contra vazamentos de DNS', 'Opcional', 'Ao usar uma VPN, é extremamente importante usar exclusivamente o servidor DNS do seu provedor VPN ou serviço seguro.', 'redes');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(118, 'Use um protocolo de VPN seguro', 'Opcional', 'OpenVPN e WireGuard são protocolos de tunelamento de código aberto, leves e seguros. Evite usar PPTP ou SSTP.', 'redes');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(119, 'DNS seguro', 'Opcional', 'Use DNS sobre HTTPS, que realiza a resolução de DNS por meio do protocolo HTTPS, criptografando dados entre você e seu resolvedor de DNS.', 'redes');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(120, 'Evite o roteador gratuito do seu provedor de internet', 'Opcional', 'Normalmente, eles são fabricados a granel e baratos na China, com firmware de propriedade insegura que não recebe atualizações de segurança regulares.', 'redes');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(121, 'Lista de permissões de endereços MAC', 'Opcional', 'Você pode colocar endereços MAC na lista de permissões nas configurações do roteador, impedindo que dispositivos desconhecidos se conectem imediatamente à sua rede, mesmo que conheçam suas credenciais.', 'redes');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(122, 'Altere o endereço IP local do roteador', 'Opcional', 'É possível que um script malicioso em seu navegador explore uma vulnerabilidade de script entre sites, acessando roteadores vulneráveis ​​conhecidos em seus endereços IP locais e adulterando-os.', 'redes');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(123, 'Não revele dados pessoais em nomes de rede wifi', 'Opcional', 'Você deve atualizar o nome da sua rede, escolhendo um SSID que não o identifique, inclua seu número/endereço fixo e não especifique a marca/modelo do dispositivo.', 'redes');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(124, 'Listagens de roteadores para desativação', 'Opcional', 'Os SSIDs WiFi são verificados, registrados e publicados em vários sites, o que é uma séria preocupação de privacidade para alguns.', 'redes');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(125, 'Esconda o nome da rede wifi', 'Opcional', 'O Service Set Identifier do seu roteador é simplesmente o nome da rede. Se não estiver visível, poderá receber menos abusos.', 'redes');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(126, 'Disabilite o WPS', 'Opcional', 'O Wi-Fi Protected Setup oferece um método mais fácil de conexão, sem inserir uma senha WiFi longa, mas o WPS apresenta uma série de problemas de segurança importantes.', 'redes');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(127, 'Desabilite o UPnP', 'Opcional', 'O Plug and Play universal permite que os aplicativos encaminhem automaticamente uma porta no seu roteador, mas tem um longo histórico de sérios problemas de segurança.', 'redes');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(128, 'Disponibilize uma rede de convidados para os convidados', 'Opcional', 'Não conceda acesso à sua rede WiFi principal aos visitantes, pois isso permite que eles interajam com outros dispositivos na rede.', 'redes');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(129, 'Modifique o IP padrão do roteador', 'Opcional', 'Modificar o endereço IP padrão do painel de administração do roteador tornará mais difícil a ocorrência de scripts maliciosos direcionados a endereços IP locais.', 'redes');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(130, 'Desabilite processos e serviços não utilizados no seu roteador', 'Opcional', 'Serviços como Telnet e SSH, que fornecem acesso de linha de comando a dispositivos, nunca devem ser expostos à Internet e também devem ser desativados na rede local, a menos que sejam realmente necessários.', 'redes');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(131, 'Não deixe as portas abertas', 'Opcional', 'Feche todas as portas abertas em seu roteador que não sejam necessárias. As portas abertas fornecem uma entrada fácil para hackers.', 'redes');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(132, 'Desabilite protocolos de acesso remoto', 'Opcional', 'Quando protocolos como PING, Telnet, SSH, UPnP e HNAP etc estão habilitados, eles permitem que seu roteador seja investigado de qualquer lugar do mundo.', 'redes');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(133, 'Desative o gerenciamento baseado em nuvem', 'Opcional', 'Você deve tratar o painel de administração do seu roteador com o máximo cuidado, pois danos consideráveis ​​podem ser causados ​​se um invasor conseguir obter acesso.', 'redes');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(134, 'Gerencie o alcance de sua rede wifi', 'Opcional', 'É comum querer aumentar o alcance do seu roteador ao máximo, mas se você mora em um apartamento menor, sua superfície de ataque aumenta quando sua rede WiFi pode ser captada do outro lado da rua.', 'redes');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(135, 'Roteie o tráfego pela rede TOR', 'Avançado', 'As VPNs têm seus pontos fracos. Para aumentar a segurança, direcione todo o tráfego da Internet através da rede Tor.', 'redes');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(136, 'Desative o wifi e bluetoth nos dispositivos', 'Avançado', 'Conectar-se até mesmo a uma rede WiFi segura aumenta sua superfície de ataque. Desative o WiFi doméstico e conecte cada dispositivo via Ethernet.', 'redes');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(137, 'Criptografe seu dispositivo', 'Essencial', 'Para manter seus dados protegidos contra acesso físico, use criptografia de arquivos. Isso significa que se o seu dispositivo for perdido ou roubado, ninguém terá acesso aos seus dados.', 'dispositivos_moveis');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(138, 'Desligue funções que não estão sendo usadas', 'Essencial', 'Quando você não estiver usando WiFi, Bluetooth, NFC etc., desative esses recursos. Existem várias ameaças comuns que utilizam esses recursos.', 'dispositivos_moveis');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(139, 'Mentenha a contagem de aplicativos no mínimo', 'Essencial', 'Desinstale aplicativos que você não precisa ou que não usa regularmente. Como os aplicativos geralmente são executados em segundo plano, deixando seu dispositivo lento, mas também coletando dados.', 'dispositivos_moveis');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(140, 'Permissões de aplicativo', 'Essencial', 'Não conceda permissões a aplicativos que eles não precisam. Para Android, Bouncer é um aplicativo que permite conceder permissões temporárias/únicas.', 'dispositivos_moveis');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(141, 'Somente instale aplicativos de fontes oficiais', 'Essencial', 'Os aplicativos na Apple App Store e na Google Play Store são verificados e assinados criptograficamente, tornando-os menos propensos a serem maliciosos.', 'dispositivos_moveis');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(142, 'Cuidado com carregadores desconhecidos', 'Essencial', 'Juice Jacking ocorre quando hackers usam estações de carregamento públicas para instalar malware em seu smartphone ou tablet por meio de uma porta USB comprometida.', 'dispositivos_moveis');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(143, 'Configurar um PIN da operadora de celular', 'Essencial', 'O sequestro de SIM ocorre quando um hacker consegue transferir o número do seu celular para o sim. A maneira mais fácil de se proteger contra isso é configurar um PIN por meio de sua operadora de celular.', 'dispositivos_moveis');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(144, 'Desativar listagens de identificador de chamadas', 'Opcional', 'Para manter seus dados privados, você pode cancelar a listagem do seu número em aplicativos de identificação de chamadas, como TrueCaller, CallApp, SyncMe e Hiya.', 'dispositivos_moveis');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(145, 'Use mapas offline', 'Opcional', 'Considere usar um aplicativo de mapas offline, como OsmAnd ou Organic Maps, para reduzir vazamentos de dados de aplicativos de mapas.', 'dispositivos_moveis');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(146, 'Desativar anúncios personalizados', 'Opcional', 'Você pode reduzir um pouco a quantidade de dados coletados desativando a visualização de anúncios personalizados.', 'dispositivos_moveis');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(147, 'Apagar após muitas tentativas de login', 'Opcional', 'Para se proteger contra um invasor forçando seu PIN, configure seu dispositivo para apagar após muitas tentativas de login malsucedidas.', 'dispositivos_moveis');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(148, 'Monitorar rastreadores', 'Opcional', 'εxodus é um ótimo serviço que permite pesquisar qualquer aplicativo e ver quais rastreadores estão incorporados nele.', 'dispositivos_moveis');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(149, 'Antivirus para celular', 'Opcional', 'Tão essencial quanto um antivírus para computador, é recomendado ter um antivírus para celular sempre atualizado.', 'dispositivos_moveis');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(150, 'Reduza as atividades em segundo plano', 'Opcional', 'Para Android, o SuperFreeze torna possível congelar totalmente todas as atividades em segundo plano por aplicativo.', 'dispositivos_moveis');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(151, 'Aplicativos móveis sandbox', 'Opcional', 'Evite que aplicativos que exigem muita permissão acessem seus dados privados com o Island, um ambiente sandbox.', 'dispositivos_moveis');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(152, 'Evite teclados personalizados', 'Opcional', 'Recomenda-se usar o teclado padrão do seu dispositivo. Se você optar por usar um aplicativo de teclado de terceiros, certifique-se de que ele seja confiável.', 'dispositivos_moveis');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(153, 'Reinicie o dispositivo regularmente', 'Opcional', 'Reiniciar o telefone pelo menos uma vez por semana limpará o estado do aplicativo armazenado em cache na memória e poderá funcionar com mais facilidade após a reinicialização.', 'dispositivos_moveis');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(154, 'Evite SMS', 'Opcional', 'O SMS não deve ser usado para receber códigos 2FA ou para comunicação; em vez disso, use um aplicativo de mensagens criptografadas, como o Signal.', 'dispositivos_moveis');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(155, 'Mantenha seu número privado', 'Opcional', 'MySudo permite criar e usar números de telefone virtuais para diferentes pessoas ou grupos. Isso é ótimo para compartimentação.', 'dispositivos_moveis');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(156, 'Cuidado com Stalkerware', 'Opcional', 'Stalkerware é um malware instalado diretamente no seu dispositivo por alguém que você conhece. A melhor maneira de se livrar dele é redefinindo os padrões de fábrica.', 'dispositivos_moveis');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(157, 'Dê preferência ao navegador em vez do aplicativo dedicado', 'Opcional', 'Sempre que possível, considere usar um navegador seguro para acessar sites, em vez de instalar aplicativos dedicados.', 'dispositivos_moveis');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(158, 'Tráfego TOR', 'Avançado', 'O Orbot fornece uma conexão Tor para todo o sistema, que ajudará a protegê-lo contra vigilância e ameaças de WiFi público.', 'dispositivos_moveis');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(159, 'Considere usar uma ROM customizada', 'Avançado', 'Se você está preocupado com o fato de o fabricante do seu dispositivo coletar muitas informações pessoais, considere uma ROM personalizada com foco na privacidade.', 'dispositivos_moveis');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(160, 'Mantenha seu sistema atualizado', 'Essencial', 'As atualizações do sistema contêm correções/patches para problemas de segurança, melhoram o desempenho e, às vezes, adicionam novos recursos. Instale novas atualizações quando solicitado.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(161, 'Criptografe seu dispositivo', 'Essencial', 'Use BitLocker para Windows, FileVault no MacOS ou LUKS no Linux para habilitar a criptografia completa do disco. Isso evita o acesso não autorizado caso seu computador seja perdido ou roubado.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(162, 'Faça backup de dados importantes', 'Essencial', 'Manter backups criptografados evita perdas devido a ransomware, roubo ou danos. Considere usar o Cryptomator para arquivos em nuvem ou o VeraCrypt para unidades USB.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(163, 'Tenha cuidado ao conectar dispositivos USB ao seu computador', 'Essencial', 'Os dispositivos USB podem representar ameaças graves. Considere fazer um desinfetante USB com CIRCLean para verificar dispositivos USB com segurança.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(164, 'Ative o bloqueio de tela quando estiver inativo', 'Essencial', 'Bloqueie seu computador quando estiver ausente e configure-o para exigir uma senha ao retomar do protetor de tela ou suspensão para evitar acesso não autorizado.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(165, 'Desabilite Cortana ou Siri', 'Essencial', 'Assistentes controlados por voz podem ter implicações na privacidade devido aos dados enviados de volta para processamento. Desative ou limite suas capacidades de escuta.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(166, 'Revise seus aplicativos instalados', 'Essencial', 'Reduza ao mínimo os aplicativos instalados para reduzir a exposição a vulnerabilidades e limpe regularmente os caches dos aplicativos.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(167, 'Gerenciar permissões', 'Essencial', 'Controle quais aplicativos têm acesso à sua localização, câmera, microfone, contatos e outras informações confidenciais.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(168, 'Impedir que dados de uso sejam enviados para a nuvem', 'Essencial', 'Limite a quantidade de informações de uso ou feedback enviado à nuvem para proteger sua privacidade.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(169, 'Evite o desbloqueio rápido', 'Essencial', 'Use uma senha forte em vez de biometria ou PINs curtos para desbloquear seu computador e aumentar a segurança.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(170, 'Desligue o computador, em vez do modo de espera', 'Essencial', 'Desligue seu dispositivo quando não estiver em uso, especialmente se o disco estiver criptografado, para manter os dados seguros.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(171, 'Não vincule seu PC à sua conta Microsoft ou Apple', 'Opcional', 'Use uma conta local apenas para evitar sincronização e exposição de dados. Evite usar serviços de sincronização que comprometam a privacidade.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(172, 'Verifique quais serviços de compartilhamento estão ativados', 'Opcional', 'Desative os recursos de compartilhamento de rede que você não está usando para fechar gateways para ameaças comuns.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(173, 'Não use conta root/admin para tarefas não administrativas', 'Opcional', 'Use uma conta de usuário sem privilégios para tarefas diárias e eleve permissões apenas para alterações administrativas para mitigar vulnerabilidades.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(174, 'Cubra sua webcam e micrifone', 'Opcional', 'Cubra sua webcam quando não estiver em uso e considere bloquear a gravação de áudio não autorizada para proteger a privacidade.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(175, 'Use um filtro de privacidade', 'Opcional', 'Use um filtro de privacidade de tela em espaços públicos para evitar a navegação e proteger informações confidenciais.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(176, 'Dispositivo fisicamente seguro', 'Opcional', 'Use uma trava Kensington para proteger seu laptop em espaços públicos e considere travas de porta para evitar acesso físico não autorizado.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(177, 'Não carregue dispositivos do seu PC', 'Opcional', 'Use um banco de energia ou carregador CA de parede em vez do PC para evitar riscos de segurança associados às conexões USB.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(178, 'Randomize seu endereço de hardware em Wi-Fi', 'Opcional', 'Modifique ou randomize seu endereço MAC para proteger contra rastreamento em diferentes redes WiFi.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(179, 'Use um firewall', 'Opcional', 'Instale um aplicativo de firewall para monitorar e bloquear o acesso indesejado à Internet por determinados aplicativos, protegendo contra ataques de acesso remoto e violações de privacidade.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(180, 'Proteja-se contra keyloggers de software', 'Opcional', 'Use ferramentas de criptografia de teclas para se proteger contra keyloggers de software que gravam suas teclas digitadas.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(182, 'Verifique a conexão do teclado', 'Opcional', 'Esteja atento aos keyloggers de hardware ao usar computadores públicos ou desconhecidos, verificando as conexões do teclado.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(183, 'Evite ataques de injeção de teclas', 'Opcional', 'Bloqueie seu PC quando estiver ausente e considere usar o USBGuard ou ferramentas semelhantes para se proteger contra ataques de injeção de teclas.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(184, 'Não use antivírus comercial "gratuito"', 'Avançado', 'Confie em ferramentas de segurança integradas e evite aplicativos antivírus gratuitos devido ao seu potencial de invasão de privacidade e coleta de dados.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(185, 'Verifique periodicamente se há rootkits', 'Avançado', 'Verifique regularmente a existência de rootkits para detectar e mitigar ameaças de controle total do sistema usando ferramentas como o chkrootkit.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(186, 'Senha de inicialização do BIOS', 'Avançado', 'Habilite uma senha BIOS ou UEFI para adicionar uma camada de segurança adicional durante a inicialização, mas esteja ciente de suas limitações.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(187, 'Use um sistema operacional focado na segurança', 'Avançado', 'Considere mudar para Linux ou uma distribuição focada em segurança, como QubeOS ou Tails, para maior privacidade e segurança.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(188, 'Faça uso de VMs', 'Avançado', 'Use máquinas virtuais para atividades arriscadas ou teste software suspeito para isolar ameaças potenciais do seu sistema primário.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(189, 'Compartimentarize', 'Avançado', 'Isole diferentes programas e fontes de dados, tanto quanto possível, para limitar a extensão de possíveis violações.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(190, 'Desativar recursos indesejados (Windows)', 'Avançado', 'Desative "recursos" e serviços desnecessários do Windows executados em segundo plano para reduzir a coleta de dados e o uso de recursos.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(191, 'Boot seguro', 'Avançado', 'Certifique-se de que a inicialização segura esteja ativada para evitar que malware substitua seu carregador de inicialização e outros softwares críticos.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(192, 'Acesso SSH seguro', 'Avançado', 'Tome medidas para proteger o acesso SSH contra ataques, alterando a porta padrão, usando chaves SSH e configurando firewalls.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(193, 'Fechar portas abertas não utilizadas', 'Avançado', 'Desative a escuta de serviços em portas externas que não são necessárias para proteger contra explorações remotas e melhorar a segurança.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(194, 'Implementar controle de acesso obrigatório', 'Avançado', 'Restrinja o acesso privilegiado para limitar os danos que podem ser causados ​​se um sistema for comprometido.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(195, 'Use tokens canários', 'Avançado', 'Implante tokens canário para detectar acesso não autorizado aos seus arquivos ou e-mails com mais rapidez e coletar informações sobre o invasor.', 'computador');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(196, 'Renomeie os dispositivos para não especificar marca/modelo', 'Essencial', 'Altere os nomes dos dispositivos padrão para algo genérico para evitar ataques direcionados, ocultando informações de marca ou modelo.', 'casa_inteligente');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(197, 'Desative o microfone e a câmera quando não estiverem em uso', 'Essencial', 'Use interruptores de hardware para desligar microfones e câmeras em dispositivos inteligentes para proteção contra gravações acidentais ou acesso direcionado.', 'casa_inteligente');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(198, 'Entenda quais dados são coletados, armazenados e transmitidos', 'Essencial', 'Pesquise e garanta conforto com as práticas de tratamento de dados dos dispositivos domésticos inteligentes antes da compra, evitando dispositivos que compartilhem dados com terceiros.', 'casa_inteligente');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(199, 'Defina configurações de privacidade e opte por não compartilhar dados com terceiros', 'Essencial', 'Ajuste as configurações do aplicativo para obter controles de privacidade mais rígidos e desative o compartilhamento de dados com terceiros sempre que possível.', 'casa_inteligente');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(200, 'Não vincule seus dispositivos domésticos inteligentes à sua identidade real', 'Essencial', 'Use nomes de usuário e senhas anônimos, evitando cadastro/login através de mídias sociais ou outros serviços de terceiros para manter a privacidade.', 'casa_inteligente');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(201, 'Mantenha o firmware atualizado', 'Essencial', 'Atualize regularmente o firmware do dispositivo inteligente para aplicar patches e melhorias de segurança.', 'casa_inteligente');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(202, 'Proteja sua rede', 'Essencial', 'Proteja o WiFi e a rede doméstica para evitar acesso não autorizado a dispositivos inteligentes.', 'casa_inteligente');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(203, 'Tenha cuidado com wearables', 'Opcional', 'Considere os extensos recursos de coleta de dados dos dispositivos vestíveis e suas implicações para a privacidade.', 'casa_inteligente');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(204, 'Não conecte a infraestrutura crítica da sua casa à Internet', 'Opcional', 'Avalie os riscos de termostatos, alarmes e detectores conectados à Internet devido ao potencial acesso remoto de hackers.', 'casa_inteligente');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(205, 'Mitigar os riscos do Alexa/Google Home', 'Opcional', 'Considere alternativas focadas na privacidade, como Mycroft, ou use o Project Alias ​​para evitar a escuta ociosa por assistentes ativados por voz.', 'casa_inteligente');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(206, 'Monitore sua rede doméstica de perto', 'Opcional', 'Use ferramentas como FingBox ou recursos de roteador para monitorar atividades incomuns de rede.', 'casa_inteligente');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(207, 'Negar acesso à Internet sempre que possível', 'Avançado', 'Utilize firewalls para bloquear o acesso à Internet de dispositivos que não necessitam dela, limitando a operação ao uso da rede local.', 'casa_inteligente');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(208, 'Avalie os riscos', 'Avançado', 'Considere as implicações de privacidade para todos os membros da família e ajuste as configurações do dispositivo para segurança e privacidade, como desativar dispositivos em determinados momentos.', 'casa_inteligente');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(209, 'Inscreva-se para receber alertas de fraude e monitoramento de crédito', 'Essencial', 'Habilite alertas de fraude e monitoramento de crédito por meio da Experian, TransUnion ou Equifax para ser alertado sobre atividades suspeitas.', 'financas_pessoais');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(210, 'Aplicar um congelamento de crédito', 'Essencial', 'Evite consultas de crédito não autorizadas congelando seu crédito por meio da Experian, TransUnion e Equifax.', 'financas_pessoais');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(211, 'Use cartões virtuais', 'Opcional', 'Utilize números de cartões virtuais ou temporários para transações on-line para proteger seus dados bancários reais.', 'financas_pessoais');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(212, 'Use dinheiro para transações locais', 'Opcional', 'Pague com dinheiro para compras locais e diárias para evitar perfis financeiros por parte das instituições.', 'financas_pessoais');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(213, 'Use criptomoeda para transações online', 'Avançado', 'Opte por criptomoedas com foco na privacidade, como Monero, para transações online, para manter o anonimato. Use criptomoedas com sabedoria para garantir a privacidade.', 'financas_pessoais');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(214, 'Armazene criptomoedas com segurança', 'Avançado', 'Armazene criptomoedas com segurança usando geração de carteira offline, carteiras de hardware como Trezor ou ColdCard, ou considere soluções de armazenamento de longo prazo como CryptoSteel.', 'financas_pessoais');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(215, 'Compre criptografia anonimamente', 'Avançado', 'Compre criptomoedas sem vincular à sua identidade por meio de serviços como LocalBitcoins, Bisq ou caixas eletrônicos Bitcoin.', 'financas_pessoais');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(216, 'Misture moedas', 'Avançado', 'Use um misturador de bitcoin ou CoinJoin antes de converter Bitcoin em moeda para ocultar trilhas de transação.', 'financas_pessoais');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(217, 'Use detalhes de um alias para compras online', 'Avançado', 'Para compras on-line, considere usar detalhes de alias, encaminhamento de endereços de e-mail, números VOIP e métodos de entrega seguros para proteger sua identidade.', 'financas_pessoais');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(218, 'Usar endereço de entrega alternativo', 'Avançado', 'Opte por entregas em endereços não pessoais, como caixas postais, endereços de encaminhamento ou locais de coleta locais para evitar vincular as compras diretamente a você.', 'financas_pessoais');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(219, 'Verifique os destinatários', 'Essencial', 'Os e-mails podem ser facilmente falsificados. Verifique a autenticidade do remetente, especialmente para ações confidenciais, e prefira inserir URLs manualmente em vez de clicar em links em e-mails.', 'aspecto_humano');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(220, 'Não confie em suas notificações pop-up', 'Essencial', 'Pop-ups falsos podem ser implantados por agentes mal-intencionados. Sempre verifique o URL antes de inserir qualquer informação em um pop-up.', 'aspecto_humano');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(221, 'Nunca deixe o dispositivo sem supervisão', 'Essencial', 'Dispositivos não supervisionados podem ser comprometidos mesmo com senhas fortes. Use recursos de criptografia e apagamento remoto, como Find My Phone, para dispositivos perdidos.', 'aspecto_humano');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(222, 'Prevenir Camfecting', 'Essencial', 'Proteja-se contra camfecting usando capas de webcam e bloqueadores de microfone. Silencie os assistentes domésticos quando não estiverem em uso ou discutindo assuntos delicados.', 'aspecto_humano');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(223, 'Fique protegido dos surfistas de ombro', 'Essencial', 'Use telas de privacidade em laptops e celulares para evitar que outras pessoas leiam sua tela em espaços públicos.', 'aspecto_humano');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(224, 'Eduque-se sobre ataques de phishing', 'Essencial', 'Tenha cuidado com tentativas de phishing. Verifique URLs, contexto das mensagens recebidas e utilize boas práticas de segurança, como usar 2FA e não reutilizar senhas.', 'aspecto_humano');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(225, 'Cuidado com os Stalkerwares', 'Essencial', 'Esteja atento aos stalkerwares instalados por conhecidos para espionagem. Fique atento a sinais como uso incomum da bateria e faça redefinições de fábrica, se houver suspeita.', 'aspecto_humano');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(226, 'Instale software confiável de fontes confiáveis', 'Essencial', 'Baixe software apenas de fontes legítimas e verifique os arquivos com ferramentas como o Virus Total antes da instalação.', 'aspecto_humano');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(227, 'Armazene dados pessoais com segurança', 'Essencial', 'Garanta que todos os dados pessoais nos dispositivos ou na nuvem sejam criptografados para proteção contra acesso não autorizado.', 'aspecto_humano');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(228, 'Detalhes pessoais obscuros de documentos', 'Essencial', 'Ao compartilhar documentos, oculte detalhes pessoais com retângulos opacos para evitar vazamento de informações.', 'aspecto_humano');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(229, 'Não presuma que um site é seguro só porque é `HTTPS`', 'Essencial', 'HTTPS não garante a legitimidade de um site. Verifique URLs e tenha cuidado com dados pessoais.', 'aspecto_humano');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(230, 'Use cartões virtuais ao pagar online', 'Opcional', 'Use cartões virtuais para pagamentos online para proteger seus dados bancários e limitar os riscos das transações.', 'aspecto_humano');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(231, 'Revise as permissões do aplicativo', 'Opcional', 'Revise e gerencie regularmente as permissões do aplicativo para garantir que não haja acesso desnecessário a recursos confidenciais do dispositivo.', 'aspecto_humano');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(232, 'Desativar listas públicas', 'Opcional', 'Retire-se de bancos de dados públicos e listas de marketing para reduzir contatos indesejados e riscos potenciais.', 'aspecto_humano');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(233, 'Nunca forneça dados adicionais ao cancelar', 'Opcional', 'Não forneça informações pessoais adicionais ao cancelar os serviços de dados para evitar futuras coletas de dados.', 'aspecto_humano');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(234, 'Desativar o compartilhamento de dados', 'Opcional', 'Muitos aplicativos e serviços têm como padrão configurações de compartilhamento de dados. Desative para proteger seus dados de serem compartilhados com terceiros.', 'aspecto_humano');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(235, 'Revise e atualize a privacidade das mídias sociais', 'Opcional', 'Verifique e atualize regularmente suas configurações de mídia social devido a atualizações frequentes de termos que podem afetar suas configurações de privacidade.', 'aspecto_humano');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(236, 'Compartimentar', 'Avançado', 'Mantenha diferentes áreas de atividade digital separadas para limitar a exposição de dados em caso de violação.', 'aspecto_humano');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(237, 'Quem é o protetor de privacidade', 'Avançado', 'Use o WhoIs Privacy Guard para registros de domínio para proteger suas informações pessoais de pesquisas públicas.', 'aspecto_humano');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(238, 'Use um endereço de encaminhamento', 'Avançado', 'Use uma caixa postal ou endereço de encaminhamento de correspondência para evitar que as empresas saibam seu endereço real, adicionando uma camada de proteção de privacidade.', 'aspecto_humano');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(239, 'Use métodos de pagamento anônimos', 'Avançado', 'Opte por métodos de pagamento anônimos, como criptomoedas, para evitar inserir informações identificáveis ​​online.', 'aspecto_humano');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(240, 'Destrua documentos confidenciais', 'Essencial', 'Destrua ou edite documentos confidenciais antes de descartá-los para proteger contra roubo de identidade e manter a confidencialidade.', 'seguranca_fisica');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(241, 'Desativação de registros públicos', 'Essencial', 'Entre em contato com pessoas que pesquisam sites para cancelar listagens que mostram informações pessoais, usando guias como o Manual de remoção de dados pessoais de Michael Bazzell.', 'seguranca_fisica');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(242, 'Documentos com marca d’água', 'Essencial', 'Adicione uma marca d''água com o nome e a data do destinatário às cópias digitais de documentos pessoais para rastrear a origem da violação.', 'seguranca_fisica');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(243, 'Não revele informações sobre chamadas recebidas', 'Essencial', 'Compartilhe apenas dados pessoais nas chamadas que você iniciar e verifique o número de telefone do destinatário.', 'seguranca_fisica');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(244, 'Fique alerta', 'Essencial', 'Esteja ciente do que está ao seu redor e avalie os riscos potenciais em novos ambientes.', 'seguranca_fisica');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(245, 'Perímetro Seguro', 'Essencial', 'Garanta a segurança física dos locais que armazenam dispositivos de informações pessoais, minimizando o acesso externo e utilizando sistemas de detecção de intrusão.', 'seguranca_fisica');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(246, 'Dispositivos Fisicamente Seguros', 'Essencial', 'Use medidas de segurança física como travas Kensington, capas de webcam e telas de privacidade para dispositivos.', 'seguranca_fisica');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(247, 'Mantenha os dispositivos fora da vista direta', 'Essencial', 'Evite que os dispositivos sejam visíveis do exterior para mitigar os riscos de lasers e roubo.', 'seguranca_fisica');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(248, 'Proteja seu PIN', 'Essencial', 'Proteja a entrada do seu PIN de curiosos e câmeras e limpe as telas sensíveis ao toque após o uso.', 'seguranca_fisica');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(249, 'Verifique se há skimmers', 'Essencial', 'Inspecione caixas eletrônicos e dispositivos públicos em busca de dispositivos de fraude e sinais de adulteração antes de usar.', 'seguranca_fisica');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(250, 'Proteja seu endereço residencial', 'Opcional', 'Use locais alternativos, endereços de encaminhamento e métodos de pagamento anônimos para proteger seu endereço residencial.', 'seguranca_fisica');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(251, 'Use um PIN, não biometria', 'Avançado', 'Prefira PINs em vez de biometria para segurança do dispositivo em situações em que possa ocorrer coerção legal para desbloquear dispositivos.', 'seguranca_fisica');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(252, 'Reduza a exposição a circuitos de câmeras', 'Avançado', 'Use disfarces e escolha rotas com menos câmeras para evitar vigilância.', 'seguranca_fisica');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(253, 'Roupas de reconhecimento antifacial', 'Avançado', 'Use roupas com padrões que enganem a tecnologia de reconhecimento facial.', 'seguranca_fisica');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(254, 'Reduza a exposição à visão noturna', 'Avançado', 'Use fontes de luz infravermelha ou óculos refletivos para obstruir as câmeras de visão noturna.', 'seguranca_fisica');
INSERT INTO `seguranca-digital`.itens_pagina
(id, descricao, nivel, detalhes, categoria)
VALUES(255, 'Proteja seu DNA', 'Avançado', 'Evite compartilhar DNA com sites históricos e tenha cuidado ao deixar vestígios de DNA.', 'seguranca_fisica');

INSERT INTO `seguranca-digital`.info_pagina
(id, icone, titulo, detalhes, categoria)
VALUES(0, '<i class="fas fa-key"></i>', 'Autenticação', 'A maioria das violações de dados relatadas é causada pelo uso de senhas fracas, padrão ou roubadas. Use senhas longas, fortes e exclusivas, gerencie-as em um gerenciador de senhas seguro, habilite a autenticação de dois fatores, fique atento aos vazamentos e tome cuidado ao fazer login em suas contas.', 'autenticacao');
INSERT INTO `seguranca-digital`.info_pagina
(id, icone, titulo, detalhes, categoria)
VALUES(1, '<i class="fas fa-globe"></i>', 'Navegação', 'A maioria dos sites na Internet usa alguma forma de rastreamento, muitas vezes para obter informações sobre o comportamento e as preferências de seus usuários. Esses dados podem ser incrivelmente detalhados e, portanto, são extremamente valiosos para empresas, governos e ladrões de propriedade intelectual. Violações e vazamentos de dados são comuns. , e desanonimizar a atividade dos usuários na web costuma ser uma tarefa trivial.', 'navegacao');
INSERT INTO `seguranca-digital`.info_pagina
(id, icone, titulo, detalhes, categoria)
VALUES(2, '<i class="fas fa-envelope"></i>', 'Email', 'Quase 50 anos desde que o primeiro e-mail foi enviado, ele ainda representa uma grande parte da nossa vida cotidiana e continuará a sê-lo no futuro próximo. Portanto, considerando quanta confiança depositamos neles, é surpreendente o quão fundamentalmente insegura esta infraestrutura é. A fraude relacionada a e-mail está aumentando e, sem tomar medidas básicas, você pode estar em risco.

Se um hacker obtiver acesso aos seus e-mails, ele fornecerá um gateway para que suas outras contas sejam comprometidas (por meio de redefinições de senha), portanto, a segurança do e-mail é fundamental para sua segurança digital.

As grandes empresas que fornecem serviço de e-mail “gratuito” não têm uma boa reputação em respeitar a privacidade dos usuários: o Gmail foi pego dando a terceiros acesso total aos e-mails dos usuários e também rastreando todas as suas compras. O Yahoo também foi pego escaneando e-mails em tempo real para agências de vigilância dos EUA. Os anunciantes tiveram acesso às mensagens dos usuários do Yahoo e da AOL para “identificar e segmentar clientes em potencial, captando sinais de compra contextuais e compras anteriores”.', 'email');
INSERT INTO `seguranca-digital`.info_pagina
(id, icone, titulo, detalhes, categoria)
VALUES(3, '<i class="fas fa-comments"></i>', 'Mensagens', NULL, 'mensagem');
INSERT INTO `seguranca-digital`.info_pagina
(id, icone, titulo, detalhes, categoria)
VALUES(4, '<i class="fas fa-share-alt"></i>', 'Rede Social', 'As comunidades online existem desde a invenção da Internet e oferecem às pessoas de todo o mundo a oportunidade de se conectarem, comunicarem e partilharem. Embora estas redes sejam uma óptima forma de promover a interacção social e aproximar as pessoas, isso tem um lado negro - existem algumas preocupações sérias de privacidade com os serviços de redes sociais, e estes sites de redes sociais são propriedade de empresas privadas, e é com elas que ganham dinheiro. coletando dados sobre indivíduos e vendendo esses dados, muitas vezes, a anunciantes terceiros. Proteja sua conta, bloqueie suas configurações de privacidade, mas saiba que mesmo depois de fazer isso, todos os dados carregados intencionalmente ou não são efetivamente públicos. Se possível, evite usar redes sociais convencionais.', 'midia_social');
INSERT INTO `seguranca-digital`.info_pagina
(id, icone, titulo, detalhes, categoria)
VALUES(5, '<i class="fas fa-network-wired"></i>', 'Redes', 'Esta seção aborda como você conecta seus dispositivos à Internet com segurança, incluindo configurar seu roteador e configurar uma VPN.', 'redes');
INSERT INTO `seguranca-digital`.info_pagina
(id, icone, titulo, detalhes, categoria)
VALUES(6, '<i class="fas fa-mobile-alt"></i>', 'Dispositivos Móveis', 'Os smartphones revolucionaram muitos aspectos da vida e trouxeram o mundo ao nosso alcance. Para muitos de nós, os smartphones são o principal meio de comunicação, entretenimento e acesso ao conhecimento. Mas embora eles tenham levado a conveniência a um nível totalmente novo, há algumas coisas horríveis acontecendo por trás da tela. O rastreamento geográfico é usado para rastrear todos os nossos movimentos e temos pouco controle sobre quem possui esses dados – seu telefone é capaz até de rastrear sua localização sem GPS. Ao longo dos anos, surgiram vários relatórios, descrevendo maneiras pelas quais o microfone do seu telefone pode escutar e a câmera pode observar você - tudo sem o seu conhecimento ou consentimento. E há também os aplicativos maliciosos, a falta de patches de segurança e backdoors potenciais/prováveis. Usar um smartphone gera muitos dados sobre você – desde informações que você compartilha intencionalmente até dados gerados silenciosamente a partir de suas ações. Pode ser assustador ver o que o Google, a Microsoft, a Apple e o Facebook sabem sobre nós – às vezes eles sabem mais do que a nossa família mais próxima. É difícil compreender o que os seus dados revelarão, especialmente em conjunto com outros dados. Esses dados são usados ​​para muito mais do que apenas publicidade - mais frequentemente, são usados ​​para avaliar pessoas em termos de finanças, seguros e emprego. Anúncios direcionados podem até ser usados ​​para vigilância refinada (consulte ADINT). Mais de nós estamos preocupados com a forma como os governos coletam e usam os dados de nossos smartphones e, com razão, as agências federais frequentemente solicitam nossos dados do Google, Facebook, Apple, Microsoft , Amazon e outras empresas de tecnologia. Às vezes, as solicitações são feitas em massa, retornando informações detalhadas sobre todos dentro de uma determinada cerca geográfica, muitas vezes para pessoas inocentes. E isto não inclui todo o tráfego da Internet ao qual as agências de inteligência de todo o mundo têm acesso irrestrito.', 'dispositivos_moveis');
INSERT INTO `seguranca-digital`.info_pagina
(id, icone, titulo, detalhes, categoria)
VALUES(7, '<i class="fas fa-mouse"></i>', 'Computador', 'Embora o Windows e o OS X sejam fáceis de usar e convenientes, ambos estão longe de ser seguros. Seu sistema operacional fornece a interface entre o hardware e seus aplicativos, portanto, se comprometido, poderá ter efeitos prejudiciais.', 'computador');
INSERT INTO `seguranca-digital`.info_pagina
(id, icone, titulo, detalhes, categoria)
VALUES(8, '<i class="fas fa-laptop-house"></i>', 'Casa Inteligente', 'Assistentes domésticos (como Google Home, Alexa e Siri) e outros dispositivos conectados à Internet coletam grandes quantidades de dados pessoais (incluindo amostras de voz, dados de localização, detalhes da casa e registros de todas as interações). Como você tem controle limitado sobre o que está sendo coletado, como é armazenado e para que será usado, fica difícil recomendar qualquer produto de consumo doméstico inteligente para qualquer pessoa que se preocupe com privacidade e segurança. Segurança versus privacidade: Existem muitos dispositivos inteligentes no mercado que afirmam aumentar a segurança da sua casa ao mesmo tempo que são fáceis e convenientes de usar (como alarmes inteligentes contra roubo, câmeras de segurança na Internet, fechaduras inteligentes e campainhas de acesso remoto, para citar alguns) . Estes dispositivos podem parecer facilitar a segurança, mas há uma compensação em termos de privacidade: pois recolhem grandes quantidades de dados pessoais e deixam-no sem controlo sobre a forma como estes são armazenados ou utilizados. A segurança destes dispositivos também é questionável, uma vez que muitos deles podem ser (e estão sendo) hackeados, permitindo que um intruso contorne a detecção com o mínimo esforço. A opção que mais respeita a privacidade seria não usar dispositivos “inteligentes” conectados à Internet em sua casa e não depender de um dispositivo de segurança que exija conexão com a Internet. Mas se o fizer, é importante compreender totalmente os riscos de qualquer produto antes de comprá-lo. Em seguida, ajuste as configurações para aumentar a privacidade e a segurança. A lista de verificação a seguir ajudará a mitigar os riscos associados aos dispositivos domésticos conectados à Internet.', 'casa_inteligente');
INSERT INTO `seguranca-digital`.info_pagina
(id, icone, titulo, detalhes, categoria)
VALUES(9, '<i class="fas fa-credit-card"></i>', 'Finanças Pessoais', 'A fraude com cartão de crédito é a forma mais comum de roubo de identidade (com 133.015 denúncias apenas nos EUA em 2017) e uma perda total de 905 milhões de dólares, o que representou um aumento de 26% em relação ao ano anterior. O valor médio perdido por pessoa foi de US$ 429 em 2017. É mais importante do que nunca tomar medidas básicas para se proteger de ser vítima. Observação sobre cartões de crédito: os cartões de crédito possuem métodos tecnológicos para detectar e impedir algumas transações fraudulentas. Os principais processadores de pagamentos implementam isso, extraindo enormes quantidades de dados dos titulares de seus cartões, a fim de saber muito sobre os hábitos de consumo de cada pessoa. Esses dados são usados ​​para identificar fraudes, mas também são vendidos a outros corretores de dados. Os cartões de crédito são, portanto, bons para a segurança, mas terríveis para a privacidade dos dados.', 'financas_pessoais');
INSERT INTO `seguranca-digital`.info_pagina
(id, icone, titulo, detalhes, categoria)
VALUES(10, '<i class="fas fa-user-alt"></i>', 'Aspecto Humano', 'Muitas violações de dados, hacks e ataques são causados ​​por erro humano. A lista a seguir contém etapas que você deve seguir para reduzir o risco de isso acontecer com você. Muitos deles são de bom senso, mas vale a pena anotá-los.', 'aspecto_humano');
INSERT INTO `seguranca-digital`.info_pagina
(id, icone, titulo, detalhes, categoria)
VALUES(11, '<i class="fas fa-building"></i>', 'Segurança Física', 'Os registros públicos geralmente incluem dados pessoais confidenciais (nome completo, data de nascimento, número de telefone, e-mail, endereço, etnia, etc.) e são coletados de diversas fontes (registros de censo, certidões de nascimento/óbito/casamento, eleitores, informações de marketing , bancos de dados de clientes, registros de veículos motorizados, licenças profissionais/comerciais e todos os arquivos judiciais detalhadamente). Estas informações pessoais sensíveis são de acesso fácil e legal, o que levanta algumas sérias preocupações de privacidade (roubo de identidade, riscos/perseguidores de segurança pessoal, destruição de reputações, sociedade de dossiês)

CCTV é uma das principais formas pelas quais as empresas, os indivíduos e o governo rastreiam seus movimentos. Em Londres, Reino Unido, uma pessoa média é capturada pela câmera cerca de 500 vezes por dia. Esta rede continua a crescer e, em muitas cidades do mundo, o reconhecimento facial está a ser implementado, o que significa que o estado pode saber a identidade dos residentes nas imagens em tempo real. Autenticação forte, dispositivos criptografados, software corrigido e navegação anônima na web podem ser de pouca utilidade se alguém conseguir comprometer fisicamente você, seus dispositivos e seus dados. Esta seção descreve alguns métodos básicos para segurança física', 'seguranca_fisica');


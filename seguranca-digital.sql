-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: seguranca-digital
-- ------------------------------------------------------
-- Server version	11.4.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `info_pagina`
--

DROP TABLE IF EXISTS `info_pagina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `info_pagina` (
  `id` int(2) NOT NULL,
  `icone` varchar(50) DEFAULT NULL,
  `titulo` varchar(30) DEFAULT NULL,
  `detalhes` text DEFAULT NULL,
  `categoria` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_pagina`
--

/*!40000 ALTER TABLE `info_pagina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itens_pagina`
--

DROP TABLE IF EXISTS `itens_pagina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itens_pagina` (
  `id` int(2) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `nivel` varchar(20) DEFAULT NULL,
  `detalhes` text DEFAULT NULL,
  `categoria` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itens_pagina`
--

azes de gerar códigos 2FA. É melhor não usar seu gerenciador de senhas principal como autenticador 2FA, pois isso se tornaria um ponto único de falha se comprometido.','autenticacao'),(17,'Evite o desbloqueio facial','Avançado','A maioria dos telefones e laptops oferece um recurso de autenticação de reconhecimento facial, usando a câmera para comparar uma foto do seu rosto com um hash armazenado. Pode ser muito conveniente, mas existem inúmeras maneiras de enganá-lo e obter acesso ao dispositivo, por meio de fotos digitais. e reconstruções de imagens de CFTV Ao contrário da sua senha, provavelmente há fotos do seu rosto na internet e vídeos gravados por câmeras de vigilância.','autenticacao'),(18,'Cuidado com os Keyloggers','Avançado','Um keylogger de hardware é um dispositivo físico plantado entre o teclado e a porta USB, que intercepta todas as teclas digitadas e, às vezes, retransmite dados para um servidor remoto. Ele fornece ao hacker acesso a tudo o que é digitado, incluindo senhas. apenas verificando sua conexão USB depois que seu PC estiver sem supervisão. Também é possível que keyloggers sejam plantados dentro da caixa do teclado, portanto, procure por quaisquer sinais de que o gabinete foi adulterado. Os dados digitados em um teclado virtual, colado da área de transferência ou preenchido automaticamente por um gerenciador de senhas não pode ser interceptado por um keylogger de hardware.','autenticacao'),(19,'Considere um token de hardware','Avançado','Uma chave de segurança U2F/FIDO2 é um dispositivo USB (ou NFC) que você insere ao fazer login em um serviço online, para verificar sua identidade, em vez de inserir um OTP do seu autenticador. SoloKey e NitroKey são exemplos de tais chaves. com eles vários benefícios de segurança, já que o navegador se comunica diretamente com o dispositivo e não pode ser enganado sobre qual host está solicitando autenticação, pois o certificado TLS é verificado.','autenticacao'),(20,'Considere o gerenciador de senhas offline','Avançado','Para maior segurança, um gerenciador de senhas off-line criptografado lhe dará controle total sobre seus dados. KeePass é uma escolha popular, com muitos plug-ins e bifurcações de comunidade com compatibilidade e funcionalidades adicionais. Clientes populares incluem: KeePassXC (desktop), KeePassDX (Android). e StrongBox (iOS). A desvantagem é que pode ser um pouco menos conveniente para alguns e cabe a você fazer backup e armazená-lo com segurança.','autenticacao'),(21,'Considere nomes de usuário exclusivos','Avançado','Ter senhas diferentes para cada conta é um bom primeiro passo, mas se você também usar um nome de usuário, e-mail ou número de telefone exclusivo para fazer login, será significativamente mais difícil para quem tenta obter acesso não autorizado. O método mais fácil para vários e-mails é usar apelidos gerados automaticamente para encaminhamento de e-mail anônimo. É aqui que [qualquer coisa]@seudominio.com chegará à sua caixa de entrada, permitindo que você use um e-mail diferente para cada conta (consulte Provedores de alias de e-mail). Os nomes de usuário são mais fáceis, pois você pode usar seu gerenciador de senhas para gerá-los, armazená-los e preenchê-los automaticamente. Números de telefone virtuais podem ser gerados através do seu provedor VOIP','autenticacao'),(22,'	Bloquear anúncios','Essencial','Usar um bloqueador de anúncios pode ajudar a melhorar sua privacidade, bloqueando os rastreadores implementados pelos anúncios. O uBlock Origin é um complemento de navegador muito eficiente e de código aberto, desenvolvido por Raymond Hill. Essa capacidade de rastreá-lo, coletando informações pessoais sobre você e seus hábitos, podem então ser vendidas ou usadas para mostrar anúncios mais direcionados e alguns anúncios são totalmente maliciosos ou falsos. O bloqueio de anúncios também faz com que as páginas carreguem mais rápido, usam menos dados e proporciona uma experiência menos confusa.','navegacao'),(23,'Use um navegador que respeite a privacidade','Essencial','Firefox (com alguns ajustes) e Brave são navegadores seguros e que respeitam a privacidade. Ambos são rápidos, de código aberto, fáceis de usar e estão disponíveis em todos os principais sistemas operacionais. evite Google Chrome, Edge e Safari como (sem configuração correta) todos os três, coletam dados de uso.','navegacao'),(24,'Use um mecanismo de pesquisa privado','Essencial','Usar um mecanismo de pesquisa que preserva a privacidade e não rastreia reduzirá o risco de que seus termos de pesquisa não sejam registrados ou usados ​​contra você. Considere DuckDuckGo ou Qwant. O Google implementa algumas políticas de rastreamento incrivelmente invasivas e tem um histórico de exibição de resultados de pesquisa tendenciosos. Portanto, o Google, juntamente com o Bing, o Baidu, o Yahoo e o Yandex, são incompatíveis com qualquer pessoa que pretenda proteger a sua privacidade. Recomenda-se atualizar a pesquisa padrão do seu navegador para um mecanismo de pesquisa que respeite a privacidade.','navegacao'),(25,'Remova complementos desnecessários do navegador','Essencial','As extensões são capazes de ver, registrar ou modificar qualquer coisa que você faça no navegador e alguns aplicativos de navegador de aparência inocente têm interesse malicioso. Os sites ver quais extensões você instalou e podem usar isso para melhorar sua impressão podem digital, para identificar com mais precisão.e rastrear você. As lojas virtuais do Firefox e do Chrome permitem que você verifique quais permissões/direitos de acesso uma extensão necessária antes de colocá-la. Verifique os comentários.','navegacao'),(26,'Mantenha o navegador atualizado','Essencial','As vulnerabilidades do navegador são constantemente descobertas e corrigidas, por isso é importante mantê-lo atualizado para evitar uma exploração de dia zero. Alguns navegadores serão atualizados automaticamente para a versão estável mais recente., mas é sempre bom ficar de olho em qual versão seu navegador se encontra.','navegacao'),(27,'Verifique se há HTTPS','Essencial','Se você inserir informações em um site não HTTPS, esses dados serão transportados sem criptografia e, portanto, poderão ser lidos por qualquer pessoa que os intercepte. Não insira nenhum dado em um site não HTTPS, mas também não deixe que o cadeado verde lhe dê uma falsa sensação de segurança, só porque um site possui certificado SSL, não significa que seja legítimo ou confiável.','navegacao'),(28,'Use DNS sobre HTTPS','Essencial','O DNS tradicional faz solicitações em texto simples para que todos possam ver. Ele permite a espionagem e manipulação de dados DNS por meio de ataques man-in-the-middle. Enquanto o DNS sobre HTTPS realiza a resolução de DNS por meio do protocolo HTTPS, o que significa que os dados entre você e seu resolvedor de DNS são criptografados. Uma opção popular é o 1.1.1.1 do CloudFlare, ou compare provedores – é simples de habilitar no navegador. Observe que o DoH tem seus próprios problemas, principalmente impedindo a filtragem da web.','navegacao'),(29,'Multi seções','Essencial','A compartimentação é muito importante para manter separados os diferentes aspectos da sua navegação. Por exemplo, usar perfis diferentes para trabalho, navegação geral, mídias sociais, compras on-line, etc., reduzirá o número de associações que os corretores de dados podem vincular a você. Uma opção é utilizar o Firefox Containers que foi desenvolvido exatamente para esse fim. Alternativamente, você pode usar navegadores diferentes para tarefas diferentes (Brave, Firefox, Tor etc).','navegacao'),(30,'Usar aba anônima','Essencial','Ao usar a máquina de outra pessoa, certifique-se de estar em uma sessão privada/anônima. Isso impedirá que o histórico do navegador, os cookies e alguns dados sejam salvos, mas não é infalível – você ainda pode ser rastreado.','navegacao'),(31,'Entenda a impressão digital do seu navegador','Essencial','A impressão digital do navegador é um método de rastreamento incrivelmente preciso, onde um site identifica você com base nas informações do seu dispositivo. Você pode ver sua impressão digital em amiunique.org – O objetivo é ser o menos exclusivo possível.','navegacao'),(32,'Gerenciamento de cookies','Essencial','Limpar cookies regularmente é uma etapa que você pode realizar para ajudar a evitar que os sites rastreiem você. Os cookies também podem armazenar o seu token de sessão, que, se capturado, permitiria que alguém acessasse suas contas sem credenciais. Para atenuar isso, você deve limpar os cookies com frequência.','navegacao'),(33,'Bloqueio de cookies de terceiros','Essencial','Cookies de terceiros colocados no seu dispositivo por um site diferente daquele que você está visitando. Isto representa um risco de privacidade, pois uma terceira entidade pode coletar dados da sua sessão atual.','navegacao'),(34,'Bloqueio de gerenciador de terceiros','Essencial','O bloqueio de rastreadores ajudará a impedir que sites, anunciantes, análises e muito mais rastreiem você em segundo plano. Privacy Badger, DuckDuckGo Privacy Essentials, uBlock Origin e uMatrix (avançado) são bloqueadores de rastreadores de código aberto muito eficazes, disponíveis para todos os principais navegadores.','navegacao'),(35,'Cuidado com redirecionamentos','Opicional','Embora alguns redirecionamentos sejam inofensivos, outros, como os redirecionamentos não validados, são usados ​​em ataques de phishing, podendo fazer com que um link malicioso pareça legítimo. Se não tiver certeza sobre um URL de redirecionamento, você pode verificar para onde ele encaminha com uma ferramenta como o RedirectDetective.','navegacao'),(36,'Não faça login no seu navegador','Opicional','Muitos navegadores permitem que você faça login para sincronizar histórico, favoritos e outros dados de navegação entre dispositivos. No entanto, isto não só permite uma maior recolha de dados, mas também aumenta a superfície de ataque ao fornecer outra via para um agente malicioso obter informações pessoais.','navegacao'),(37,'Desabilite serviços de previsão','Optional	','Alguns navegadores permitem serviços de previsão, onde você recebe resultados de pesquisa em tempo real ou preenchimento automático de URL. Se estiver ativado, os dados serão enviados ao Google (ou ao seu mecanismo de pesquisa padrão) a cada pressionamento de tecla, e não quando você pressiona Enter.','navegacao'),(38,'Evite a extensão do google tradutor','Opicional','Ao visitar uma página da web escrita em um idioma estrangeiro, você pode ser solicitado a instalar a extensão do Google Tradutor. Esteja ciente de que o Google coleta todos os dados (incluindo campos de entrada), juntamente com detalhes do usuário atual. Em vez disso, use um serviço de tradução que não esteja vinculado ao seu navegador.','navegacao'),(39,'Desabilite as notificações do navegador','Opicional','As notificações push do navegador são um método comum para os criminosos encorajarem você a clicar no link deles, pois é fácil falsificar a fonte. Esteja ciente disso e para obter instruções sobre como desativar as notificações do navegador, consulte este artigo.','navegacao'),(40,'Desabilite os downloads automáticos','Opicional','Os downloads drive-by são um método comum de colocar arquivos prejudiciais no dispositivo do usuário. Isso pode ser atenuado desativando o download automático de arquivos e tomando cuidado com sites que solicitam o download inesperado de arquivos.','navegacao'),(41,'Desabilite o acesso aos sensores','Opicional','Sites móveis podem acessar os sensores do seu dispositivo sem perguntar. Se você conceder essas permissões ao seu navegador uma vez, todos os sites poderão usar esses recursos, sem permissão ou notificação.','navegacao'),(42,'Desabilite a localização','Opicional','Os Serviços de Localização permitem que os sites solicitem sua localização física para melhorar sua experiência. Isso deve ser desativado nas configurações. Observe que ainda existem outros métodos para determinar sua localização aproximada.','navegacao'),(43,'Desabilite o acesso da camera e microfone','Opicional','Verifique as configurações do navegador para garantir que nenhum site tenha acesso à webcam ou ao microfone. Também pode ser benéfico usar proteção física, como capa de webcam e bloqueador de microfone.','navegacao'),(44,'Desabilite o salvamento de senhas no navegador','Opicional','Não permita que seu navegador armazene nomes de usuário e senhas. Eles podem ser facilmente visualizados ou acessados. Em vez disso, use um gerenciador de senhas.','navegacao'),(46,'Desabilite o autocompletar no navegador','Opicional','Desative o preenchimento automático para quaisquer dados confidenciais ou pessoais. Este recurso pode ser prejudicial se o seu navegador estiver comprometido de alguma forma. Em vez disso, considere usar o recurso Notas do seu gerenciador de senhas.','navegacao'),(47,'Proteja-se do ataque  Exfil','Avançado','O ataque CSS Exfiltrate é um método onde credenciais e outros detalhes confidenciais podem ser obtidos apenas com CSS puro. Você pode ficar protegido com o plugin CSS Exfil Protection.','navegacao'),(48,'Desative o ActiveX','Avançado','ActiveX é uma API de extensão de navegador incorporada ao Microsoft IE e habilitada por padrão. Não é mais comumente usado, mas como dá direitos de acesso íntimo aos plug-ins e pode ser perigoso, você deve desativá-lo.','navegacao'),(49,'Desative o WebRTC','Avançado','O WebRTC permite comunicação de áudio/vídeo de alta qualidade e compartilhamento de arquivos ponto a ponto diretamente do navegador. No entanto, pode representar um vazamento de privacidade. Para saber mais, confira este guia.','navegacao'),(50,'Falsificação de assinatura de tela HTML5','Avançado','O Canvas Fingerprinting permite que os sites identifiquem e rastreiem os usuários com muita precisão. Você pode usar a extensão Canvas-Fingerprint-Blocker para falsificar sua impressão digital ou usar o Tor.','navegacao'),(51,'Agente de usuário falso','Avançado','O agente do usuário informa ao site qual dispositivo, navegador e versão você está usando. Trocar de agente de usuário periodicamente é um pequeno passo que você pode dar para se tornar menos exclusivo.','navegacao'),(52,'Desabilitar DnT','Avançado','A ativação do Do Not Track tem um impacto muito limitado, uma vez que muitos sites não respeitam ou não seguem isso. Como raramente é usado, também pode ser adicionado à sua assinatura, tornando-o mais exclusivo.','navegacao'),(53,'Previna-se do rastreamento HSTS','Avançado','O HSTS foi projetado para ajudar a proteger sites, mas surgiram preocupações com a privacidade, pois permitiu que os operadores de sites plantassem supercookies. Ele pode ser desativado visitando chrome://net-internals/#hsts em navegadores baseados em Chromium.','navegacao'),(54,'Desabilite conecções automaticas à servidores','Avançado','Mesmo quando você não estiver usando seu navegador, ele poderá se conectar com os servidores para relatar atividades de uso, análises e diagnósticos. Você pode desabilitar algumas dessas opções, o que pode ser feito nas configurações.','navegacao'),(55,'Ativar o isolamento primário','Avançado','O isolamento primário significa que todas as fontes de identificador e estado do navegador têm como escopo o domínio da barra de URL, o que pode reduzir bastante o rastreamento.','navegacao'),(56,'Retirar parâmetros de rastreamento de URLs','Avançado','Os sites geralmente acrescentam parâmetros GET adicionais aos URLs em que você clica, para identificar informações como origem/referenciador. Você pode limpar manualmente ou usar uma extensão como ClearURLs para remover dados de rastreamento de URLs automaticamente.','navegacao'),(57,'Segurança na primeira execução','Avançado','Depois de instalar um navegador da web, na primeira vez que você iniciá-lo (antes de definir suas configurações de privacidade), a maioria dos navegadores ligará para casa. Portanto, depois de instalar um navegador, você deve primeiro desabilitar sua conexão com a Internet e, em seguida, configurar as opções de privacidade antes de reativar sua conectividade com a Internet.','navegacao'),(58,'Use o navegador Tor','Avançado','O Projeto Tor fornece um navegador que criptografa e roteia seu tráfego através de vários nós, mantendo os usuários protegidos contra interceptação e rastreamento. As principais desvantagens são a velocidade e a experiência do usuário.','navegacao'),(59,'Desabilite o JavaScript','Avançado','Avançado	\r\nMuitos aplicativos da web modernos são baseados em JavaScript, portanto, desativá-los diminuirá bastante sua experiência de navegação. Mas se você realmente quiser dar tudo de si, isso realmente reduzirá sua superfície de ataque.','navegacao'),(60,'Tenha mais de um endereço de email','Essencial','Considere usar um endereço de e-mail diferente para comunicações críticas de segurança de e-mails triviais, como boletins informativos. Esta compartimentação poderia reduzir a quantidade de danos causados ​​por uma violação de dados e também facilitar a recuperação de uma conta comprometida.','email'),(61,'Mantenha o endereço de e-mail privado','Essencial','Não compartilhe seu e-mail principal publicamente, pois os endereços de e-mail costumam ser o ponto de partida para a maioria dos ataques de phishing.','email'),(62,'Mantenha sua conta segura','Essencial','Use uma senha longa e exclusiva, habilite 2FA e tenha cuidado ao fazer login. Sua conta de e-mail fornece um ponto de entrada fácil para um invasor para todas as suas outras contas online.','email'),(63,'Desative o carregamento automático de conteúdo remoto','Essencial','As mensagens de email podem conter conteúdo remoto, como imagens ou folhas de estilo, geralmente carregadas automaticamente do servidor. Você deve desabilitar esta opção, pois ela expõe seu endereço IP e informações do dispositivo e é frequentemente usada para rastreamento. Para obter mais informações, consulte este artigo.','email'),(65,'Use texto simples','Opcional','Existem dois tipos principais de e-mail na internet: texto simples e HTML. O primeiro é fortemente preferido para privacidade e segurança, pois as mensagens HTML geralmente incluem identificadores em links e imagens embutidas, que podem coletar dados pessoais e de uso. Existem também vários riscos de execução remota de código direcionado ao analisador HTML do seu cliente de e-mail, que não pode ser explorado se você estiver usando texto simples. Para obter mais informações, bem como instruções de configuração para seu provedor de e-mail, consulte UsePlaintext.email.','email'),(66,'Não conecte aplicativos de terceiros à sua conta de e-mail','Opcional','Se você conceder a um aplicativo ou plug-in de terceiros acesso total à sua caixa de entrada, eles terão acesso total e irrestrito a todos os seus e-mails e seu conteúdo, o que representa riscos significativos de segurança e privacidade.','email'),(67,'Não compartilhe dados confidenciais por e-mail','Opcional','Os e-mails são facilmente interceptados. Além disso, você não pode ter certeza de quão seguro é o ambiente do destinatário. Portanto, os e-mails não podem ser considerados seguros para troca de informações confidenciais, a menos que sejam criptografados.','email'),(68,'Considere mudar para um provedor de correio seguro','Opcional','Secure and reputable email providers such as Forward Email, ProtonMail, and Tutanota allow for end-to-end encryption, full privacy as well as more security-focused features. Unlike typical email providers, your mailbox cannot be read by anyone but you, since all messages are encrypted.','email'),(69,'Use uma chave inteligente','Avançado','OpenPGP não oferece suporte ao sigilo de encaminhamento, o que significa que se a sua chave privada ou a do destinatário for roubada, todas as mensagens anteriores criptografadas com ela serão expostas. Portanto, você deve tomar muito cuidado para manter suas chaves privadas seguras. Um método para fazer isso é usar uma chave inteligente USB para assinar ou descriptografar mensagens, permitindo que você faça isso sem que sua chave privada saia do dispositivo USB.','email'),(70,'Usar alias/encaminhamento anônimo','Avançado','O alias de e-mail permite que mensagens sejam enviadas para [qualquer coisa]@meu-domínio.com e ainda cheguem à sua caixa de entrada principal. Permitindo efetivamente que você use um endereço de e-mail diferente e exclusivo para cada serviço no qual você se inscrever. Isso significa que se você começar a receber spam, poderá bloquear esse alias e determinar qual empresa vazou seu endereço de e-mail.','email'),(71,'Subendereçamento','Avançado','Uma alternativa ao alias é o subendereçamento, onde qualquer coisa após o símbolo + é omitida durante a entrega da correspondência. Isso permite que você acompanhe quem compartilhou/vazou seu endereço de e-mail, mas, diferentemente do alias, não protegerá contra a revelação do seu endereço real.','email'),(72,'Use um domínio customizado','Avançado','Usar um domínio personalizado significa que você não depende do endereço atribuído pelo seu provedor de e-mail. Assim, você pode facilmente trocar de provedor no futuro e não precisa se preocupar com a descontinuação de um serviço.','email'),(73,'Sincronize com um cliente para fazer backup','Avançado','Para evitar a perda de acesso temporário ou permanente aos seus e-mails durante um evento não planejado (como uma interrupção ou bloqueio de conta), o Thunderbird pode sincronizar/fazer backup de mensagens de várias contas via IMAP e armazená-las localmente no seu dispositivo principal.','email'),(74,'Tenha cuidado com assinaturas de email','Avançado','Você não sabe o quão seguro é o ambiente de e-mail que o destinatário da sua mensagem pode ter. Existem várias extensões que rastreiam mensagens automaticamente e criam um banco de dados detalhado de informações de contato com base em assinaturas de e-mail.','email'),(75,'Cuidado com respostas automáticas','Avançado','As respostas automáticas fora do escritório são muito úteis para informar as pessoas de que haverá um atraso na resposta, mas muitas vezes as pessoas revelam demasiada informação – que pode ser usada em engenharia social e ataques direcionados.','email'),(76,'Escolha o protocolo de email certo','Avançado','Não utilize protocolos desatualizados (abaixo de IMAPv4 ou POPv3), ambos possuem vulnerabilidades conhecidas e segurança desatualizada.','email'),(77,'Sempre use portas TLS','Avançado','Existem opções SSL para POP3, IMAP e SMTP como portas TCP/IP padrão. Eles são fáceis de usar e têm amplo suporte, portanto devem sempre ser usados ​​em vez de portas de e-mail de texto simples.','email');
/*!40000 ALTER TABLE `itens_pagina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_autenticacao`
--

DROP TABLE IF EXISTS `status_autenticacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_autenticacao` (
  `id` int(2) NOT NULL,
  `senha_forte` int(2) DEFAULT NULL,
  `nao_reusar` int(2) DEFAULT NULL,
  `gerenciador_senha` int(2) DEFAULT NULL,
  `evitar_compartilhar` int(2) DEFAULT NULL,
  `2fa` int(2) DEFAULT NULL,
  `codigos_backup` int(2) DEFAULT NULL,
  `alertas_vazamento` int(2) DEFAULT NULL,
  `protejet_senha` int(2) DEFAULT NULL,
  `atualizar_senhas` int(2) DEFAULT NULL,
  `nao_salvar` int(2) DEFAULT NULL,
  `avitar_desconhecido` int(2) DEFAULT NULL,
  `evitar_dicas` int(2) DEFAULT NULL,
  `pergunta_seguranca` int(2) DEFAULT NULL,
  `pin_curto` int(2) DEFAULT NULL,
  `evitar_sms` int(2) DEFAULT NULL,
  `gerenciador_2fa` int(2) DEFAULT NULL,
  `desbloqueio_facial` int(2) DEFAULT NULL,
  `keyloggers` int(2) DEFAULT NULL,
  `token_hardware` int(2) DEFAULT NULL,
  `gerenciador_offline` int(2) DEFAULT NULL,
  `nomes_exclusivos` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_autenticacao`
--

/*!40000 ALTER TABLE `status_autenticacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_email`
--

DROP TABLE IF EXISTS `status_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_email` (
  `id` int(2) DEFAULT NULL,
  `varios_emails` int(2) DEFAULT NULL,
  `endereco_privado` int(2) DEFAULT NULL,
  `conta_segura` int(2) DEFAULT NULL,
  `carregamento_automatico` int(2) DEFAULT NULL,
  `texto_simples` int(2) DEFAULT NULL,
  `aplicativos_terceiros` int(2) DEFAULT NULL,
  `dados_confidenciais` int(2) DEFAULT NULL,
  `provedor_seguro` int(2) DEFAULT NULL,
  `chave_inteligente` int(2) DEFAULT NULL,
  `encaminhamento_anonimo` int(2) DEFAULT NULL,
  `subendereçamento` int(2) DEFAULT NULL,
  `dominio_personalizado` int(2) DEFAULT NULL,
  `cliente_backup` int(2) DEFAULT NULL,
  `assinatura` int(2) DEFAULT NULL,
  `respostas_automaticas` int(2) DEFAULT NULL,
  `protocolo_correto` int(2) DEFAULT NULL,
  `porta_tls` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_email`
--

/*!40000 ALTER TABLE `status_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_navegacao`
--

DROP TABLE IF EXISTS `status_navegacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_navegacao` (
  `id` int(2) DEFAULT NULL,
  `bloquear_anuncios` int(2) DEFAULT NULL,
  `navegador_privacidade` int(2) DEFAULT NULL,
  `pesquisa_privado` int(2) DEFAULT NULL,
  `complementos_desnecessarios` int(2) DEFAULT NULL,
  `navegador_atualizado` int(2) DEFAULT NULL,
  `https` int(2) DEFAULT NULL,
  `dns_https` int(2) DEFAULT NULL,
  `multi_secao` int(2) DEFAULT NULL,
  `modo_anonimo` int(2) DEFAULT NULL,
  `impressao_digital` int(2) DEFAULT NULL,
  `gerenciar_cookies` int(2) DEFAULT NULL,
  `cookies_terceiros` int(2) DEFAULT NULL,
  `rastreadores_terceiros` int(2) DEFAULT NULL,
  `redirecionamento` int(2) DEFAULT NULL,
  `login_navegador` int(2) DEFAULT NULL,
  `servicos_previsao` int(2) DEFAULT NULL,
  `google_tradutor` int(2) DEFAULT NULL,
  `desativar_notificacoes` int(2) DEFAULT NULL,
  `download_automático` int(2) DEFAULT NULL,
  `acesso_sensores` int(2) DEFAULT NULL,
  `localizacao` int(2) DEFAULT NULL,
  `camera_microfone` int(2) DEFAULT NULL,
  `senha_navegador` int(2) DEFAULT NULL,
  `preenchimento_automatico` int(2) DEFAULT NULL,
  `exfil` int(2) DEFAULT NULL,
  `activex` int(2) DEFAULT NULL,
  `webrtc` int(2) DEFAULT NULL,
  `falsificar_assinatura_html5` int(2) DEFAULT NULL,
  `agente_falso` int(2) DEFAULT NULL,
  `desconsiderar_dnt` int(2) DEFAULT NULL,
  `rastreamento_hsts` int(2) DEFAULT NULL,
  `conexoes_automaticas` int(2) DEFAULT NULL,
  `isolamento_primario` int(2) DEFAULT NULL,
  `rastreamento_url` int(2) DEFAULT NULL,
  `primeiro_lancamento` int(2) DEFAULT NULL,
  `navegador_tor` int(2) DEFAULT NULL,
  `desabilitar_javascript` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_navegacao`
--

LOCK TABLES `status_navegacao` WRITE;
/*!40000 ALTER TABLE `status_navegacao` DISABLE KEYS */;
INSERT INTO `status_navegacao` VALUES (1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-09 13:09:23

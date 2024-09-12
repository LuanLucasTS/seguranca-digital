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

. É mais importante do que nunca tomar medidas básicas para se proteger de ser vítima. Observação sobre cartões de crédito: os cartões de crédito possuem métodos tecnológicos para detectar e impedir algumas transações fraudulentas. Os principais processadores de pagamentos implementam isso, extraindo enormes quantidades de dados dos titulares de seus cartões, a fim de saber muito sobre os hábitos de consumo de cada pessoa. Esses dados são usados ​​para identificar fraudes, mas também são vendidos a outros corretores de dados. Os cartões de crédito são, portanto, bons para a segurança, mas terríveis para a privacidade dos dados.','financas_pessoais'),(10,'<i class=\"fas fa-user-alt\"></i>','Aspecto Humano','Muitas violações de dados, hacks e ataques são causados ​​por erro humano. A lista a seguir contém etapas que você deve seguir para reduzir o risco de isso acontecer com você. Muitos deles são de bom senso, mas vale a pena anotá-los.','aspecto_humano'),(11,'<i class=\"fas fa-building\"></i>','Segurança Física','Os registros públicos geralmente incluem dados pessoais confidenciais (nome completo, data de nascimento, número de telefone, e-mail, endereço, etnia, etc.) e são coletados de diversas fontes (registros de censo, certidões de nascimento/óbito/casamento, eleitores, informações de marketing , bancos de dados de clientes, registros de veículos motorizados, licenças profissionais/comerciais e todos os arquivos judiciais detalhadamente). Estas informações pessoais sensíveis são de acesso fácil e legal, o que levanta algumas sérias preocupações de privacidade (roubo de identidade, riscos/perseguidores de segurança pessoal, destruição de reputações, sociedade de dossiês)\r\n\r\nCCTV é uma das principais formas pelas quais as empresas, os indivíduos e o governo rastreiam seus movimentos. Em Londres, Reino Unido, uma pessoa média é capturada pela câmera cerca de 500 vezes por dia. Esta rede continua a crescer e, em muitas cidades do mundo, o reconhecimento facial está a ser implementado, o que significa que o estado pode saber a identidade dos residentes nas imagens em tempo real. Autenticação forte, dispositivos criptografados, software corrigido e navegação anônima na web podem ser de pouca utilidade se alguém conseguir comprometer fisicamente você, seus dispositivos e seus dados. Esta seção descreve alguns métodos básicos para segurança física','seguranca_fisica');
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

azes de gerar códigos 2FA. É melhor não usar seu gerenciador de senhas principal como autenticador 2FA, pois isso se tornaria um ponto único de falha se comprometido.','autenticacao'),(17,'Evite o desbloqueio facial','Avançado','A maioria dos telefones e laptops oferece um recurso de autenticação de reconhecimento facial, usando a câmera para comparar uma foto do seu rosto com um hash armazenado. Pode ser muito conveniente, mas existem inúmeras maneiras de enganá-lo e obter acesso ao dispositivo, por meio de fotos digitais. e reconstruções de imagens de CFTV Ao contrário da sua senha, provavelmente há fotos do seu rosto na internet e vídeos gravados por câmeras de vigilância.','autenticacao'),(18,'Cuidado com os Keyloggers','Avançado','Um keylogger de hardware é um dispositivo físico plantado entre o teclado e a porta USB, que intercepta todas as teclas digitadas e, às vezes, retransmite dados para um servidor remoto. Ele fornece ao hacker acesso a tudo o que é digitado, incluindo senhas. apenas verificando sua conexão USB depois que seu PC estiver sem supervisão. Também é possível que keyloggers sejam plantados dentro da caixa do teclado, portanto, procure por quaisquer sinais de que o gabinete foi adulterado. Os dados digitados em um teclado virtual, colado da área de transferência ou preenchido automaticamente por um gerenciador de senhas não pode ser interceptado por um keylogger de hardware.','autenticacao'),(19,'Considere um token de hardware','Avançado','Uma chave de segurança U2F/FIDO2 é um dispositivo USB (ou NFC) que você insere ao fazer login em um serviço online, para verificar sua identidade, em vez de inserir um OTP do seu autenticador. SoloKey e NitroKey são exemplos de tais chaves. com eles vários benefícios de segurança, já que o navegador se comunica diretamente com o dispositivo e não pode ser enganado sobre qual host está solicitando autenticação, pois o certificado TLS é verificado.','autenticacao'),(20,'Considere o gerenciador de senhas offline','Avançado','Para maior segurança, um gerenciador de senhas off-line criptografado lhe dará controle total sobre seus dados. KeePass é uma escolha popular, com muitos plug-ins e bifurcações de comunidade com compatibilidade e funcionalidades adicionais. Clientes populares incluem: KeePassXC (desktop), KeePassDX (Android). e StrongBox (iOS). A desvantagem é que pode ser um pouco menos conveniente para alguns e cabe a você fazer backup e armazená-lo com segurança.','autenticacao'),(21,'Considere nomes de usuário exclusivos','Avançado','Ter senhas diferentes para cada conta é um bom primeiro passo, mas se você também usar um nome de usuário, e-mail ou número de telefone exclusivo para fazer login, será significativamente mais difícil para quem tenta obter acesso não autorizado. O método mais fácil para vários e-mails é usar apelidos gerados automaticamente para encaminhamento de e-mail anônimo. É aqui que [qualquer coisa]@seudominio.com chegará à sua caixa de entrada, permitindo que você use um e-mail diferente para cada conta (consulte Provedores de alias de e-mail). Os nomes de usuário são mais fáceis, pois você pode usar seu gerenciador de senhas para gerá-los, armazená-los e preenchê-los automaticamente. Números de telefone virtuais podem ser gerados através do seu provedor VOIP','autenticacao'),(22,'	Bloquear anúncios','Essencial','Usar um bloqueador de anúncios pode ajudar a melhorar sua privacidade, bloqueando os rastreadores implementados pelos anúncios. O uBlock Origin é um complemento de navegador muito eficiente e de código aberto, desenvolvido por Raymond Hill. Essa capacidade de rastreá-lo, coletando informações pessoais sobre você e seus hábitos, podem então ser vendidas ou usadas para mostrar anúncios mais direcionados e alguns anúncios são totalmente maliciosos ou falsos. O bloqueio de anúncios também faz com que as páginas carreguem mais rápido, usam menos dados e proporciona uma experiência menos confusa.','navegacao'),(23,'Use um navegador que respeite a privacidade','Essencial','Firefox (com alguns ajustes) e Brave são navegadores seguros e que respeitam a privacidade. Ambos são rápidos, de código aberto, fáceis de usar e estão disponíveis em todos os principais sistemas operacionais. evite Google Chrome, Edge e Safari como (sem configuração correta) todos os três, coletam dados de uso.','navegacao'),(24,'Use um mecanismo de pesquisa privado','Essencial','Usar um mecanismo de pesquisa que preserva a privacidade e não rastreia reduzirá o risco de que seus termos de pesquisa não sejam registrados ou usados ​​contra você. Considere DuckDuckGo ou Qwant. O Google implementa algumas políticas de rastreamento incrivelmente invasivas e tem um histórico de exibição de resultados de pesquisa tendenciosos. Portanto, o Google, juntamente com o Bing, o Baidu, o Yahoo e o Yandex, são incompatíveis com qualquer pessoa que pretenda proteger a sua privacidade. Recomenda-se atualizar a pesquisa padrão do seu navegador para um mecanismo de pesquisa que respeite a privacidade.','navegacao'),(25,'Remova complementos desnecessários do navegador','Essencial','As extensões são capazes de ver, registrar ou modificar qualquer coisa que você faça no navegador e alguns aplicativos de navegador de aparência inocente têm interesse malicioso. Os sites ver quais extensões você instalou e podem usar isso para melhorar sua impressão podem digital, para identificar com mais precisão.e rastrear você. As lojas virtuais do Firefox e do Chrome permitem que você verifique quais permissões/direitos de acesso uma extensão necessária antes de colocá-la. Verifique os comentários.','navegacao'),(26,'Mantenha o navegador atualizado','Essencial','As vulnerabilidades do navegador são constantemente descobertas e corrigidas, por isso é importante mantê-lo atualizado para evitar uma exploração de dia zero. Alguns navegadores serão atualizados automaticamente para a versão estável mais recente., mas é sempre bom ficar de olho em qual versão seu navegador se encontra.','navegacao'),(27,'Verifique se há HTTPS','Essencial','Se você inserir informações em um site não HTTPS, esses dados serão transportados sem criptografia e, portanto, poderão ser lidos por qualquer pessoa que os intercepte. Não insira nenhum dado em um site não HTTPS, mas também não deixe que o cadeado verde lhe dê uma falsa sensação de segurança, só porque um site possui certificado SSL, não significa que seja legítimo ou confiável.','navegacao'),(28,'Use DNS sobre HTTPS','Essencial','O DNS tradicional faz solicitações em texto simples para que todos possam ver. Ele permite a espionagem e manipulação de dados DNS por meio de ataques man-in-the-middle. Enquanto o DNS sobre HTTPS realiza a resolução de DNS por meio do protocolo HTTPS, o que significa que os dados entre você e seu resolvedor de DNS são criptografados. Uma opção popular é o 1.1.1.1 do CloudFlare, ou compare provedores – é simples de habilitar no navegador. Observe que o DoH tem seus próprios problemas, principalmente impedindo a filtragem da web.','navegacao'),(29,'Multi seções','Essencial','A compartimentação é muito importante para manter separados os diferentes aspectos da sua navegação. Por exemplo, usar perfis diferentes para trabalho, navegação geral, mídias sociais, compras on-line, etc., reduzirá o número de associações que os corretores de dados podem vincular a você. Uma opção é utilizar o Firefox Containers que foi desenvolvido exatamente para esse fim. Alternativamente, você pode usar navegadores diferentes para tarefas diferentes (Brave, Firefox, Tor etc).','navegacao'),(30,'Usar aba anônima','Essencial','Ao usar a máquina de outra pessoa, certifique-se de estar em uma sessão privada/anônima. Isso impedirá que o histórico do navegador, os cookies e alguns dados sejam salvos, mas não é infalível – você ainda pode ser rastreado.','navegacao'),(31,'Entenda a impressão digital do seu navegador','Essencial','A impressão digital do navegador é um método de rastreamento incrivelmente preciso, onde um site identifica você com base nas informações do seu dispositivo. Você pode ver sua impressão digital em amiunique.org – O objetivo é ser o menos exclusivo possível.','navegacao'),(32,'Gerenciamento de cookies','Essencial','Limpar cookies regularmente é uma etapa que você pode realizar para ajudar a evitar que os sites rastreiem você. Os cookies também podem armazenar o seu token de sessão, que, se capturado, permitiria que alguém acessasse suas contas sem credenciais. Para atenuar isso, você deve limpar os cookies com frequência.','navegacao'),(33,'Bloqueio de cookies de terceiros','Essencial','Cookies de terceiros colocados no seu dispositivo por um site diferente daquele que você está visitando. Isto representa um risco de privacidade, pois uma terceira entidade pode coletar dados da sua sessão atual.','navegacao'),(34,'Bloqueio de gerenciador de terceiros','Essencial','O bloqueio de rastreadores ajudará a impedir que sites, anunciantes, análises e muito mais rastreiem você em segundo plano. Privacy Badger, DuckDuckGo Privacy Essentials, uBlock Origin e uMatrix (avançado) são bloqueadores de rastreadores de código aberto muito eficazes, disponíveis para todos os principais navegadores.','navegacao'),(35,'Cuidado com redirecionamentos','Opicional','Embora alguns redirecionamentos sejam inofensivos, outros, como os redirecionamentos não validados, são usados ​​em ataques de phishing, podendo fazer com que um link malicioso pareça legítimo. Se não tiver certeza sobre um URL de redirecionamento, você pode verificar para onde ele encaminha com uma ferramenta como o RedirectDetective.','navegacao'),(36,'Não faça login no seu navegador','Opicional','Muitos navegadores permitem que você faça login para sincronizar histórico, favoritos e outros dados de navegação entre dispositivos. No entanto, isto não só permite uma maior recolha de dados, mas também aumenta a superfície de ataque ao fornecer outra via para um agente malicioso obter informações pessoais.','navegacao'),(37,'Desabilite serviços de previsão','Optional	','Alguns navegadores permitem serviços de previsão, onde você recebe resultados de pesquisa em tempo real ou preenchimento automático de URL. Se estiver ativado, os dados serão enviados ao Google (ou ao seu mecanismo de pesquisa padrão) a cada pressionamento de tecla, e não quando você pressiona Enter.','navegacao'),(38,'Evite a extensão do google tradutor','Opicional','Ao visitar uma página da web escrita em um idioma estrangeiro, você pode ser solicitado a instalar a extensão do Google Tradutor. Esteja ciente de que o Google coleta todos os dados (incluindo campos de entrada), juntamente com detalhes do usuário atual. Em vez disso, use um serviço de tradução que não esteja vinculado ao seu navegador.','navegacao'),(39,'Desabilite as notificações do navegador','Opicional','As notificações push do navegador são um método comum para os criminosos encorajarem você a clicar no link deles, pois é fácil falsificar a fonte. Esteja ciente disso e para obter instruções sobre como desativar as notificações do navegador, consulte este artigo.','navegacao'),(40,'Desabilite os downloads automáticos','Opicional','Os downloads drive-by são um método comum de colocar arquivos prejudiciais no dispositivo do usuário. Isso pode ser atenuado desativando o download automático de arquivos e tomando cuidado com sites que solicitam o download inesperado de arquivos.','navegacao'),(41,'Desabilite o acesso aos sensores','Opicional','Sites móveis podem acessar os sensores do seu dispositivo sem perguntar. Se você conceder essas permissões ao seu navegador uma vez, todos os sites poderão usar esses recursos, sem permissão ou notificação.','navegacao'),(42,'Desabilite a localização','Opicional','Os Serviços de Localização permitem que os sites solicitem sua localização física para melhorar sua experiência. Isso deve ser desativado nas configurações. Observe que ainda existem outros métodos para determinar sua localização aproximada.','navegacao'),(43,'Desabilite o acesso da camera e microfone','Opicional','Verifique as configurações do navegador para garantir que nenhum site tenha acesso à webcam ou ao microfone. Também pode ser benéfico usar proteção física, como capa de webcam e bloqueador de microfone.','navegacao'),(44,'Desabilite o salvamento de senhas no navegador','Opicional','Não permita que seu navegador armazene nomes de usuário e senhas. Eles podem ser facilmente visualizados ou acessados. Em vez disso, use um gerenciador de senhas.','navegacao'),(46,'Desabilite o autocompletar no navegador','Opicional','Desative o preenchimento automático para quaisquer dados confidenciais ou pessoais. Este recurso pode ser prejudicial se o seu navegador estiver comprometido de alguma forma. Em vez disso, considere usar o recurso Notas do seu gerenciador de senhas.','navegacao'),(47,'Proteja-se do ataque  Exfil','Avançado','O ataque CSS Exfiltrate é um método onde credenciais e outros detalhes confidenciais podem ser obtidos apenas com CSS puro. Você pode ficar protegido com o plugin CSS Exfil Protection.','navegacao'),(48,'Desative o ActiveX','Avançado','ActiveX é uma API de extensão de navegador incorporada ao Microsoft IE e habilitada por padrão. Não é mais comumente usado, mas como dá direitos de acesso íntimo aos plug-ins e pode ser perigoso, você deve desativá-lo.','navegacao'),(49,'Desative o WebRTC','Avançado','O WebRTC permite comunicação de áudio/vídeo de alta qualidade e compartilhamento de arquivos ponto a ponto diretamente do navegador. No entanto, pode representar um vazamento de privacidade. Para saber mais, confira este guia.','navegacao'),(50,'Falsificação de assinatura de tela HTML5','Avançado','O Canvas Fingerprinting permite que os sites identifiquem e rastreiem os usuários com muita precisão. Você pode usar a extensão Canvas-Fingerprint-Blocker para falsificar sua impressão digital ou usar o Tor.','navegacao'),(51,'Agente de usuário falso','Avançado','O agente do usuário informa ao site qual dispositivo, navegador e versão você está usando. Trocar de agente de usuário periodicamente é um pequeno passo que você pode dar para se tornar menos exclusivo.','navegacao'),(52,'Desabilitar DnT','Avançado','A ativação do Do Not Track tem um impacto muito limitado, uma vez que muitos sites não respeitam ou não seguem isso. Como raramente é usado, também pode ser adicionado à sua assinatura, tornando-o mais exclusivo.','navegacao'),(53,'Previna-se do rastreamento HSTS','Avançado','O HSTS foi projetado para ajudar a proteger sites, mas surgiram preocupações com a privacidade, pois permitiu que os operadores de sites plantassem supercookies. Ele pode ser desativado visitando chrome://net-internals/#hsts em navegadores baseados em Chromium.','navegacao'),(54,'Desabilite conecções automaticas à servidores','Avançado','Mesmo quando você não estiver usando seu navegador, ele poderá se conectar com os servidores para relatar atividades de uso, análises e diagnósticos. Você pode desabilitar algumas dessas opções, o que pode ser feito nas configurações.','navegacao'),(55,'Ativar o isolamento primário','Avançado','O isolamento primário significa que todas as fontes de identificador e estado do navegador têm como escopo o domínio da barra de URL, o que pode reduzir bastante o rastreamento.','navegacao'),(56,'Retirar parâmetros de rastreamento de URLs','Avançado','Os sites geralmente acrescentam parâmetros GET adicionais aos URLs em que você clica, para identificar informações como origem/referenciador. Você pode limpar manualmente ou usar uma extensão como ClearURLs para remover dados de rastreamento de URLs automaticamente.','navegacao'),(57,'Segurança na primeira execução','Avançado','Depois de instalar um navegador da web, na primeira vez que você iniciá-lo (antes de definir suas configurações de privacidade), a maioria dos navegadores ligará para casa. Portanto, depois de instalar um navegador, você deve primeiro desabilitar sua conexão com a Internet e, em seguida, configurar as opções de privacidade antes de reativar sua conectividade com a Internet.','navegacao'),(58,'Use o navegador Tor','Avançado','O Projeto Tor fornece um navegador que criptografa e roteia seu tráfego através de vários nós, mantendo os usuários protegidos contra interceptação e rastreamento. As principais desvantagens são a velocidade e a experiência do usuário.','navegacao'),(59,'Desabilite o JavaScript','Avançado','Avançado	\r\nMuitos aplicativos da web modernos são baseados em JavaScript, portanto, desativá-los diminuirá bastante sua experiência de navegação. Mas se você realmente quiser dar tudo de si, isso realmente reduzirá sua superfície de ataque.','navegacao'),(60,'Tenha mais de um endereço de email','Essencial','Considere usar um endereço de e-mail diferente para comunicações críticas de segurança de e-mails triviais, como boletins informativos. Esta compartimentação poderia reduzir a quantidade de danos causados ​​por uma violação de dados e também facilitar a recuperação de uma conta comprometida.','email'),(61,'Mantenha o endereço de e-mail privado','Essencial','Não compartilhe seu e-mail principal publicamente, pois os endereços de e-mail costumam ser o ponto de partida para a maioria dos ataques de phishing.','email'),(62,'Mantenha sua conta segura','Essencial','Use uma senha longa e exclusiva, habilite 2FA e tenha cuidado ao fazer login. Sua conta de e-mail fornece um ponto de entrada fácil para um invasor para todas as suas outras contas online.','email'),(63,'Desative o carregamento automático de conteúdo remoto','Essencial','As mensagens de email podem conter conteúdo remoto, como imagens ou folhas de estilo, geralmente carregadas automaticamente do servidor. Você deve desabilitar esta opção, pois ela expõe seu endereço IP e informações do dispositivo e é frequentemente usada para rastreamento. Para obter mais informações, consulte este artigo.','email'),(65,'Use texto simples','Opcional','Existem dois tipos principais de e-mail na internet: texto simples e HTML. O primeiro é fortemente preferido para privacidade e segurança, pois as mensagens HTML geralmente incluem identificadores em links e imagens embutidas, que podem coletar dados pessoais e de uso. Existem também vários riscos de execução remota de código direcionado ao analisador HTML do seu cliente de e-mail, que não pode ser explorado se você estiver usando texto simples. Para obter mais informações, bem como instruções de configuração para seu provedor de e-mail, consulte UsePlaintext.email.','email'),(66,'Não conecte aplicativos de terceiros à sua conta de e-mail','Opcional','Se você conceder a um aplicativo ou plug-in de terceiros acesso total à sua caixa de entrada, eles terão acesso total e irrestrito a todos os seus e-mails e seu conteúdo, o que representa riscos significativos de segurança e privacidade.','email'),(67,'Não compartilhe dados confidenciais por e-mail','Opcional','Os e-mails são facilmente interceptados. Além disso, você não pode ter certeza de quão seguro é o ambiente do destinatário. Portanto, os e-mails não podem ser considerados seguros para troca de informações confidenciais, a menos que sejam criptografados.','email'),(68,'Considere mudar para um provedor de correio seguro','Opcional','Secure and reputable email providers such as Forward Email, ProtonMail, and Tutanota allow for end-to-end encryption, full privacy as well as more security-focused features. Unlike typical email providers, your mailbox cannot be read by anyone but you, since all messages are encrypted.','email'),(69,'Use uma chave inteligente','Avançado','OpenPGP não oferece suporte ao sigilo de encaminhamento, o que significa que se a sua chave privada ou a do destinatário for roubada, todas as mensagens anteriores criptografadas com ela serão expostas. Portanto, você deve tomar muito cuidado para manter suas chaves privadas seguras. Um método para fazer isso é usar uma chave inteligente USB para assinar ou descriptografar mensagens, permitindo que você faça isso sem que sua chave privada saia do dispositivo USB.','email'),(70,'Usar alias/encaminhamento anônimo','Avançado','O alias de e-mail permite que mensagens sejam enviadas para [qualquer coisa]@meu-domínio.com e ainda cheguem à sua caixa de entrada principal. Permitindo efetivamente que você use um endereço de e-mail diferente e exclusivo para cada serviço no qual você se inscrever. Isso significa que se você começar a receber spam, poderá bloquear esse alias e determinar qual empresa vazou seu endereço de e-mail.','email'),(71,'Subendereçamento','Avançado','Uma alternativa ao alias é o subendereçamento, onde qualquer coisa após o símbolo + é omitida durante a entrega da correspondência. Isso permite que você acompanhe quem compartilhou/vazou seu endereço de e-mail, mas, diferentemente do alias, não protegerá contra a revelação do seu endereço real.','email'),(72,'Use um domínio customizado','Avançado','Usar um domínio personalizado significa que você não depende do endereço atribuído pelo seu provedor de e-mail. Assim, você pode facilmente trocar de provedor no futuro e não precisa se preocupar com a descontinuação de um serviço.','email'),(73,'Sincronize com um cliente para fazer backup','Avançado','Para evitar a perda de acesso temporário ou permanente aos seus e-mails durante um evento não planejado (como uma interrupção ou bloqueio de conta), o Thunderbird pode sincronizar/fazer backup de mensagens de várias contas via IMAP e armazená-las localmente no seu dispositivo principal.','email'),(74,'Tenha cuidado com assinaturas de email','Avançado','Você não sabe o quão seguro é o ambiente de e-mail que o destinatário da sua mensagem pode ter. Existem várias extensões que rastreiam mensagens automaticamente e criam um banco de dados detalhado de informações de contato com base em assinaturas de e-mail.','email'),(75,'Cuidado com respostas automáticas','Avançado','As respostas automáticas fora do escritório são muito úteis para informar as pessoas de que haverá um atraso na resposta, mas muitas vezes as pessoas revelam demasiada informação – que pode ser usada em engenharia social e ataques direcionados.','email'),(76,'Escolha o protocolo de email certo','Avançado','Não utilize protocolos desatualizados (abaixo de IMAPv4 ou POPv3), ambos possuem vulnerabilidades conhecidas e segurança desatualizada.','email'),(77,'Sempre use portas TLS','Avançado','Existem opções SSL para POP3, IMAP e SMTP como portas TCP/IP padrão. Eles são fáceis de usar e têm amplo suporte, portanto devem sempre ser usados ​​em vez de portas de e-mail de texto simples.','email'),(78,'Use apenas mensageiros totalmente criptografados de ponta a ponta','Essencial','A criptografia ponta a ponta é um sistema de comunicação em que as mensagens são criptografadas no seu dispositivo e não descriptografadas até chegarem ao destinatário pretendido. Isto garante que qualquer interveniente que intercepte o tráfego não possa ler o conteúdo da mensagem, nem qualquer pessoa com acesso aos servidores centrais onde os dados são armazenados.','mensagem'),(79,'Use apenas plataformas de mensagens de código aberto','Essencial','Se o código for de código aberto, ele poderá ser examinado e auditado de forma independente por qualquer pessoa qualificada para fazê-lo, para garantir que não haja backdoors, vulnerabilidades ou outros problemas de segurança.','mensagem'),(80,'Use uma plataforma de mensagens “confiável”','Essencial','Ao selecionar um aplicativo de mensagens criptografadas, certifique-se de que ele seja totalmente de código aberto, estável, mantido ativamente e, de preferência, apoiado por desenvolvedores confiáveis.','mensagem'),(81,'Verifique as configurações de segurança','Essencial','Ative as configurações de segurança, incluindo verificação de contatos, notificações de segurança e criptografia. Desative recursos opcionais não relacionados à segurança, como recibo de leitura, último online e notificação de digitação.','mensagem'),(82,'Garanta que o ambiente dos seus destinatários seja seguro','Essencial','Sua conversa só pode ser tão segura quanto o elo mais fraco. Freqüentemente, a maneira mais fácil de se infiltrar em um canal de comunicação é atingir o indivíduo ou nó com menos proteção.','mensagem'),(83,'Desabilite serviços em nuvem','Essencial','Alguns aplicativos de mensagens móveis oferecem um complemento para web ou desktop. Isto não só aumenta a superfície de ataque, mas também tem sido associado a vários problemas críticos de segurança e, portanto, deve ser evitado, se possível.','mensagem'),(84,'Chats em grupo seguros','Essencial','O risco de comprometimento aumenta exponencialmente quanto mais participantes houver em um grupo, à medida que a superfície de ataque aumenta. Verifique periodicamente se todos os participantes são legítimos.','mensagem'),(85,'\r\nCrie um ambiente seguro para comunicação','Essencial','Existem vários estágios em que suas comunicações digitais podem ser monitoradas ou interceptadas. Isso inclui: o seu dispositivo ou o dos seus participantes, seu ISP, gateway nacional ou registro governamental, o provedor de mensagens, os servidores.','mensagem'),(86,'Combine um plano de comunicação','Opicional','Em determinadas situações, pode valer a pena fazer um plano de comunicação. Isso deve incluir métodos primários e de backup para se comunicarem com segurança.','mensagem'),(87,'Retirar metadados da mídia','Opicional','Metadados são “Dados sobre Dados” ou informações adicionais anexadas a um arquivo ou transação. Ao enviar uma foto, gravação de áudio, vídeo ou documento, você pode estar revelando mais do que pretendia.','mensagem'),(88,'URLs padrão','Opicional','O envio de links por meio de vários serviços pode expor involuntariamente suas informações pessoais. Isso ocorre porque, quando uma miniatura ou visualização é gerada, isso acontece no lado do cliente.','mensagem'),(89,'Verifique seu destinatário','Opicional','Certifique-se sempre de estar falando com o destinatário pretendido e de que ele não foi comprometido. Um método para fazer isso é usar um aplicativo que suporte verificação de contato.','mensagem'),(90,'Habilitar mensagens efêmeras','Opicional','Mensagens autodestrutivas são um recurso que faz com que suas mensagens sejam excluídas automaticamente após um determinado período de tempo. Isto significa que se o seu dispositivo for perdido, roubado ou apreendido, um adversário só terá acesso às comunicações mais recentes.','mensagem'),(91,'Evite SMS','Opicional','SMS pode ser conveniente, mas não é seguro. É suscetível a ameaças como interceptação, troca de sim, manipulação e malware.','mensagem'),(92,'Cuidado com os rastreadores','Opicional','Tenha cuidado com aplicativos de mensagens com rastreadores, pois as estatísticas detalhadas de uso que eles coletam costumam ser muito invasivas e, às vezes, podem revelar sua identidade, bem como informações pessoais que, de outra forma, você não pretenderia compartilhar.','mensagem'),(93,'Considere a jurisdição','Avançado','As jurisdições onde a organização está sediada e os dados estão hospedados também devem ser levadas em consideração.','mensagem'),(94,'Use uma plataforma anônima','Avançado','Se você acredita que pode ser um alvo, você deve optar por uma plataforma de mensagens anônimas que não exija um número de telefone ou qualquer outra informação de identificação pessoal para se inscrever ou usar.','mensagem'),(95,'Certifique-se de que o sigilo de encaminhamento seja compatível','Avançado','Opte por uma plataforma que implemente sigilo de encaminhamento. É aqui que seu aplicativo gera uma nova chave de criptografia para cada mensagem.','mensagem'),(96,'Considere uma plataforma descentralizada','Avançado','Se todos os dados fluem através de um provedor central, você deve confiar seus dados e metadados a ele. Você não pode verificar se o sistema em execução é autêntico sem backdoors.','mensagem'),(97,'Proteja sua conta','Essencial','Perfis de mídia social são roubados ou assumidos com muita frequência. Para proteger sua conta: use uma senha única e forte e habilite a autenticação de dois fatores.','midia_social'),(98,'Verifique as configurações de privacidade','Essencial','A maioria das redes sociais permite que você controle suas configurações de privacidade. Certifique-se de estar confortável com quais dados você está expondo atualmente e para quem.','midia_social'),(99,'Pense em todas as interações como sendo públicas','Essencial','Ainda existem vários métodos de visualização do conteúdo “privado” de um usuário em muitas redes sociais. Portanto, antes de enviar, postar ou comentar qualquer coisa, pense “Eu me importaria se isso fosse totalmente público?”','midia_social'),(100,'Pense em todas as interações como sendo permanentes','Essencial','Praticamente todas as postagens, comentários, fotos etc. são continuamente apoiados por uma infinidade de serviços de terceiros, que arquivam esses dados e os tornam indexáveis ​​e disponíveis publicamente quase para sempre.','midia_social'),(101,'Não revele muito','Essencial','As informações de perfil criam uma mina de ouro de informações para hackers, o tipo de dados que os ajuda a personalizar golpes de phishing. Evite compartilhar muitos detalhes (DoB, cidade natal, escola, etc.).','midia_social'),(102,'Cuidado com o que você faz upload','Essencial','Atualizações de status, comentários, check-ins e mídia podem revelar involuntariamente muito mais do que você pretendia. Isto é especialmente relevante para fotos e vídeos, que podem mostrar coisas em segundo plano.','midia_social'),(103,'Não compartilhe email ou número de telefone','Essencial','Publicar seu endereço de e-mail real ou número de celular oferece a hackers, trolls e spammers mais munição para usar contra você e também pode permitir a conexão de aliases, perfis ou pontos de dados separados.','midia_social'),(104,'Não de permissões desnecessárias','Essencial','Por padrão, muitos dos aplicativos populares de redes sociais solicitarão permissão para acessar seus contatos, registro de chamadas, localização, histórico de mensagens, etc.','midia_social'),(105,'Tome cuidado com integrações de terceiros','Essencial','Evite inscrever-se em contas usando login de rede social, revogue o acesso a aplicativos sociais que você não usa mais.','midia_social'),(106,'Evite publicar dados geográficos enquanto ainda estiver no local','Essencial','Se você planeja compartilhar qualquer conteúdo que revele um local, espere até sair desse local. Isto é particularmente importante quando você estiver viajando em um restaurante, campus, hotel/resort, prédio público ou aeroporto.','midia_social'),(107,'Remova metadados antes de enviar medias','Opcional','A maioria dos smartphones e algumas câmeras anexam automaticamente um conjunto abrangente de dados adicionais (chamados dados EXIF) a cada fotografia. Remova esses dados antes de fazer upload.','midia_social'),(108,'Implementar camuflagem de imagens','Avançado','Ferramentas como o Fawkes podem ser usadas para alterar sutilmente a estrutura dos rostos nas fotos de uma forma que seja imperceptível aos humanos, mas impedirá que os sistemas de reconhecimento facial sejam capazes de reconhecer um determinado rosto.','midia_social'),(109,'Considere falsificar GPS nas proximidades de casa','Avançado','Mesmo que você nunca use as redes sociais, sempre haverá outras pessoas que não serão tão cuidadosas e poderão revelar sua localização.','midia_social'),(110,'Considere utilizar informações falsas','Avançado','Se você quiser apenas ler e não pretende postar muito, considere usar um nome alternativo e detalhes de contato falsos.','midia_social'),(111,'Não tenha qualquer rede social','Avançado','A mídia social é fundamentalmente não privada, portanto, para máxima segurança e privacidade online, evite usar qualquer rede social convencional.','midia_social'),(112,'Use VPN','Essencial','Use uma VPN paga e confiável. Isso pode ajudar a proteger os sites que você visita de registrar seu IP real, reduzir a quantidade de dados que seu ISP pode coletar e aumentar a proteção em WiFi público.','redes'),(113,'Mude a senha do seu roteador','Essencial','Depois de adquirir um novo roteador, altere a senha. As senhas padrão do roteador estão disponíveis publicamente, o que significa que qualquer pessoa nas proximidades poderá se conectar.','redes'),(114,'Use WPA2 e uma senha forte','Essencial','Existem diferentes protocolos de autenticação para conexão WiFi. Atualmente, as opções mais seguras são WPA2 e WPA3 (em roteadores mais recentes).','redes'),(115,'Mnatenha o firmware do roteador atualizado','Essencial','Os fabricantes lançam atualizações de firmware que corrigem vulnerabilidades de segurança, implementam novos padrões e, às vezes, adicionam recursos ou melhoram o desempenho do seu roteador.','redes'),(116,'Implemente uma VPN em toda a rede','Opicional','Se você configurar sua VPN em seu roteador, firewall ou servidor doméstico, o tráfego de todos os dispositivos será criptografado e roteado através dele, sem a necessidade de aplicativos VPN individuais.','redes'),(117,'Proteja-se contra vazamentos de DNS','Opicional','Ao usar uma VPN, é extremamente importante usar exclusivamente o servidor DNS do seu provedor VPN ou serviço seguro.','redes'),(118,'Use um protocolo de VPN seguro','Opicional','OpenVPN e WireGuard são protocolos de tunelamento de código aberto, leves e seguros. Evite usar PPTP ou SSTP.','redes'),(119,'DNS seguro','Opicional','Use DNS sobre HTTPS, que realiza a resolução de DNS por meio do protocolo HTTPS, criptografando dados entre você e seu resolvedor de DNS.','redes'),(120,'Evite o roteador gratuito do seu provedor de internet','Opicional','Normalmente, eles são fabricados a granel e baratos na China, com firmware de propriedade insegura que não recebe atualizações de segurança regulares.','redes'),(121,'Lista de permissões de endereços MAC','Opicional','Você pode colocar endereços MAC na lista de permissões nas configurações do roteador, impedindo que dispositivos desconhecidos se conectem imediatamente à sua rede, mesmo que conheçam suas credenciais.','redes'),(122,'Altere o endereço IP local do roteador','Opicional','É possível que um script malicioso em seu navegador explore uma vulnerabilidade de script entre sites, acessando roteadores vulneráveis ​​conhecidos em seus endereços IP locais e adulterando-os.','redes'),(123,'Não revele dados pessoais em nomes de rede wifi','Opicional','Você deve atualizar o nome da sua rede, escolhendo um SSID que não o identifique, inclua seu número/endereço fixo e não especifique a marca/modelo do dispositivo.','redes'),(124,'Listagens de roteadores para desativação','Opicional','Os SSIDs WiFi são verificados, registrados e publicados em vários sites, o que é uma séria preocupação de privacidade para alguns.','redes'),(125,'Esconda o nome da rede wifi','Opicional','O Service Set Identifier do seu roteador é simplesmente o nome da rede. Se não estiver visível, poderá receber menos abusos.','redes'),(126,'Disabilite o WPS','Opicional','O Wi-Fi Protected Setup oferece um método mais fácil de conexão, sem inserir uma senha WiFi longa, mas o WPS apresenta uma série de problemas de segurança importantes.','redes'),(127,'Desabilite o UPnP','Opicional','O Plug and Play universal permite que os aplicativos encaminhem automaticamente uma porta no seu roteador, mas tem um longo histórico de sérios problemas de segurança.','redes'),(128,'Disponibilize uma rede de convidados para os convidados','Opicional','Não conceda acesso à sua rede WiFi principal aos visitantes, pois isso permite que eles interajam com outros dispositivos na rede.','redes'),(129,'Modifique o IP padrão do roteador','Opicional','Modificar o endereço IP padrão do painel de administração do roteador tornará mais difícil a ocorrência de scripts maliciosos direcionados a endereços IP locais.','redes'),(130,'Desabilite processos e serviços não utilizados no seu roteador','Opicional','Serviços como Telnet e SSH, que fornecem acesso de linha de comando a dispositivos, nunca devem ser expostos à Internet e também devem ser desativados na rede local, a menos que sejam realmente necessários.','redes'),(131,'Não deixe as portas abertas','Opicional','Feche todas as portas abertas em seu roteador que não sejam necessárias. As portas abertas fornecem uma entrada fácil para hackers.','redes'),(132,'Desabilite protocolos de acesso remoto','Opicional','Quando protocolos como PING, Telnet, SSH, UPnP e HNAP etc estão habilitados, eles permitem que seu roteador seja investigado de qualquer lugar do mundo.','redes'),(133,'Desative o gerenciamento baseado em nuvem','Opicional','Você deve tratar o painel de administração do seu roteador com o máximo cuidado, pois danos consideráveis ​​podem ser causados ​​se um invasor conseguir obter acesso.','redes'),(134,'Gerencie o alcance de sua rede wifi','Opicional','É comum querer aumentar o alcance do seu roteador ao máximo, mas se você mora em um apartamento menor, sua superfície de ataque aumenta quando sua rede WiFi pode ser captada do outro lado da rua.','redes'),(135,'Roteie o tráfego pela rede TOR','Avançado','As VPNs têm seus pontos fracos. Para aumentar a segurança, direcione todo o tráfego da Internet através da rede Tor.','redes'),(136,'Desative o wifi e bluetoth nos dispositivos','Avançado','Conectar-se até mesmo a uma rede WiFi segura aumenta sua superfície de ataque. Desative o WiFi doméstico e conecte cada dispositivo via Ethernet.','redes'),(137,'Criptografe seu dispositivo','Essencial','Para manter seus dados protegidos contra acesso físico, use criptografia de arquivos. Isso significa que se o seu dispositivo for perdido ou roubado, ninguém terá acesso aos seus dados.','dispositivos_moveis'),(138,'Desligue funções que não estão sendo usadas','Essencial','Quando você não estiver usando WiFi, Bluetooth, NFC etc., desative esses recursos. Existem várias ameaças comuns que utilizam esses recursos.','dispositivos_moveis'),(139,'Mentenha a contagem de aplicativos no mínimo','Essencial','Desinstale aplicativos que você não precisa ou que não usa regularmente. Como os aplicativos geralmente são executados em segundo plano, deixando seu dispositivo lento, mas também coletando dados.','dispositivos_moveis'),(140,'Permissões de aplicativo','Essencial','Não conceda permissões a aplicativos que eles não precisam. Para Android, Bouncer é um aplicativo que permite conceder permissões temporárias/únicas.','dispositivos_moveis'),(141,'Somente instale aplicativos de fontes oficiais','Essencial','Os aplicativos na Apple App Store e na Google Play Store são verificados e assinados criptograficamente, tornando-os menos propensos a serem maliciosos.','dispositivos_moveis'),(142,'Cuidado com carregadores desconhecidos','Essencial','Juice Jacking ocorre quando hackers usam estações de carregamento públicas para instalar malware em seu smartphone ou tablet por meio de uma porta USB comprometida.','dispositivos_moveis'),(143,'Configurar um PIN da operadora de celular','Essencial','O sequestro de SIM ocorre quando um hacker consegue transferir o número do seu celular para o sim. A maneira mais fácil de se proteger contra isso é configurar um PIN por meio de sua operadora de celular.','dispositivos_moveis'),(144,'Desativar listagens de identificador de chamadas','Opicional','Para manter seus dados privados, você pode cancelar a listagem do seu número em aplicativos de identificação de chamadas, como TrueCaller, CallApp, SyncMe e Hiya.','dispositivos_moveis'),(145,'Use mapas offline','Opicional','Considere usar um aplicativo de mapas offline, como OsmAnd ou Organic Maps, para reduzir vazamentos de dados de aplicativos de mapas.','dispositivos_moveis'),(146,'Desativar anúncios personalizados','Opicional','Você pode reduzir um pouco a quantidade de dados coletados desativando a visualização de anúncios personalizados.','dispositivos_moveis'),(147,'Apagar após muitas tentativas de login','Opicional','Para se proteger contra um invasor forçando seu PIN, configure seu dispositivo para apagar após muitas tentativas de login malsucedidas.','dispositivos_moveis'),(148,'Monitorar rastreadores','Opicional','εxodus é um ótimo serviço que permite pesquisar qualquer aplicativo e ver quais rastreadores estão incorporados nele.','dispositivos_moveis'),(149,'Antivirus para celular','Opicional','Tão essencial quanto um antivírus para computador, é recomendado ter um antivírus para celular sempre atualizado.','dispositivos_moveis'),(150,'Reduza as atividades em segundo plano','Opicional','Para Android, o SuperFreeze torna possível congelar totalmente todas as atividades em segundo plano por aplicativo.','dispositivos_moveis'),(151,'Aplicativos móveis sandbox','Opicional','Evite que aplicativos que exigem muita permissão acessem seus dados privados com o Island, um ambiente sandbox.','dispositivos_moveis'),(152,'Evite teclados personalizados','Opicional','Recomenda-se usar o teclado padrão do seu dispositivo. Se você optar por usar um aplicativo de teclado de terceiros, certifique-se de que ele seja confiável.','dispositivos_moveis'),(153,'Reinicie o dispositivo regularmente','Opicional','Reiniciar o telefone pelo menos uma vez por semana limpará o estado do aplicativo armazenado em cache na memória e poderá funcionar com mais facilidade após a reinicialização.','dispositivos_moveis'),(154,'Evite SMS','Opicional','O SMS não deve ser usado para receber códigos 2FA ou para comunicação; em vez disso, use um aplicativo de mensagens criptografadas, como o Signal.','dispositivos_moveis'),(155,'Mantenha seu número privado','Opicional','MySudo permite criar e usar números de telefone virtuais para diferentes pessoas ou grupos. Isso é ótimo para compartimentação.','dispositivos_moveis'),(156,'Cuidado com Stalkerware','Opicional','Stalkerware é um malware instalado diretamente no seu dispositivo por alguém que você conhece. A melhor maneira de se livrar dele é redefinindo os padrões de fábrica.','dispositivos_moveis'),(157,'Dê preferência ao navegador em vez do aplicativo dedicado','Opicional','Sempre que possível, considere usar um navegador seguro para acessar sites, em vez de instalar aplicativos dedicados.','dispositivos_moveis'),(158,'Tráfego TOR','Avançado','O Orbot fornece uma conexão Tor para todo o sistema, que ajudará a protegê-lo contra vigilância e ameaças de WiFi público.','dispositivos_moveis'),(159,'Considere usar uma ROM customizada','Avançado','Se você está preocupado com o fato de o fabricante do seu dispositivo coletar muitas informações pessoais, considere uma ROM personalizada com foco na privacidade.','dispositivos_moveis'),(160,'Mantenha seu sistema atualizado','Essencial','As atualizações do sistema contêm correções/patches para problemas de segurança, melhoram o desempenho e, às vezes, adicionam novos recursos. Instale novas atualizações quando solicitado.','computador'),(161,'Criptografe seu dispositivo','Essencial','Use BitLocker para Windows, FileVault no MacOS ou LUKS no Linux para habilitar a criptografia completa do disco. Isso evita o acesso não autorizado caso seu computador seja perdido ou roubado.','computador'),(162,'Faça backup de dados importantes','Essencial','Manter backups criptografados evita perdas devido a ransomware, roubo ou danos. Considere usar o Cryptomator para arquivos em nuvem ou o VeraCrypt para unidades USB.','computador'),(163,'Tenha cuidado ao conectar dispositivos USB ao seu computador','Essencial','Os dispositivos USB podem representar ameaças graves. Considere fazer um desinfetante USB com CIRCLean para verificar dispositivos USB com segurança.','computador'),(164,'Ative o bloqueio de tela quando estiver inativo','Essencial','Bloqueie seu computador quando estiver ausente e configure-o para exigir uma senha ao retomar do protetor de tela ou suspensão para evitar acesso não autorizado.','computador'),(165,'Desabilite Cortana ou Siri','Essencial','Assistentes controlados por voz podem ter implicações na privacidade devido aos dados enviados de volta para processamento. Desative ou limite suas capacidades de escuta.','computador'),(166,'Revise seus aplicativos instalados','Essencial','Reduza ao mínimo os aplicativos instalados para reduzir a exposição a vulnerabilidades e limpe regularmente os caches dos aplicativos.','computador'),(167,'Gerenciar permissões','Essencial','Controle quais aplicativos têm acesso à sua localização, câmera, microfone, contatos e outras informações confidenciais.','computador'),(168,'Impedir que dados de uso sejam enviados para a nuvem','Essencial','Limite a quantidade de informações de uso ou feedback enviado à nuvem para proteger sua privacidade.','computador'),(169,'Evite o desbloqueio rápido','Essencial','Use uma senha forte em vez de biometria ou PINs curtos para desbloquear seu computador e aumentar a segurança.','computador'),(170,'Desligue o computador, em vez do modo de espera','Essencial','Desligue seu dispositivo quando não estiver em uso, especialmente se o disco estiver criptografado, para manter os dados seguros.','computador'),(171,'Não vincule seu PC à sua conta Microsoft ou Apple','Opicional','Use uma conta local apenas para evitar sincronização e exposição de dados. Evite usar serviços de sincronização que comprometam a privacidade.','computador'),(172,'Verifique quais serviços de compartilhamento estão ativados','Opicional','Desative os recursos de compartilhamento de rede que você não está usando para fechar gateways para ameaças comuns.','computador'),(173,'Não use conta root/admin para tarefas não administrativas','Opicional','Use uma conta de usuário sem privilégios para tarefas diárias e eleve permissões apenas para alterações administrativas para mitigar vulnerabilidades.','computador'),(174,'Cubra sua webcam e micrifone','Opicional','Cubra sua webcam quando não estiver em uso e considere bloquear a gravação de áudio não autorizada para proteger a privacidade.','computador'),(175,'Use um filtro de privacidade','Opicional','Use um filtro de privacidade de tela em espaços públicos para evitar a navegação e proteger informações confidenciais.','computador'),(176,'Dispositivo fisicamente seguro','Opicional','Use uma trava Kensington para proteger seu laptop em espaços públicos e considere travas de porta para evitar acesso físico não autorizado.','computador'),(177,'Não carregue dispositivos do seu PC','Opicional','Use um banco de energia ou carregador CA de parede em vez do PC para evitar riscos de segurança associados às conexões USB.','computador'),(178,'Randomize seu endereço de hardware em Wi-Fi','Opicional','Modifique ou randomize seu endereço MAC para proteger contra rastreamento em diferentes redes WiFi.','computador'),(179,'Use um firewall','Opicional','Instale um aplicativo de firewall para monitorar e bloquear o acesso indesejado à Internet por determinados aplicativos, protegendo contra ataques de acesso remoto e violações de privacidade.','computador'),(180,'Proteja-se contra keyloggers de software','Opicional','Use ferramentas de criptografia de teclas para se proteger contra keyloggers de software que gravam suas teclas digitadas.','computador'),(182,'Verifique a conexão do teclado','Opicional','Esteja atento aos keyloggers de hardware ao usar computadores públicos ou desconhecidos, verificando as conexões do teclado.','computador'),(183,'Evite ataques de injeção de teclas','Opicional','Bloqueie seu PC quando estiver ausente e considere usar o USBGuard ou ferramentas semelhantes para se proteger contra ataques de injeção de teclas.','computador'),(184,'Não use antivírus comercial \"gratuito\"','Avançado','Confie em ferramentas de segurança integradas e evite aplicativos antivírus gratuitos devido ao seu potencial de invasão de privacidade e coleta de dados.','computador'),(185,'Verifique periodicamente se há rootkits','Avançado','Verifique regularmente a existência de rootkits para detectar e mitigar ameaças de controle total do sistema usando ferramentas como o chkrootkit.','computador'),(186,'Senha de inicialização do BIOS','Avançado','Habilite uma senha BIOS ou UEFI para adicionar uma camada de segurança adicional durante a inicialização, mas esteja ciente de suas limitações.','computador'),(187,'Use um sistema operacional focado na segurança','Avançado','Considere mudar para Linux ou uma distribuição focada em segurança, como QubeOS ou Tails, para maior privacidade e segurança.','computador'),(188,'Faça uso de VMs','Avançado','Use máquinas virtuais para atividades arriscadas ou teste software suspeito para isolar ameaças potenciais do seu sistema primário.','computador'),(189,'Compartimentarize','Avançado','Isole diferentes programas e fontes de dados, tanto quanto possível, para limitar a extensão de possíveis violações.','computador'),(190,'Desativar recursos indesejados (Windows)','Avançado','Desative \"recursos\" e serviços desnecessários do Windows executados em segundo plano para reduzir a coleta de dados e o uso de recursos.','computador'),(191,'Boot seguro','Avançado','Certifique-se de que a inicialização segura esteja ativada para evitar que malware substitua seu carregador de inicialização e outros softwares críticos.','computador'),(192,'Acesso SSH seguro','Avançado','Tome medidas para proteger o acesso SSH contra ataques, alterando a porta padrão, usando chaves SSH e configurando firewalls.','computador'),(193,'Fechar portas abertas não utilizadas','Avançado','Desative a escuta de serviços em portas externas que não são necessárias para proteger contra explorações remotas e melhorar a segurança.','computador'),(194,'Implementar controle de acesso obrigatório','Avançado','Restrinja o acesso privilegiado para limitar os danos que podem ser causados ​​se um sistema for comprometido.','computador'),(195,'Use tokens canários','Avançado','Implante tokens canário para detectar acesso não autorizado aos seus arquivos ou e-mails com mais rapidez e coletar informações sobre o invasor.','computador'),(196,'Renomeie os dispositivos para não especificar marca/modelo','Essencial','Altere os nomes dos dispositivos padrão para algo genérico para evitar ataques direcionados, ocultando informações de marca ou modelo.','casa_inteligente'),(197,'Desative o microfone e a câmera quando não estiverem em uso','Essencial','Use interruptores de hardware para desligar microfones e câmeras em dispositivos inteligentes para proteção contra gravações acidentais ou acesso direcionado.','casa_inteligente'),(198,'Entenda quais dados são coletados, armazenados e transmitidos','Essencial','Pesquise e garanta conforto com as práticas de tratamento de dados dos dispositivos domésticos inteligentes antes da compra, evitando dispositivos que compartilhem dados com terceiros.','casa_inteligente'),(199,'Defina configurações de privacidade e opte por não compartilhar dados com terceiros','Essencial','Ajuste as configurações do aplicativo para obter controles de privacidade mais rígidos e desative o compartilhamento de dados com terceiros sempre que possível.','casa_inteligente'),(200,'Não vincule seus dispositivos domésticos inteligentes à sua identidade real','Essencial','Use nomes de usuário e senhas anônimos, evitando cadastro/login através de mídias sociais ou outros serviços de terceiros para manter a privacidade.','casa_inteligente'),(201,'Mantenha o firmware atualizado','Essencial','Atualize regularmente o firmware do dispositivo inteligente para aplicar patches e melhorias de segurança.','casa_inteligente'),(202,'Proteja sua rede','Essencial','Proteja o WiFi e a rede doméstica para evitar acesso não autorizado a dispositivos inteligentes.','casa_inteligente'),(203,'Tenha cuidado com wearables','Opicional','Considere os extensos recursos de coleta de dados dos dispositivos vestíveis e suas implicações para a privacidade.','casa_inteligente'),(204,'Não conecte a infraestrutura crítica da sua casa à Internet','Opicional','Avalie os riscos de termostatos, alarmes e detectores conectados à Internet devido ao potencial acesso remoto de hackers.','casa_inteligente'),(205,'Mitigar os riscos do Alexa/Google Home','Opicional','Considere alternativas focadas na privacidade, como Mycroft, ou use o Project Alias ​​para evitar a escuta ociosa por assistentes ativados por voz.','casa_inteligente'),(206,'Monitore sua rede doméstica de perto','Opicional','Use ferramentas como FingBox ou recursos de roteador para monitorar atividades incomuns de rede.','casa_inteligente'),(207,'Negar acesso à Internet sempre que possível','Avançado','Utilize firewalls para bloquear o acesso à Internet de dispositivos que não necessitam dela, limitando a operação ao uso da rede local.','casa_inteligente'),(208,'Avalie os riscos','Avançado','Consider the privacy implications for all household members and adjust device settings for security and privacy, such as disabling devices at certain times.\r\n\r\n','casa_inteligente');
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
-- Table structure for table `status_casa_inteligente`
--

DROP TABLE IF EXISTS `status_casa_inteligente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_casa_inteligente` (
  `id` int(2) NOT NULL,
  `renomear_dispositivos` int(2) DEFAULT NULL,
  `desativar_microfone` int(2) DEFAULT NULL,
  `entender_dados` int(2) DEFAULT NULL,
  `configuracoes_privacidade` int(2) DEFAULT NULL,
  `cuidado_vinculacao` int(2) DEFAULT NULL,
  `firmware_atualizado` int(2) DEFAULT NULL,
  `proteja_rede` int(2) DEFAULT NULL,
  `cuidado_wearables` int(2) DEFAULT NULL,
  `local_internet` int(2) DEFAULT NULL,
  `riscos_alexa` int(2) DEFAULT NULL,
  `monitorar_rede` int(2) DEFAULT NULL,
  `negar_acesso` int(2) DEFAULT NULL,
  `avaliar_riscos` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_casa_inteligente`
--

/*!40000 ALTER TABLE `status_casa_inteligente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_computador`
--

DROP TABLE IF EXISTS `status_computador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_computador` (
  `id` int(2) NOT NULL,
  `sistema_atualizado` int(2) DEFAULT NULL,
  `criptografia` int(2) DEFAULT NULL,
  `backup` int(2) DEFAULT NULL,
  `cuidado_usb` int(2) DEFAULT NULL,
  `bloqueio_tela` int(2) DEFAULT NULL,
  `cortana_siri` int(2) DEFAULT NULL,
  `revisar_aplicativos` int(2) DEFAULT NULL,
  `gerenciar_permissoes` int(2) DEFAULT NULL,
  `dados_nuvem` int(2) DEFAULT NULL,
  `desbloqueio` int(2) DEFAULT NULL,
  `deslicar_pc` int(2) DEFAULT NULL,
  `conta_microsoft` int(2) DEFAULT NULL,
  `servicoes_compartilhamento` int(2) DEFAULT NULL,
  `conta_administrador` int(2) DEFAULT NULL,
  `bloquear_webcam` int(2) DEFAULT NULL,
  `filtro_privacidade` int(2) DEFAULT NULL,
  `fisicamente_seguro` int(2) DEFAULT NULL,
  `carregador` int(2) DEFAULT NULL,
  `randon_wifi` int(2) DEFAULT NULL,
  `firewall` int(2) DEFAULT NULL,
  `keyloggers` int(2) DEFAULT NULL,
  `conexao_teclado` int(2) DEFAULT NULL,
  `injecao_teclas` int(2) DEFAULT NULL,
  `antivirus_gratuito` int(2) DEFAULT NULL,
  `rootkits` int(2) DEFAULT NULL,
  `senha_bios` int(2) DEFAULT NULL,
  `sistema_seguranca` int(2) DEFAULT NULL,
  `vms` int(2) DEFAULT NULL,
  `compartimentar` int(2) DEFAULT NULL,
  `desativar_recursos` int(2) DEFAULT NULL,
  `inicializacao_segura` int(2) DEFAULT NULL,
  `acesso_ssh` int(2) DEFAULT NULL,
  `fechar_portas` int(2) DEFAULT NULL,
  `controle_acesso` int(2) DEFAULT NULL,
  `token_canario` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_computador`
--

LOCK TABLES `status_computador` WRITE;
/*!40000 ALTER TABLE `status_computador` DISABLE KEYS */;
INSERT INTO `status_computador` VALUES (1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
/*!40000 ALTER TABLE `status_computador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_dispositivos_moveis`
--

DROP TABLE IF EXISTS `status_dispositivos_moveis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_dispositivos_moveis` (
  `id` int(2) NOT NULL,
  `criptografia` int(2) DEFAULT NULL,
  `recursos_conectividade` int(2) DEFAULT NULL,
  `aplicativos_minimos` int(2) DEFAULT NULL,
  `permissao_aplicativo` int(2) DEFAULT NULL,
  `aplicativos_oficiais` int(2) DEFAULT NULL,
  `ameacas_carregamento` int(2) DEFAULT NULL,
  `pin_operadora` int(2) DEFAULT NULL,
  `identificador_chamadas` int(2) DEFAULT NULL,
  `mapas_offline` int(2) DEFAULT NULL,
  `anuncios_personalizados` int(2) DEFAULT NULL,
  `monitorar_rastreadores` int(2) DEFAULT NULL,
  `apagar_discpositivo` int(2) DEFAULT NULL,
  `firewall_movel` int(2) DEFAULT NULL,
  `atividade_segundo_plano` int(2) DEFAULT NULL,
  `sandbox` int(2) DEFAULT NULL,
  `teclados_virtuais` int(2) DEFAULT NULL,
  `reiniciar_dispositivo` int(2) DEFAULT NULL,
  `evitar_sms` int(2) DEFAULT NULL,
  `numero_privado` int(2) DEFAULT NULL,
  `stalkerwares` int(2) DEFAULT NULL,
  `navegador_aplicativo` int(2) DEFAULT NULL,
  `rom_personalizada` int(2) DEFAULT NULL,
  `trafego_tor` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_dispositivos_moveis`
--

LOCK TABLES `status_dispositivos_moveis` WRITE;
/*!40000 ALTER TABLE `status_dispositivos_moveis` DISABLE KEYS */;
INSERT INTO `status_dispositivos_moveis` VALUES (1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `status_dispositivos_moveis` ENABLE KEYS */;
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
-- Table structure for table `status_mensagem`
--

DROP TABLE IF EXISTS `status_mensagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_mensagem` (
  `id` int(2) DEFAULT NULL,
  `criptografia` int(2) DEFAULT NULL,
  `codigo_aberto` int(2) DEFAULT NULL,
  `confiavel` int(2) DEFAULT NULL,
  `configuracoes_seguranca` int(2) DEFAULT NULL,
  `ambiente_destinatario` int(2) DEFAULT NULL,
  `servicos_nuvem` int(2) DEFAULT NULL,
  `bate_papo_grupo` int(2) DEFAULT NULL,
  `ambiente_seguro` int(2) DEFAULT NULL,
  `combine_plano_comunicacao` int(2) DEFAULT NULL,
  `retirar_metadados` int(2) DEFAULT NULL,
  `urls_padrao` int(2) DEFAULT NULL,
  `verifique_destinatario` int(2) DEFAULT NULL,
  `mensagens_efemeras` int(2) DEFAULT NULL,
  `evite_sms` int(2) DEFAULT NULL,
  `cuidado_rastreadores` int(2) DEFAULT NULL,
  `jurisdicao` int(2) DEFAULT NULL,
  `sigilo_encaminhamento` int(2) DEFAULT NULL,
  `plataforma_descentralizada` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_mensagem`
--

LOCK TABLES `status_mensagem` WRITE;
/*!40000 ALTER TABLE `status_mensagem` DISABLE KEYS */;
INSERT INTO `status_mensagem` VALUES (1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
LOCK TABLES `status_midia_social` WRITE;
/*!40000 ALTER TABLE `status_midia_social` DISABLE KEYS */;
INSERT INTO `status_midia_social` VALUES (1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
/*!40000 ALTER TABLE `status_midia_social` ENABLE KEYS */;
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
/*!40000 ALTER TABLE `status_navegacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_redes`
--

DROP TABLE IF EXISTS `status_redes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_redes` (
  `id` int(2) NOT NULL,
  `senha_roteador` int(2) DEFAULT NULL,
  `wpa2` int(2) DEFAULT NULL,
  `firmware_atualizado` int(2) DEFAULT NULL,
  `vpn_rede` int(2) DEFAULT NULL,
  `vazamento_dns` int(2) DEFAULT NULL,
  `vpn_segura` int(2) DEFAULT NULL,
  `dns_seguro` int(2) DEFAULT NULL,
  `roteador_gratuito` int(2) DEFAULT NULL,
  `permissao_mac` int(2) DEFAULT NULL,
  `ip_local` int(2) DEFAULT NULL,
  `ssid` int(2) DEFAULT NULL,
  `listagem_SSID` int(2) DEFAULT NULL,
  `oculte_ssid` int(2) DEFAULT NULL,
  `desativar_wps` int(2) DEFAULT NULL,
  `desativar_upnp` int(2) DEFAULT NULL,
  `rede_convidados` int(2) DEFAULT NULL,
  `ip_padrao` int(2) DEFAULT NULL,
  `desativar_servicos` int(2) DEFAULT NULL,
  `fechar_portas` int(2) DEFAULT NULL,
  `acesso_remoto` int(2) DEFAULT NULL,
  `gerenciamento_nuvem` int(2) DEFAULT NULL,
  `alcance_wifi` int(2) DEFAULT NULL,
  `trafego_tor` int(2) DEFAULT NULL,
  `desativar_wifi` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_redes`
--

LOCK TABLES `status_redes` WRITE;
/*!40000 ALTER TABLE `status_redes` DISABLE KEYS */;
INSERT INTO `status_redes` VALUES (1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-12 14:14:41

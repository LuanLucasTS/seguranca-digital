CREATE DATABASE `seguranca-digital`
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

CREATE USER 'seguranca-digital'@'localhost' IDENTIFIED BY 'AaHY^454#jUQSXJHtXdox4QY!w';
GRANT ALL PRIVILEGES ON `seguranca-digital`.* TO 'seguranca-digital'@'localhost';

CREATE TABLE `autenticacao` (
  `id` int(2),
  `senha_forte` int(2),
  `nao_reusar` int(2),
  `gerenciador_senha` int(2)
) ENGINE=InnoDB;


INSERT INTO `seguranca-digital`.autenticacao
(id, senha_forte, nao_reusar, gerenciador_senha)
VALUES(1, 0, 0, 0);

create schema agenda;

use agenda;

CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `telefone` varchar(13) NOT NULL,
  `cpf` varchar(14),
  `sus` varchar(19),
  `senha` varchar(250) NOT NULL,
  `user_type` varchar(20),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci; 

CREATE TABLE `agendamentos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int DEFAULT NULL,
  `id_servico` int NOT NULL,
  `data_agendada` date NOT NULL, 
  `horario_agendado` time NOT NULL,
  `nome_cliente` varchar(255) NOT NULL,
  `servico_agendado` varchar(255) ,
  `data_agendamento` date NOT NULL,
  `senha` varchar(10) NOT NULL,
  `status` varchar(25) ,
  `retificacao` varchar(255),
  PRIMARY KEY (`id`),
  CONSTRAINT `agendamentos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- CREATE TABLE `horarios_disponiveis` (
--     `id` int NOT NULL AUTO_INCREMENT,
--     `hora_inicio` time NOT NULL,
--     `hora_pausa` time NOT NULL, 
--     `tempo_pausa` time NOT NULL,
--     `hora_retomada` time NOT NULL,
--     `hora_final` time NOT NULL, 
--     PRIMARY KEY(`id`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `horario_servico` (
    `id` int NOT NULL AUTO_INCREMENT,
    `id_servico` int NOT NULL, 
    `hora_inicio` time NOT NULL,
    `hora_pausa` time NOT NULL, 
    `hora_retomada` time NOT NULL,
    `hora_final` time NOT NULL,
    `tempo_atendimento` time NOT NULL,
    `dia_semana` int NOT NULL, 
    PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- SERVIÇOS PELO DIA_SEMANA DE 1 A 5, 0 DOMINGO, 1 SEGUNDA, 2 TERÇA, 3 QUARTA, 4 QUINTA, 5 SEXTA, 6 SÁBADO

-- SERVIÇO 1 
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (1, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 1);
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (1, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 2);
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (1, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 3);
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (1, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 4);
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (1, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 5);

-- SERVICO 2
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (2, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 1);
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (2, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 2);
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (2, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 3);
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (2, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 4);
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (2, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 5);

-- SERVICO 3
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (3, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 1);
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (3, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 2);
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (3, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 3);
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (3, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 4);
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (3, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 5);

-- SERVICO 4
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (4, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 1);
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (4, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 2);
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (4, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 3);
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (4, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 4);
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (4, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 5);

-- SERVICO 5
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (5, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 1);
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (5, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 2);
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (5, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 3);
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (5, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 4);
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (5, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 5);

-- SERVICO 6
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (6, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 1);
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (6, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 2);
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (6, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 3);
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (6, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 4);
insert into horario_servico (id_servico, hora_inicio, hora_pausa, hora_retomada, hora_final, tempo_atendimento, dia_semana) values (6, "07:00:00", "11:00:00", "13:00:00", "17:00:00", "00:20:00", 5);


-- CREATE TABLE `servico` (     
--   `id` int NOT NULL AUTO_INCREMENT,     
--   `id_servico` int NOT NULL,     
--   `tempo_atendimento` time NOT NULL,      
--   PRIMARY KEY(`id`) 
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `documentos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_agendamento` int NOT NULL,
  `caminho1` varchar(255) DEFAULT NULL,
  `caminho2` varchar(255) DEFAULT NULL,
  `caminho3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id_agendamento`) REFERENCES `agendamentos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO sua_tabela (coluna1, coluna2, coluna3, coluna4, coluna5, coluna6, coluna7, coluna8)
VALUES ('1', 'admin@gmail.com', 'Gustavo xavier farias', '7798818036600', '000.000.000-00', '000.000.000.0000-00', '$2b$12$CSboRTxziNLcXEP0OwWCTuqUFsUI2dO/G97n8TJhMgzVpADt0w19W', 'administrador');



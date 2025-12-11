create database clinicaMedicaDB;
USE clinicaMedicaDB;

create table medico (
	CRM VARCHAR(10) primary key,
    NOME VARCHAR(50) NOT NULL,
    EMAIL VARCHAR(80) NOT NULL,
    TELEFONE VARCHAR(15) UNIQUE,
    DATA_NASC DATE,
    ESPECIALIZACAO VARCHAR(25)
);

create table paciente (
	ID INT primary key,
    CPF VARCHAR(15) UNIQUE,
    NOME VARCHAR(100),
    ENDERECO VARCHAR(75),
    TELEFONE VARCHAR(15) UNIQUE,
    TIPO_EXAME VARCHAR(25)
);

create table CONSULTA (
	ID_MEDICO VARCHAR(10) NOT NULL,
	ID_PACIENTE INT NOT NULL,
    DATA_CONSULT DATE NOT NULL,
    VALOR DOUBLE NOT NULL,
    TIPO_PAG VARCHAR(20),
    foreign key (ID_MEDICO) REFERENCES MEDICO(CRM),
    foreign key (ID_PACIENTE) REFERENCES PACIENTE(ID)
);

create table EXAME (
	ID_MEDICO VARCHAR(10) NOT NULL,
	ID_PACIENTE INT NOT NULL,
    DATA_EXAME DATE,
    VALOR DOUBLE NOT NULL,
    TIPO_PAG VARCHAR(20),
    TIPO_EXAME VARCHAR(50),
    foreign key (ID_MEDICO) REFERENCES MEDICO(CRM),
    foreign key (ID_PACIENTE) REFERENCES PACIENTE(ID)
);

INSERT INTO medico (CRM, NOME, EMAIL, TELEFONE, DATA_NASC, ESPECIALIZACAO)
VALUESc
('123456-PB', 'Ana Clara Mendes', 'ana.mendes@clinica.com', '83991234567', '1982-04-15', 'Cardiologia'),
('234567-PB', 'Bruno Oliveira Santos', 'bruno.santos@clinica.com', '83999887766', '1978-11-02', 'Ortopedia'),
('345678-PB', 'Camila Rocha Lima', 'camila.lima@clinica.com', '83998765432', '1990-07-21', 'Pediatria'),
('456789-PB', 'Diego Martins Farias', 'diego.farias@clinica.com', '83998112233', '1985-02-10', 'Dermatologia'),
('567890-PB', 'Eduarda Silva Gomes', 'eduarda.gomes@clinica.com', '83999665544', '1993-09-30', 'Ginecologia');


INSERT INTO paciente (ID, CPF, NOME, ENDERECO, TELEFONE, TIPO_EXAME)
VALUES
(1, '123.456.789-01', 'Marcos Henrique Almeida', 'Rua das Flores, 120 - Centro', '83991234567', 'Raio-X'),
(2, '234.567.890-12', 'Camila Rocha Santos', 'Av. Brasil, 455 - Catolé', '83999887766', 'Hemograma'),
(3, '345.678.901-23', 'Ricardo Moura Lima', 'Rua São Pedro, 77 - Bodocongó', '83998765432', 'Ultrassom'),
(4, '456.789.012-34', 'Juliana Pereira Souza', 'Rua João Pessoa, 310 - Centro', '83998123456', 'Tomografia'),
(5, '567.890.123-45', 'Fabiano Duarte Melo', 'Rua Bahia, 92 - Palmeira', '83998654321', 'Eletrocardiograma'),
(6, '678.901.234-56', 'Larissa Figueiredo Costa', 'Rua Ceará, 200 - Monte Santo', '83999998888', 'Raio-X'),
(7, '789.012.345-67', 'Thiago Ramos Nunes', 'Rua São José, 55 - Catolé', '83991357924', 'Ressonância Magnética'),
(8, '890.123.456-78', 'Fernanda Lima Torres', 'Alameda das Acácias, 501 - Mirante', '83999554433', 'Hemograma'),
(9, '901.234.567-89', 'Pedro Henrique Dantas', 'Rua Pernambuco, 88 - Dinamérica', '83998442211', 'Ultrassom'),
(10, '012.345.678-90', 'Isabela Monteiro Dias', 'Rua Acre, 60 - Velame', '83998223344', 'Tomografia');


UPDATE paciente
SET TELEFONE = '83999999999'
WHERE ID = 2;

SELECT * FROM paciente;

SELECT NOME, ESPECIALIZACAO
FROM medico;
ALTER TABLE consulta ADD ID INT AUTO_INCREMENT PRIMARY KEY;

SELECT *
FROM consulta
WHERE ID = 1;

ALTER TABLE paciente ADD DATA_NASC DATE;

SELECT *
FROM paciente

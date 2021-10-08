CREATE DATABASE
	clinica
CHARACTER SET
	utf8
COLLATE
	utf8_general_ci;

CREATE TABLE paciente (
	id INT(11) PRIMARY KEY AUTO_INCREMENT,
    	cpf VARCHAR(14) NOT NULL,
    	nome VARCHAR(80) NOT NULL,
    	celular VARCHAR(16),
    	data_cadastro DATETIME
);

CREATE TABLE agendamento (
	id INT(11) PRIMARY KEY AUTO_INCREMENT,
    	id_paciente INT(11),
    	data DATE,
    	hora VARCHAR(5),
    	especialidade VARCHAR(25),
    	medico VARCHAR(30),
    	FOREIGN KEY(id) REFERENCES paciente(id) ON DELETE CASCADE
);
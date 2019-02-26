 USE estacionamento;
 
 CREATE TABLE CLIENTE(
	CPF Int (11) NOT NULL,
    Nome Varchar (40) NOT NULL,
    Data_nascimento Date,
    Email Varchar (40),
    Data_inclusao Date NOT NULL,
    PRIMARY KEY (CPF)
);

  CREATE TABLE VEICULO(
	Placa Int (12) NOT NULL,
    Modelo Varchar (40) NOT NULL,
    Marca Varchar (40) NOT NULL,
    PRIMARY KEY (PLACA)
);

  CREATE TABLE MARCA(
	Codigo Int (10) NOT NULL,
    Nome Varchar (40) NOT NULL,
    PRIMARY KEY (Codigo)
);

   CREATE TABLE ESTACIONAMENTOS(
    Codigo_registro Int (10) NOT NULL,
    CPF Int (11) NOT NULL,
    FOREIGN KEY (CPF) REFERENCES CLIENTE (CPF),
    Placa Int (12) NOT NULL,
    FOREIGN KEY (PLACA) REFERENCES VEICULO (PLACA),
    Entrada Datetime NOT NULL,
    Saida Datetime,
    Valor_hora Float (5,2) NOT NULL,
    Observacao Varchar (5000),
   PRIMARY KEY (Codigo_registro)
);

   CREATE TABLE RECIBOS(
    Codigo_recibo Int (10) NOT NULL,
    CPF Int (11) NOT NULL,
    FOREIGN KEY (CPF) REFERENCES CLIENTE (CPF),
    Placa Int (12) NOT NULL,
    FOREIGN KEY (PLACA) REFERENCES VEICULO (PLACA),
    Data_pagamento Date NOT NULL,
    Valor_pago Float (10,2) NOT NULL
);
	

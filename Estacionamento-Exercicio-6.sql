use estacionamento;
/*
 Adicione uma coluna CODIGO_ESTACIONAMENTO na tabela RECIBOS ligando os recibos ao estacionamento.
*/
ALTER TABLE Recibos ADD COLUMN Codigo_Estacionamento varchar(4);

UPDATE Recibos  
    SET Codigo_Estacionamento = "001"
    WHERE CPF = "1234567891";
    
UPDATE Recibos  
    SET Codigo_Estacionamento = "002"
    WHERE CPF = "0987654321";
    
    UPDATE Recibos  
    SET Codigo_Estacionamento = "003"
    WHERE CPF = "6754738291";
    
UPDATE Recibos  
    SET Codigo_Estacionamento = "004"
    WHERE CPF = "4378475738";
    
/*
 Escreva uma consulta para mostrar a quantidade de estacionamentos realizados no mês passado.
*/

SELECT MONTH(Entrada) as ‘MÊS’, COUNT(*) 
FROM estacionamentos
GROUP BY MONTH(entrada);


/*
 Escreva uma consulta que mostre o código do estacionamento e o total pago.
*/

SELECT Valor_pago, Codigo_Estacionamento
FROM RECIBOS
WHERE Codigo_Estacionamento IS NOT NULL;

/*
Escreva uma consulta que mostre a soma do total pago em estacionamentos no mês atual.
*/

SELECT SUM(Valor_pago) AS "VALOR PAGO ÚLTIMO MÊS"
FROM RECIBOS
WHERE (Data_pagamento BETWEEN 
    SUBDATE(CURDATE(), INTERVAL 1 MONTH)
    AND
    CURDATE()
);

/*
Escreva uma consulta que mostre:
a soma do total pago no mês
a quantidade de estacionamentos
        em cada mês dado um ano como parâmetro.
*/

SELECT MONTH(Data_pagamento) as "Mês",
SUM(Valor_pago) as "Valor pago"
FROM Recibos
GROUP BY MONTH(Data_pagamento);

/*
Escreva uma consulta que retorne a quantidade de estacionamentos por nome de modelo de veículo.
*/

SELECT COUNT(*), veiculo.modelo
FROM estacionamentos, veiculo
WHERE veiculo.placa = estacionamentos.placa
GROUP BY veiculo.modelo;

/*
 Escreva uma consulta que retorne a quantidade de estacionamentos por nome de marca de veículo.
*/

SELECT COUNT(*), veiculo.marca
FROM estacionamentos, veiculo
WHERE veiculo.placa = estacionamentos.placa
GROUP BY veiculo.marca;

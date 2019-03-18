USE estacionamento;
/*
ex 5.1
*/
SELECT Nome,Email FROM cliente;

/*
ex 5.2
*/
SELECT estacionamentos.Entrada, cliente.CPF, cliente.Nome, cliente.Email, recibos.Placa, veiculo.Modelo, veiculo.Marca
	FROM estacionamentos, cliente, recibos, veiculo
	WHERE estacionamentos.CPF = cliente.CPF
    AND estacionamentos.nome = cliente.nome
    AND recibos.placa = cliente.placa
    AND veiculo.placa = cliente.placa;
    
    

INSERT INTO veiculo(placa, modelo, marca) VALUES ("AAA1111", "Palio", "Fiat");
INSERT INTO veiculo(placa, modelo, marca) VALUES ("BBB2222", "Fiesta", "Ford");
INSERT INTO veiculo(placa, modelo, marca) VALUES ("CCC3333", "Cruze", "Chevrolet");
INSERT INTO veiculo(placa, modelo, marca) VALUES ("DDD4444", "HB20", "Hyundai");

INSERT INTO cliente(CPF, nome, data_inclusao) VALUES ("1234567891", "Cleiton Cleber", "2019-03-11");
INSERT INTO cliente(CPF, nome, data_inclusao) VALUES ("0987654321", "Jorge Juca", "2019-03-12");
INSERT INTO cliente(CPF, nome, data_inclusao) VALUES ("6754738291", "Alonso Lonso", "2019-03-13");
INSERT INTO cliente(CPF, nome, data_inclusao) VALUES ("4378475738", "Robson Bson", "2019-03-14");

INSERT INTO estacionamentos(Codigo_registro, CPF, Placa, Entrada, Saida, Valor_hora, Observacao) VALUES ("1234", "1234567891", "AAA1111", "2019-03-11 08:00:00", "2019-03-11 08:30:00", 3.00, "Batatunhaa com arroz");
INSERT INTO estacionamentos(Codigo_registro, CPF, Placa, Entrada, Saida, Valor_hora, Observacao) VALUES ("4321", "0987654321", "BBB2222", "2019-03-11 08:10:00", "2019-03-11 08:40:00", 3.00, "Batatunhaa com feijão");
INSERT INTO estacionamentos(Codigo_registro, CPF, Placa, Entrada, Saida, Valor_hora, Observacao) VALUES ("5678", "6754738291", "CCC3333", "2019-03-11 08:20:00", "2019-03-11 08:50:00", 3.00, "Batatunhaa com macarrão");
INSERT INTO estacionamentos(Codigo_registro, CPF, Placa, Entrada, Saida, Valor_hora, Observacao) VALUES ("8765", "4378475738", "DDD4444", "2019-03-11 08:30:00", "2019-03-11 09:00:00", 3.00, "Batatunhaa com salada");

INSERT INTO recibos(Codigo_recibo, CPF, Placa, Data_pagamento, Valor_pago) VALUES ("0001", "1234567891", "AAA1111", "2019-03-11", 3.00);
INSERT INTO recibos(Codigo_recibo, CPF, Placa, Data_pagamento, Valor_pago) VALUES ("0002", "0987654321", "BBB2222", "2019-03-11", 3.00);
INSERT INTO recibos(Codigo_recibo, CPF, Placa, Data_pagamento, Valor_pago) VALUES ("0003", "6754738291", "CCC3333", "2019-03-11", 3.00);
INSERT INTO recibos(Codigo_recibo, CPF, Placa, Data_pagamento, Valor_pago) VALUES ("0004", "4378475738", "DDD4444", "2019-03-11", 3.00);



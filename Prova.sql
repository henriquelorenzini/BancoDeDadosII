1- use prova;

CREATE TABLE CATEGORIA(
	ID INT NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    PRIMARY KEY (ID)
);

    CREATE TABLE CLIENTE(
		ID INT NOT NULL,
		Nome VARCHAR(200) NOT NULL,
		PRIMARY KEY (ID)
	);

	CREATE TABLE VENDEDOR(
		ID INT NOT NULL,
        Nome VARCHAR(200),
        PRIMARY KEY (ID)
	);

CREATE TABLE PRODUTO(
	ID INT NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Categoria_id INT NOT NULL,
    FOREIGN KEY (Categoria_id) REFERENCES CATEGORIA (ID),
    PRIMARY KEY (ID)
    );
    
      CREATE TABLE PEDIDO(
		ID INT NOT NULL,
        Data_pedido DATETIME NOT NULL,
        Vendedor_id INT NOT NULL,
        FOREIGN KEY (Vendedor_id) REFERENCES VENDEDOR (ID),
        Cliente_id INT NOT NULL,
        FOREIGN KEY (Cliente_id) REFERENCES CLIENTE (ID),
        PRIMARY KEY (ID)
	);
    
CREATE TABLE PEDIDOITEM(
	ID INT NOT NULL,
    Produto_id INT NOT NULL,
    FOREIGN KEY (Produto_id) REFERENCES PRODUTO (ID),
    Pedido_id INT NOT NULL,
    FOREIGN KEY (Pedido_id) REFERENCES PEDIDO (ID),
    Quantidade FLOAT NOT NULL,
	Valor_unitario DECIMAL NOT NULL,
    PRIMARY KEY (ID)
    );
    
    
	
2- SELECT * FROM PRODUTO
	ORDER BY NOME;

3- SELECT * FROM VENDEDOR;

4- SELECT * FROM VENDEDOR;

5- SELECT
	produto.id as "Codigo do produto",
    produto.nome as "Nome do produto",
    categoria.nome as "Nome da Categoria"
    FROM 
    PRODUTO produto,
    CATEGORIA categoria
    WHERE produto.categoria_id = categoria.id;


6- SELECT 
    categoria.nome AS "Nome da categoria", 
    COUNT(*) AS "Quantidade de produtos" 
    FROM PRODUTO produto
    INNER JOIN CATEGORIA categoria
    WHERE CATEGORIA.id = PRODUTO.categoria_id 
    GROUP BY produto.categoria_id;

7 -SELECT 
	pedido.Data_Pedido AS "Data do Pedido", vendedor.Nome AS "Nome do vendedor", 
	cliente.Nome AS "Nome do cliente", 
	(pedidoItem.valor_unitario * pedidoItem.quantidade) AS "Valor total do pedido"
 FROM PEDIDO pedido 
	INNER JOIN VENDEDOR vendedor 
	ON VENDEDOR.id = pedido.vendedor_id
    
	INNER JOIN CLIENTE cliente 
	ON cliente.id = pedido.cliente_id 
    
	INNER JOIN PEDIDOITEM pedidoItem 
	WHERE pedidoItem.pedido_id = pedido.id;
	
8- SELECT MONTH(pedido.Data_Pedido) AS "Mês", cliente.Nome AS "Nome do cliente", 
COUNT(*) AS "Quantidade de pedidos" 

FROM CLIENTE cliente 

INNER JOIN PEDIDO pedido WHERE PEDIDO.cliente_id = CLIENTE.id 
GROUP BY cliente.id

9- SELECT MONTH(pedido.Data_Pedido) AS "Mês", 
	VENDEDOR.Nome AS "Nome do vendedor", 
	SUM(pedidoItem.valor_unitario * pedidoItem.quantidade) AS "Valor total de pedidos no mês" 
	FROM VENDEDOR vendedor 
	
    INNER JOIN PEDIDO pedido 
    ON PEDIDO.vendedor_id = vendedor.id 
    
	INNER JOIN PEDIDOITEM pedidoItem 
    ON PEDIDOITEM.pedido_id = pedido.id
    
	GROUP BY vendedor.id;
	
10-  SELECT produto.nome AS "Nome do produto", 
    pedidoItem.quantidade AS "Quantidade" 
    
    FROM PEDIDOITEM pedidoItem
    
    INNER JOIN PRODUTO produto
    ON PRODUTO.id = pedidoItem.produto_id
    
    INNER JOIN PEDIDO pedido
    ON PEDIDO.id = pedidoItem.pedido_id 
    
    WHERE PEDIDO.Data_Pedido BETWEEN "2019-01-01 00:00:00" AND "2019-04-01 00:00:00"
    GROUP BY PEDIDOITEM.quantidade DESC;

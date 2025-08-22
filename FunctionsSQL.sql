CREATE TABLE CLIENTES(
ID_CLIENTE INT PRIMARY KEY,
NOME VARCHAR(100) CONSTRAINT NN_Clientes_Nome NOT NULL, -- constraint serve para dar nome a uma regra aplicada de determinada coluna: CONSTRAINT RegraAplicada_NomeTabela_NomeColuna/Parametro
EMAIL VARCHAR(150) NULL,
DATA_CADASTRO DATE CONSTRAINT NN_Clintes_DataCadastro NOT NULL -- o constraint serve para gravar o nome dessa regra, caso queira excluir depois ou alterar mais facilmente.
);

CREATE TABLE PRODUTOS(
ID_PRODUTO INT PRIMARY KEY,
NOME VARCHAR(100) NOT NULL,
PRECO DECIMAL(10,2) CONSTRAINT DF_Produtos_Preco DEFAULT 0.00 -- default serve para definir um valor padrão quando ocorre de você não inserir
);

INSERT INTO PRODUTOS (ID_PRODUTO, NOME, PRECO) VALUES
(2, 'Notebook Dell', 3500.00),
(3, 'Smartphone Samsung', 2200.50),
(4, 'Teclado Mecânico', 450.75),
(5, 'Monitor 24 polegadas', 850.90),
(6, 'Mouse Sem Fio', 120.00),
(7, 'Cadeira Gamer', 980.00),
(8, 'Headset com Microfone', 230.00),
(9, 'Webcam HD', 190.00),
(10, 'Impressora Multifuncional', 650.00),
(11, 'Pen Drive 64GB', 75.00);


INSERT INTO PRODUTOS(ID_PRODUTO, NOME) 
VALUES(1, 'BALDE');

SELECT * FROM PRODUTOS;
SELECT * FROM CLIENTES;

-- DROP CONSTRAINT : SERVE PARA EXCLUIR UMA CONSTRAINT

DROP TABLE CLIENTES; -- para excluir determinada tabela

CREATE TABLE CLIENTES(
ID_CLIENTE INT PRIMARY KEY,
NOME VARCHAR(100) CONSTRAINT NN_Clientes_Nome NOT NULL, -- constraint serve para dar nome a uma regra aplicada de determinada coluna: CONSTRAINT RegraAplicada_NomeTabela_NomeColuna/Parametro
EMAIL VARCHAR(150) NULL,
DATA_CADASTRO DATE CONSTRAINT NN_Clintes_DataCadastro NOT NULL, -- o constraint serve para gravar o nome dessa regra, caso queira excluir depois ou alterar mais facilmente.
CIDADE VARCHAR(50)
);

CREATE PROCEDURE sp_ObterClientesPorCidade -- cirando uma função, o sp vai indicar isso: sp_NomeDoQueAFuncaoVaiFazer
	@Cidade VARCHAR(50) -- parâmetro que essa função vai receber ("@parametro")
AS
BEGIN
	SELECT ID_CLIENTE, NOME, EMAIL -- oque ela vai te trazer
	FROM CLIENTES -- da onde ela vai trazer/pegar
	WHERE CIDADE = @Cidade; -- condição, a cidade dverá ser igual ao parâmetro que você inserir.
END; -- fim

INSERT INTO CLIENTES (ID_CLIENTE, NOME, EMAIL, DATA_CADASTRO, CIDADE)
VALUES (1, 'João Silva', 'joao.silva@email.com', '2025-08-22', 'São Paulo');

INSERT INTO CLIENTES (ID_CLIENTE, NOME, EMAIL, DATA_CADASTRO, CIDADE)
VALUES (2, 'Maria Oliveira', 'maria.oliveira@email.com', '2025-08-21', 'Rio de Janeiro');

INSERT INTO CLIENTES (ID_CLIENTE, NOME, EMAIL, DATA_CADASTRO, CIDADE)
VALUES (3, 'Carlos Souza', NULL, '2025-08-20', 'Belo Horizonte');

INSERT INTO CLIENTES (ID_CLIENTE, NOME, EMAIL, DATA_CADASTRO, CIDADE)
VALUES (4, 'Ana Paula', 'ana.paula@email.com', '2025-08-19', 'Curitiba');

INSERT INTO CLIENTES (ID_CLIENTE, NOME, EMAIL, DATA_CADASTRO, CIDADE)
VALUES (5, 'Fernanda Lima', 'fernanda.lima@email.com', '2025-08-18', 'Porto Alegre');

INSERT INTO CLIENTES (ID_CLIENTE, NOME, EMAIL, DATA_CADASTRO, CIDADE) VALUES
(6, 'Lucas Martins', 'lucas.martins@email.com', '2025-08-17', 'Brasília'),
(7, 'Patrícia Gomes', 'patricia.gomes@email.com', '2025-08-16', 'Salvador'),
(8, 'Eduardo Lima', NULL, '2025-08-15', 'Fortaleza'),
(9, 'Beatriz Rocha', 'beatriz.rocha@email.com', '2025-08-14', 'Manaus'),
(10, 'Rafael Alves', 'rafael.alves@email.com', '2025-08-13', 'Recife'),
(11, 'Juliana Ribeiro', 'juliana.ribeiro@email.com', '2025-08-12', 'Belém'),
(12, 'Gabriel Costa', NULL, '2025-08-11', 'Goiânia'),
(13, 'Camila Fernandes', 'camila.fernandes@email.com', '2025-08-10', 'Campinas'),
(14, 'Bruno Azevedo', 'bruno.azevedo@email.com', '2025-08-09', 'São Luís'),
(15, 'Larissa Teixeira', 'larissa.teixeira@email.com', '2025-08-08', 'Natal'),
(16, 'André Mendes', NULL, '2025-08-07', 'Maceió'),
(17, 'Renata Pires', 'renata.pires@email.com', '2025-08-06', 'Teresina'),
(18, 'Thiago Nogueira', 'thiago.nogueira@email.com', '2025-08-05', 'João Pessoa'),
(19, 'Tatiane Carvalho', 'tatiane.carvalho@email.com', '2025-08-04', 'Florianópolis'),
(20, 'Fernando Barros', 'fernando.barros@email.com', '2025-08-03', 'Vitória'),
(21, 'Aline Moraes', NULL, '2025-08-02', 'Cuiabá'),
(22, 'Diego Freitas', 'diego.freitas@email.com', '2025-08-01', 'Campo Grande'),
(23, 'Elaine Souza', 'elaine.souza@email.com', '2025-07-31', 'Aracaju'),
(24, 'Marcelo Duarte', 'marcelo.duarte@email.com', '2025-07-30', 'Porto Velho'),
(25, 'Natália Andrade', 'natalia.andrade@email.com', '2025-07-29', 'Macapá'),
(26, 'Vitor Correia', NULL, '2025-07-28', 'Boa Vista'),
(27, 'Simone Brito', 'simone.brito@email.com', '2025-07-27', 'Palmas'),
(28, 'Otávio Ramos', 'otavio.ramos@email.com', '2025-07-26', 'Uberlândia'),
(29, 'Isabela Farias', 'isabela.farias@email.com', '2025-07-25', 'Ribeirão Preto'),
(30, 'Murilo Batista', 'murilo.batista@email.com', '2025-07-24', 'Sorocaba'),
(31, 'Catarina Prado', NULL, '2025-07-23', 'Niterói'),
(32, 'Ricardo Cunha', 'ricardo.cunha@email.com', '2025-07-22', 'São José dos Campos'),
(33, 'Monique Barcellos', 'monique.barcellos@email.com', '2025-07-21', 'Santos'),
(34, 'Alexandre Reis', 'alexandre.reis@email.com', '2025-07-20', 'Bauru'),
(35, 'Jéssica Assis', 'jessica.assis@email.com', '2025-07-19', 'Londrina');


EXEC sp_ObterClientesPorCidade 'São Paulo'; -- chamando a função e passando o parãmetro, no caso, a cidade que você quer.


CREATE FUNCTION CalcularDesconto(@Preco DECIMAL(13,2), @Porcentagem INT) -- criação de uma função, e passando os parâmetros(e tipo de dado) que você quer que receba
RETURNS DECIMAL(13,2) -- retorna esse valor nesse formato

BEGIN
	RETURN @Preco - @Preco / 100 * @Porcentagem -- aqui começa oque vai se fazer nessa função, no caso, o cálculo de desconto
END


SELECT 
	NOME, -- selecionando os parâmetros que quer exibir 
	PRECO, -- selecionando umâ coluna que já contém os parâmetros que vai precisar na função.
	dbo.CalcularDesconto(Preco, 50) PrecoComDesconto -- chamando a função e passando os parâmetros(o preco do produto(no caso a coluna que já armazena isso), e o valor do desconto que pode variar, no caso 50%)
	--você também põe o nome da tabela que irá armazenar esses descontos, no caso, "PrecoComDesconto"
FROM PRODUTOS 


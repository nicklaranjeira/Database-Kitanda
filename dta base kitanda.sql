CREATE DATABASE kitanda;
USE kitanda;

-- table VENDEDORES
CREATE TABLE vendedores (
	id_vendedor INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR (45) NOT NULL,
	email VARCHAR (45) NOT NULL,
	cidade VARCHAR (45) NOT NULL,
	estado VARCHAR (45) NOT NULL,
	data_cadastro DATE NOT NULL);

-- Table PRODUTOS
CREATE TABLE produtos(
	id_produto INT(4) AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(45) NOT NULL,
    preco DECIMAL(5,2) NOT NULL,
    categoria VARCHAR(45) NOT NULL,
    id_vendedor INT(4) NOT NULL,
    FOREIGN KEY (id_vendedor) REFERENCES vendedores(id_vendedor)
);


-- Table VENDAS
CREATE TABLE vendas(
    id_venda INT(4) AUTO_INCREMENT PRIMARY KEY,
    id_produto INT(4) NOT NULL,
    quantidade INT(4) NOT NULL,
    data_venda DATE NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);
-- Povoamento da tabela vendedores
INSERT INTO vendedores (id_vendedor, nome, email, cidade, estado, data_cadastro) VALUES
(1, 'Mariana Silva', 'mariana.silva@empresa.com', 'São Paulo', 'SP', '2024-01-10'),
(2, 'Carlos Souza', 'carlos.souza@empresa.com', 'Rio de Janeiro', 'RJ', '2024-02-05'),
(3, 'Fernanda Oliveira', 'fernanda.oliveira@empresa.com', 'Curitiba', 'PR', '2024-03-12'),
(4, 'João Pereira', 'joao.pereira@empresa.com', 'Belo Horizonte', 'MG', '2024-04-20'),
(5, 'Lucas Santos', 'lucas.santos@empresa.com', 'Porto Alegre', 'RS', '2024-05-15'),
(6, 'Amanda Costa', 'amanda.costa@empresa.com', 'Salvador', 'BA', '2024-06-01'),
(7, 'Rafael Almeida', 'rafael.almeida@empresa.com', 'Florianópolis', 'SC', '2024-06-10'),
(8, 'Patrícia Lima', 'patricia.lima@empresa.com', 'Fortaleza', 'CE', '2024-07-08'),
(9, 'Gustavo Rocha', 'gustavo.rocha@empresa.com', 'Recife', 'PE', '2024-07-20'),
(10, 'Beatriz Nunes', 'beatriz.nunes@empresa.com', 'Campinas', 'SP', '2024-08-02'),
(11, 'Thiago Barbosa', 'thiago.barbosa@empresa.com', 'Natal', 'RN', '2024-08-15'),
(12, 'Carla Mendes', 'carla.mendes@empresa.com', 'João Pessoa', 'PB', '2024-09-01'),
(13, 'Eduardo Lima', 'eduardo.lima@empresa.com', 'Vitória', 'ES', '2024-09-10'),
(14, 'Natália Ramos', 'natalia.ramos@empresa.com', 'Belém', 'PA', '2024-09-25'),
(15, 'Rodrigo Teixeira', 'rodrigo.teixeira@empresa.com', 'Manaus', 'AM', '2024-10-03'),
(16, 'Juliana Farias', 'juliana.farias@empresa.com', 'São Luís', 'MA', '2024-10-12'),
(17, 'André Castro', 'andre.castro@empresa.com', 'Aracaju', 'SE', '2024-10-20'),
(18, 'Camila Pinto', 'camila.pinto@empresa.com', 'Teresina', 'PI', '2024-10-25'),
(19, 'Bruno Fernandes', 'bruno.fernandes@empresa.com', 'Campo Grande', 'MS', '2024-10-28'),
(20, 'Larissa Duarte', 'larissa.duarte@empresa.com', 'Maceió', 'AL', '2024-10-30');
select * from vendedores;

-- Povoamento da tabela produtos
INSERT INTO produtos (nome_produto, preco, categoria, id_vendedor) VALUES
('Tomate Italiano', 49.90, 'Legumes', 1),
('Batata Inglesa', 129.90, 'Legumes', 2),
('Cenoura', 199.90, 'Legumes', 3),
('Abobrinha Verde', 349.90, 'Legumes', 4),
('Alface Crespa', 159.90, 'Verduras', 5),
('Couve Manteiga', 39.90, 'Verduras', 6),
('Espinafre', 89.90, 'Verduras', 7),
('Maçã Fuji', 139.90, 'Frutas', 8),
('Banana Nanica', 189.90, 'Frutas', 9),
('Laranja Pera', 99.90, 'Frutas', 10),
('Melancia Inteira', 249.90, 'Frutas', 11),
('Abacaxi Pérola', 179.90, 'Frutas', 12),
('Manga Palmer', 59.90, 'Frutas', 13),
('Pepino Japonês', 119.90, 'Legumes', 14),
('Chuchu', 89.90, 'Legumes', 15),
('Beterraba', 29.90, 'Legumes', 16),
('Alface Americana', 149.90, 'Verduras', 17),
('Rúcula', 34.90, 'Verduras', 18),
('Berinjela', 199.90, 'Legumes', 19),
('Pimentão Vermelho', 159.90, 'Legumes', 20),
('Cebolinha', 79.90, 'Verduras', 1),
('Salsa', 69.90, 'Verduras', 2),
('Limão Tahiti', 59.90, 'Frutas', 3),
('Mamão Formosa', 229.90, 'Frutas', 4),
('Uva Thompson', 179.90, 'Frutas', 5),
('Melão Amarelo', 89.90, 'Frutas', 6),
('Abacate', 49.90, 'Frutas', 7),
('Repolho Roxo', 299.90, 'Verduras', 8),
('Batata Doce', 219.90, 'Legumes', 9),
('Abóbora Cabotiá', 99.90, 'Legumes', 10),
('Couve-flor', 19.90, 'Verduras', 11),
('Brócolis Ninja', 259.90, 'Verduras', 12),
('Morango', 189.90, 'Frutas', 13),
('Maracujá', 109.90, 'Frutas', 14),
('Kiwi', 329.90, 'Frutas', 15),
('Almeirão', 79.90, 'Verduras', 16),
('Rabanete', 69.90, 'Legumes', 17),
('Agrião', 39.90, 'Verduras', 18),
('Cenoura Baby', 39.90, 'Legumes', 19),
('Tomate Cereja', 249.90, 'Legumes', 20),
('Lima-da-pérsia', 44.90, 'Frutas', 1),
('Tangerina Ponkan', 59.90, 'Frutas', 2),
('Pera Williams', 199.90, 'Frutas', 3),
('Melancia Mini', 139.90, 'Frutas', 4),
('Morango Orgânico', 119.90, 'Frutas', 5),
('Coco Verde', 29.90, 'Frutas', 6),
('Alface Lisa', 399.90, 'Verduras', 7),
('Couve-flor Mini', 169.90, 'Verduras', 8),
('Beterraba Orgânica', 149.90, 'Legumes', 9),
('Banana Prata', 39.90, 'Frutas', 10);
select * from produtos;


-- Povoamento da tabela vendas
INSERT INTO vendas (id_produto, quantidade, data_venda) VALUES
(1, 10, '2024-01-01'),
(2, 8, '2024-01-01'),
(3, 12, '2024-01-02'),
(4, 9, '2024-01-02'),
(5, 11, '2024-01-03'),
(6, 7, '2024-01-03'),
(7, 13, '2024-01-04'),
(8, 6, '2024-01-04'),
(9, 10, '2024-01-05'),
(10, 15, '2024-01-05'),
(11, 8, '2024-01-06'),
(12, 5, '2024-01-06'),
(13, 9, '2024-01-07'),
(14, 7, '2024-01-07'),
(15, 14, '2024-01-08'),
(16, 11, '2024-01-08'),
(17, 8, '2024-01-09'),
(18, 6, '2024-01-09'),
(19, 12, '2024-01-10'),
(20, 9, '2024-01-10'),
(21, 10, '2024-01-11'),
(22, 5, '2024-01-11'),
(23, 7, '2024-01-12'),
(24, 13, '2024-01-12'),
(25, 9, '2024-01-13'),
(26, 11, '2024-01-13'),
(27, 8, '2024-01-14'),
(28, 10, '2024-01-14'),
(29, 12, '2024-01-15'),
(30, 6, '2024-01-15'),
(31, 15, '2024-01-16'),
(32, 7, '2024-01-16'),
(33, 9, '2024-01-17'),
(34, 10, '2024-01-17'),
(35, 11, '2024-01-18'),
(36, 8, '2024-01-18'),
(37, 6, '2024-01-19'),
(38, 13, '2024-01-19'),
(39, 5, '2024-01-20'),
(40, 9, '2024-01-20'),
(41, 14, '2024-01-21'),
(42, 7, '2024-01-21'),
(43, 8, '2024-01-22'),
(44, 12, '2024-01-22'),
(45, 9, '2024-01-23'),
(46, 11, '2024-01-23'),
(47, 5, '2024-01-24'),
(48, 6, '2024-01-24'),
(49, 10, '2024-01-25'),
(50, 13, '2024-01-25'),
(1, 7, '2024-01-26'),
(2, 9, '2024-01-26'),
(3, 12, '2024-01-27'),
(4, 5, '2024-01-27'),
(5, 11, '2024-01-28'),
(6, 8, '2024-01-28'),
(7, 10, '2024-01-29'),
(8, 6, '2024-01-29'),
(9, 14, '2024-01-30'),
(10, 9, '2024-01-30'),
(11, 13, '2024-01-31'),
(12, 7, '2024-01-31'),
(13, 8, '2024-02-01'),
(14, 11, '2024-02-01'),
(15, 10, '2024-02-02'),
(16, 5, '2024-02-02'),
(17, 9, '2024-02-03'),
(18, 6, '2024-02-03'),
(19, 13, '2024-02-04'),
(20, 7, '2024-02-04'),
(21, 8, '2024-02-05'),
(22, 9, '2024-02-05'),
(23, 11, '2024-02-06'),
(24, 14, '2024-02-06'),
(25, 10, '2024-02-07'),
(26, 5, '2024-02-07'),
(27, 12, '2024-02-08'),
(28, 7, '2024-02-08'),
(29, 9, '2024-02-09'),
(30, 8, '2024-02-09'),
(31, 6, '2024-02-10'),
(32, 13, '2024-02-10'),
(33, 10, '2024-02-11'),
(34, 12, '2024-02-11'),
(35, 9, '2024-02-12'),
(36, 11, '2024-02-12'),
(37, 14, '2024-02-13'),
(38, 8, '2024-02-13'),
(39, 10, '2024-02-14'),
(40, 5, '2024-02-14'),
(41, 9, '2024-02-15'),
(42, 7, '2024-02-15'),
(43, 12, '2024-02-16'),
(44, 6, '2024-02-16'),
(45, 10, '2024-02-17'),
(46, 11, '2024-02-17'),
(47, 8, '2024-02-18'),
(48, 9, '2024-02-18'),
(49, 14, '2024-02-19'),
(50, 13, '2024-02-19'),
(1, 7, '2024-02-20'),
(2, 10, '2024-02-20'),
(3, 12, '2024-02-21'),
(4, 8, '2024-02-21'),
(5, 11, '2024-02-22'),
(6, 6, '2024-02-22'),
(7, 9, '2024-02-23'),
(8, 13, '2024-02-23'),
(9, 7, '2024-02-24'),
(10, 15, '2024-02-24'),
(11, 9, '2024-02-25'),
(12, 10, '2024-02-25'),
(13, 12, '2024-02-26'),
(14, 8, '2024-02-26'),
(15, 7, '2024-02-27'),
(16, 11, '2024-02-27'),
(17, 13, '2024-02-28'),
(18, 6, '2024-02-28'),
(19, 9, '2024-02-29'),
(20, 8, '2024-02-29'),
(21, 10, '2024-03-01'),
(22, 7, '2024-03-01'),
(23, 12, '2024-03-02'),
(24, 14, '2024-03-02'),
(25, 11, '2024-03-03'),
(26, 9, '2024-03-03'),
(27, 8, '2024-03-04'),
(28, 10, '2024-03-04'),
(29, 7, '2024-03-05'),
(30, 13, '2024-03-05'),
(31, 5, '2024-03-06'),
(32, 12, '2024-03-06'),
(33, 9, '2024-03-07'),
(34, 6, '2024-03-07'),
(35, 10, '2024-03-08'),
(36, 14, '2024-03-08'),
(37, 7, '2024-03-09'),
(38, 11, '2024-03-09'),
(39, 9, '2024-03-10'),
(40, 8, '2024-03-10'),
(41, 13, '2024-03-11'),
(42, 6, '2024-03-11'),
(43, 12, '2024-03-12'),
(44, 9, '2024-03-12'),
(45, 8, '2024-03-13'),
(46, 10, '2024-03-13'),
(47, 7, '2024-03-14'),
(48, 5, '2024-03-14'),
(49, 11, '2024-03-15'),
(50, 13, '2024-03-15');
select * from vendas;


-- VIEWS 
-- 1
CREATE VIEW vw_produtos_detalhados AS
SELECT
A.nome_produto AS Produto,
A.preco AS Preço,
B.nome AS Nome,
B.cidade AS Cidade,
B.estado AS Estado,
A.categoria AS Categoria
FROM
produtos AS A
LEFT JOIN
vendedores AS B ON B.id_vendedor = A.id_vendedor;
SELECT * FROM vw_produtos_detalhados;

-- 2
CREATE VIEW vw_total_vendas_por_vendedor as
SELECT
Vr.nome as Nome_Vendedor,
sum(Va.quantidade * P.preco) as Total_Venda
FROM
vendedores as Vr
LEFT JOIN
produtos as P on P.id_vendedor = Vr.id_vendedor
LEFT JOIN
vendas as Va on P.id_produto = Va.id_produto
GROUP BY
Vr.nome
ORDER BY Total_Venda;
SELECT * FROM vw_total_vendas_por_vendedor;

-- 3
CREATE VIEW vw_vendas_mensais
AS SELECT 
		B.nome AS NOME_VENDEDOR,
        DATE_FORMAT(A.data_venda, '%Y-%m') AS MES_E_ANO,
        sum(c.preco * a.quantidade) AS TOTAL_DE_VENDAS
        FROM vendas as A 
        LEFT JOIN produtos as C
			ON A.id_produto = C.id_produto -- faz um filtro de produtos vendidos
        LEFT JOIN vendedores as B
			ON B.id_vendedor = C.id_vendedor -- pega o id do vendedor do seu respectivo produto vendido
GROUP BY b.nome, DATE_FORMAT(A.data_venda, '%Y-%m');
SELECT * FROM vw_vendas_mensais;

-- 4
CREATE VIEW vw_produtos_por_categoria AS
SELECT
    A.categoria AS Categoria,
    COUNT(A.id_produto) AS Total_Produtos,
	ROUND(AVG(A.preco), 2) AS Preco_Medio

FROM
    produtos AS A
GROUP BY
    A.categoria;
SELECT * FROM vw_produtos_por_categoria;

-- PROCEDURES 
-- 1
DELIMITER $$
CREATE PROCEDURE sp_cadastrar_vendedor (
IN a_nome VARCHAR(45),
IN a_email VARCHAR (45),
IN a_cidade VARCHAR (45),
IN a_estado VARCHAR (45))
BEGIN
INSERT INTO vendedores (nome, email, cidade, estado, data_cadastro)
VALUES (a_nome, a_email, a_cidade, a_estado, curdate());
END $$
DELIMITER ;
select * from vendedores;
call sp_cadastrar_vendedor("Roberta Carla", "roberta@gmail.com", "Jundiaí", "SP" );

-- 2
DELIMITER $$
CREATE PROCEDURE sp_registrar_venda(
	IN P_id_produto INT(4),
    IN P_quantidade INT(4),
    OUT MENSAGEM VARCHAR(45)
)
begin
	DECLARE produto_existe INT(4);
    SELECT 
		COUNT(id_produto)INTO produto_existe 
	FROM PRODUTOS
    WHERE P_id_produto = id_produto;
    IF produto_existe < 0 or produto_existe = 0 THEN
		SET MENSAGEM = "O produto não existe";
        SELECT MENSAGEM;
    ELSE
		INSERT INTO vendas(id_produto, quantidade, data_venda)
		values(P_id_produto, P_quantidade, curdate());
        select * from vendas;
	END IF;
end $$
delimiter ;

set @MENSAGEM = "";
call sp_registrar_venda('54', '6', @MENSAGEM);
drop procedure sp_registrar_venda;

-- 3
DELIMITER $$
CREATE PROCEDURE sp_atualizar_preco_categoria(
	IN a_categoria VARCHAR(45),
	IN a_percentual DECIMAL (5,2))
BEGIN
	UPDATE produtos as a
	SET preco = preco * (1 + a_percentual/ 100)
WHERE categoria = a_categoria;
END $$
DELIMITER ;
CALL sp_atualizar_preco_categoria('Frutas', 10);
select * from produtos;


-- Querys
-- 1
SELECT
  p.nome_produto AS Produto,
  SUM(v.quantidade) AS Total_Vendas
FROM
  produtos p
  INNER JOIN vendas v ON p.id_produto = v.id_produto
GROUP BY
  p.nome_produto
ORDER BY
  Total_Vendas DESC;
  
-- 2
SELECT
    v.nome AS nome_vendedor,
    SUM(p.preco * ve.quantidade) AS total_faturado
FROM vendas AS ve
JOIN produtos AS p ON ve.id_produto = p.id_produto
JOIN vendedores AS v ON p.id_vendedor = v.id_vendedor
GROUP BY v.id_vendedor, v.nome
ORDER BY total_faturado DESC
LIMIT 1;

-- 3
SELECT
    ve.nome AS nome_vendedor,
    p.categoria AS categoria_produto,
    SUM(v.quantidade * p.preco) AS total_vendas,
    ROUND(
        (SUM(v.quantidade * p.preco) * 100) /
        (
            SELECT SUM(v2.quantidade * p2.preco)
            FROM vendas AS v2
            JOIN produtos AS p2 ON v2.id_produto = p2.id_produto
            WHERE p2.categoria = p.categoria
        ),
        2
    ) AS percentual_participacao
FROM
    vendas AS v
    JOIN produtos AS p ON v.id_produto = p.id_produto
    JOIN vendedores AS ve ON p.id_vendedor = ve.id_vendedor
GROUP BY
    ve.nome, p.categoria
ORDER BY
    p.categoria,
    total_vendas DESC;

-- 4
SELECT -- imprime as informações da query principal
atual.nome_vendedor,
DATE_FORMAT(atual.data_venda, '%Y-%m') AS MES_E_ANO,
atual.total_vendas,
ROUND(
((atual.total_vendas - anterior.total_vendas) / anterior.total_vendas) * 100, 2
) AS variacao_percentual -- calculo do percentual
FROM ( -- pega o mes atual
SELECT
v.id_vendedor,
v.nome AS nome_vendedor,
MAX(vd.data_venda) AS data_venda, -- data mais recente
SUM(p.preco * vd.quantidade) AS total_vendas
FROM vendas AS vd
JOIN produtos AS p ON vd.id_produto = p.id_produto
JOIN vendedores AS v ON p.id_vendedor = v.id_vendedor
GROUP BY v.id_vendedor, date_format(vd.data_venda, '%Y-%m')
) AS atual
JOIN ( -- junta atual com anterior pega mes anterior
SELECT
v.id_vendedor,
MAX(vd.data_venda) AS data_venda, -- data mais recente
SUM(p.preco * vd.quantidade) AS total_vendas
FROM vendas AS vd
JOIN produtos AS p ON vd.id_produto = p.id_produto
JOIN vendedores AS v ON p.id_vendedor = v.id_vendedor
GROUP BY v.id_vendedor, date_format(vd.data_venda, '%Y-%m')
) AS anterior
ON atual.id_vendedor = anterior.id_vendedor
AND (
DATE_FORMAT(atual.data_venda, '%Y-%m') =
DATE_FORMAT(DATE_ADD(anterior.data_venda, INTERVAL 1 MONTH), '%Y-%m') -- faz pegar o mes seguinte
)
ORDER BY atual.nome_vendedor, MES_E_ANO;
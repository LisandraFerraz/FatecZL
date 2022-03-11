

create table bdvendaauto.`tbProduto`(
	id_produto INT,
	custo_produto DOUBLE,
    descricao_produto VARCHAR(100),
    PRIMARY KEY(id_produto)
);

create table bdvendaauto.`tbItem_produto`(
	id_produto INT,
    id_orcamento INT,
    custo_ip DOUBLE,
	quantidade_ip INT,
    situacao_ip VARCHAR(30),
    FOREIGN KEY(id_produto) REFERENCES tbProduto(id_produto),
    FOREIGN KEY(id_orcamento) REFERENCES tbOrcamento(id_orcamento)
);

create table bdvendaauto.`tbServico`(
	id_servico INT,
    descricao_servico VARCHAR(50),
    tempo_servico TIME,
    custo_servico DOUBLE,
    PRIMARY KEY(id_servico)
);

create table bdvendaauto.`tbItem_servico`(
	id_orcamento INT,
    id_servico INT,
    custo_is DOUBLE,
    situacao_is VARCHAR(30),
    FOREIGN KEY(id_orcamento) REFERENCES tbOrcamento(id_orcamento),
    FOREIGN KEY(id_servico) REFERENCES tbServico(id_servico)
);

create table bdvendaauto.`tbCliente`(
	cpf_cliente VARCHAR(14),
    nome_cliente VARCHAR(80),
    endereco_cliente VARCHAR(80),
    telefone_cliente VARCHAR(13),
    PRIMARY KEY(cpf_cliente)
);

create table bdvendaauto.`tbRelato_cliente`(
	id_relato INT,
    id_veiculo INT,
    problema_relato VARCHAR(50),
    data_relato DATE,
    PRIMARY KEY(id_relato),
    FOREIGN KEY(id_veiculo) REFERENCES tbVeiculo(renavam)
);

create table bdvendaauto.`tbVeiculo`(
	renavam INT,
    id_cliente VARCHAR(14),
    chassi VARCHAR(25),
    modelo VARCHAR(30),
    cor VARCHAR(30),
    PRIMARY KEY (renavam),
    FOREIGN KEY(id_cliente) REFERENCES tbCliente(cpf_cliente)
);

create table bdvendaauto.`tbOrcamento`(
	id_orcamento INT,
    id_veiculo INT,
    situacao_orcamento VARCHAR(30),
    valor_orcamento DOUBLE,
    data_orcamento DATE,
    met_pagto_orcamento VARCHAR(20),
    previsao_ent_orcamento DATE,
    PRIMARY KEY(id_orcamento),
    FOREIGN KEY(id_veiculo) REFERENCES tbVeiculo(renavam)
);

-- Alterar a coluna nome da Tabela Cliente para Nome_Completo
ALTER TABLE bdvendaauto.`tbcliente`
	CHANGE COLUMN `nome_cliente` `nome_completo` VARCHAR(150);

-- Adicionar uma coluna na Tabela Veículo, denominado 'Ano'
ALTER TABLE bdvendaauto.`tbVeiculo`
	ADD COLUMN `Ano` YEAR;
    
-- UPDATE

SELECT * FROM bdvendaauto.`tborcamento`;

UPDATE bdvendaauto.`tborcamento` SET data_orcamento = '2021/10/30';

UPDATE bdvendaauto.`tbVeiculo` SET modelo = 'BMW' WHERE renavam = 481014771;

UPDATE bdvendaauto.`tbVeiculo` SET ano = 2016 WHERE ano < 2021;

UPDATE bdvendaauto.`tbCliente` SET nome_completo = REPLACE (nome_completo, 'a', 'A');

UPDATE bdvendaauto.`tborcamento` SET situacao_orcamento = 'Andamento';

UPDATE bdvendaauto.`tbProduto` SET custo_produto = 30.00;

/*
Atualizar o valor total do Orçamento atraves da somatória de itens_serviço e itens_produto;
não há nenhuma tabela que faça a ligação entre a de serviços/produto. portanto, não há como realizar
a somatória para atribuí-la ao orçamento.
*/
UPDATE bdvendaauto.`tborcamento` SET valor_orcamento = ((SELECT custo_servico FROM bdvendaauto.`tbservico`)+(SELECT custo_produto FROM bdvendaauto.`tbProduto`));

-- SELECT

SELECT valor_orcamento FROM bdvendaauto.`tborcamento`;

SELECT nome_completo FROM bdvendaauto.`tbCliente` ORDER BY nome_completo ASC;

SELECT modelo FROM bdvendaauto.`tbVeiculo`;

SELECT valor_orcamento, data_orcamento FROM bdvendaauto.`tborcamento`
	WHERE MONTH(data_orcamento) = 10;

SELECT custo_produto, descricao_produto FROM bdvendaauto.`tbProduto`;

SELECT descricao_servico, custo_servico FROM bdvendaauto.`tbservico`;

SELECT MIN(valor_orcamento) FROM bdvendaauto.`tborcamento`;

/* 
não há data de inserção na criação do banco (Mostrar o primeiro veículo inserido). Provavelmente,
o select seria:
SELECT MIN(MONTH(data_insercao)) FROM bdvendaauto.`tbVeiculo`;
*/

/*
o ID do cliente é seu CPF (Mostrar o último cliente cadastrado)Provavelmente,
o select seria:
SELECT MIN(id_cliente) FROM bdvendaauto.`tbCliente`;
*/

SELECT valor_orcamento FROM bdvendaauto.`tborcamento`
	WHERE valor_orcamento > 1000 AND valor_orcamento < 2000;
    
SELECT AVG(valor_orcamento) FROM bdvendaauto.`tborcamento`;
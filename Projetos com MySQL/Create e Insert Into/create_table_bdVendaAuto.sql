
-- Criar o script de criação das tabelas (DDL) para o diagrama de entidade-relacionamento

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

-- Criar o script de exclusão de tabelas (DDL) para o diagrama de entidade-relacionamento
DROP TABLE bdvendaauto.`tbProduto` RESTRICT;
DROP TABLE bdvendaauto.`tbItem_produto` RESTRICT;
DROP TABLE bdvendaauto.`tbServico` RESTRICT;
DROP TABLE bdvendaauto.`tbItem_servico` RESTRICT;
DROP TABLE bdvendaauto.`tbCliente` RESTRICT;
DROP TABLE bdvendaauto.`tbRelato_cliente` RESTRICT;
DROP TABLE bdvendaauto.`tbVeiculo` RESTRICT;
DROP TABLE bdvendaauto.`tbOrcamento` RESTRICT;

-- Alterar a coluna nome da Tabela Cliente para Nome_Completo
ALTER TABLE bdvendaauto.`tbcliente`
	CHANGE COLUMN `nome_cliente` `nome_completo` VARCHAR(150);

-- Adicionar uma coluna na Tabela Veículo, denominado 'Ano'
ALTER TABLE bdvendaauto.`tbVeiculo`
	ADD COLUMN `Ano` YEAR
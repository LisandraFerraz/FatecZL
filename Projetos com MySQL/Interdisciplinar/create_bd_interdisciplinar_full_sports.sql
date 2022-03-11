Create Table bdFullSports.`tbEndeCliente`(
	idEndeCliente int(20) NOT NULL,
	primary key(idEndeCliente),
	unique(idEndeCliente),
	estadoEndeCliente VARCHAR(20) NOT NULL,
	cidadeEndeCliente VARCHAR(20) NOT NULL,
	bairroEndeCliente VARCHAR(20) NOT NULL,
	complementoEndeCliente VARCHAR(15),
	numeroEndeCliente int(6) NOT NULL,
	logEndeCliente VARCHAR(15)
);

Create Table bdFullSports.`tbCliente`(
	cpfCliente int(11) NOT NULL,
	primary key(cpfCliente),
	unique (cpfCliente),
	nomeCliente VARCHAR(50) NOT NULL,
	dataNascCliente VARCHAR(10) NOT NULL,
	generoCliente VARCHAR(10),
	emailCliente VARCHAR(50) NOT NULL,
	idEndeCliente int,
	FOREIGN KEY(idEndeCliente) REFERENCES tbEndeCliente(idEndeCliente)
);

CREATE TABLE bdFullSports.`tbDevolucao`(
	idDevolucao INT NOT NULL,
	statusDevolucao VARCHAR(255),
	PRIMARY KEY (idDevolucao) 
);

CREATE TABLE bdFullSports.`tbMovimentacaoEstoque`(
	idMovimeEstq INT NOT NULL,
	statusMovimeEstq VARCHAR(255),
	idDetalhePedido INT,
	idDevolucao INT,
	PRIMARY KEY (idMovimeEstq),
	FOREIGN KEY (idDetalhePedido) REFERENCES tbDetalhePedido(idDetalhePedido),
	FOREIGN KEY (idDevolucao) REFERENCES tbDevolucao(idDevolucao)
);

Create Table bdFullSports.`tbDetalhePedido`(
	idDetalhePedido VARCHAR(50) NOT NULL,
	primary key(idDetalhePedido),
	unique(idDetalhePedido),
	precoProduto VARCHAR(10) NOT NULL,
	FOREIGN KEY(idPedido) REFERENCES tbPedido(idPedido)
);

Create Table bdFullSports.`tbPedido`(
	idPedido int(20) NOT NULL,
	primary key(idPedido),
	unique(idPedido),
	tipoPagamentoPedido VARCHAR(15)NOT NULL,
	totalPedido int(10) NOT NULL,
	dataPedido VARCHAR(10) NOT NULL,
	qtdProdutoPedido int(10) NOT NULL,
	cpfCliente int,
	unique(cpfCliente),
	FOREIGN KEY(cpfCliente) REFERENCES tbCliente(cpfCliente)
);

CREATE TABLE bdFullSports.`tbClassificacao`(
	idClassificacao INT,
    descClassificacao VARCHAR (25),
    PRIMARY KEY(idClassificacao)
);

CREATE TABLE bdFullSports.`tbCategoria`(
	idCategoria INT, 
    idClassificacao INT,
    descCategoria VARCHAR (30),
    PRIMARY KEY(idCategoria),
    FOREIGN KEY (idClassificacao) REFERENCES tbClassificacao(idClassificacao)
);

CREATE TABLE bdFullSports.`tbDepartamento`(
	idDepartamento INT,
    idCategoria INT,
    descDpto VARCHAR (30),
    PRIMARY KEY(idDepartamento),
    FOREIGN KEY(idCategoria) REFERENCES tbCategoria(idCategoria)
);

CREATE TABLE bdFullSports.`tbEndeFornecedor`(
    idEndeFornecedor INT NOT NULL,
    estadoEndeFornecedor VARCHAR(2),
    cidadeEndeFornecedor VARCHAR(50),
    logEndeFornecedor VARCHAR(255),
    bairroEndeFornecedor VARCHAR(50),
    cepEndeFornecedor INT(8),
    compEndeFornecedor VARCHAR(2),
    numEndeFornecedor INT(5),
    PRIMARY KEY (idEndeFornecedor)
);

CREATE TABLE bdFullSports.`tbFornecedor`(
	cnpjFornecedor INT(14) NOT NULL,
    nomeFornecedor VARCHAR(25),
    idEndeFornecedor INT,
    FOREIGN KEY (idEndeFornecedor) REFERENCES tbEndeFornecedor(idEndeFornecedor)
);

Create Table bdFullSports.`tbOrdemCompra`(
	idOrdemCompra INT,
    cpnjFornecedor INT(20),
	horaOrdemCompra TIME(6),
	dataOrdemCompra DATE,
	PRIMARY KEY (idOrdemCompra),
    FOREIGN KEY (cpnjFornecedor) REFERENCES tbForcenedor(cpnjFornecedor)
);

CREATE TABLE bdFullSports.`tbProduto`(
	idProduto INT,
	cpnjFornecedor INT (14),
    idDepto INT,
    precoProduto DOUBLE,
    descProduto VARCHAR (40),
	PRIMARY KEY(idProduto),
    FOREIGN KEY(cpnjFornecedor) REFERENCES tbFornecedor(cpnjFornecedor),
    FOREIGN KEY(idDepto) REFERENCES tbDepartamento(idDepto)
);

CREATE TABLE bdFullSports.`tbPedidosProdutos`(
	idPedidosProdutos INT,
    idPedido INT,
    idProduto INT,
    PRIMARY KEY(idPedidosProdutos),
    FOREIGN KEY(idPedido) REFERENCES tbPedido(idPedido),
    FOREIGN KEY(idProduto) REFERENCES tbProduto(idProduto)
);

Create Table bdFullSports.`tbNotaFiscal`(
	idNotaFiscal INT,
    idOrdemCompra INT,
	valorTotalNotaFiscal FLOAT,
	PRIMARY KEY(idNotaFiscal),
    FOREIGN KEY (idOrdemCompra) REFERENCES tbOrdemCompra(idOrdemCompra)
);

CREATE TABLE bdFullSports.`tbDetalheOrdemCompra`(
	idDtlOrdemCompra INT,
    idOrdemCompra INT, 
    idEndDrlOrdCom INT,
    FOREIGN KEY (idOrdemCompra) REFERENCES tbOrdemCompra(idOrdemCompra),
    FOREIGN KEY (idEndDrlOrdCom) REFERENCES tbEndDrlOrdCom(idEndDrlOrdCom)
);

CREATE TABLE bdFullSports.`tbEndDrlOrdCom`(
	idEndDrlOrdCom INT,
	estadoEndDrlOrdcom CHAR(4),
	cidadeEndDrlOrdCom VARCHAR(30),
	bairroEnDrlOrdCom VARCHAR(20),
	logEndDrlOrdCom VARCHAR(10),
	compEndDrlOrdCom VARCHAR(10),
	cepEndDrlOrdCom DOUBLE,
	PRIMARY KEY (idEndDrlOrdcom)
);
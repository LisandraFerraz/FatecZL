
/*pelo menos 8 registros(tuplas) em cada uma da Entidades*/

INSERT INTO bdvendaauto.`tbcliente`(cpf_cliente, nome_completo, endereco_cliente,telefone_cliente)
	VALUES ('12345678912', 'Mariana Duarte Ferreira', 'Rua dos Pesqueiros 93', '11 92345-6789'),
		('23456789123', 'Alison Mendes dos Santos', 'Rua Sonho de Luz 853', '11 93456-7891'),
        ('34567891234', 'Ketlyn Souza Medeiros', 'Rua Presidente Prudente 235', '11 94567-8912'),
        ('45678912345', 'Luciano Malfoy', 'Rua dos Alfeneiros 4', '11 95678-9123'),
        ('56789123456', 'Amanda Pereira Silva', 'Rua de Los Santos 48', '11 96789-1234'),
        ('67891234567', 'Luana Amaral da Silva', 'Rua Madeireiros Santos 211', '11 97894-5612'),
        ('78912345678', 'Suelen Mauricio Mendes', 'Rua Alencar Silva 239', '11 98912-3456'),
        ('89123456789', 'Alan Ferreira Cunha', 'Rua Sem Nome 02', '11 99123-4567');
        
INSERT INTO bdvendaauto.`tbproduto`(id_produto, custo_produto, descricao_produto)
	VALUES (001, 39.900, 'Chevrolet Agile 1.4 MPFI LTZ 8V'),
		(002, 49.990, 'Ford Focus 1.6 Se 16v Flex 4p Powershift'),
        (003, 85.900, 'Kia Sportage 2.0 LX 4X2 16V'),
        (004, 239.900, 'Jeep Compass 2.0 16V TRAILHAWK 4X4'),
        (005, 46.900, 'Volkswagen Spacefox 1.6 MI TREND 8V'),
        (006, 59.990, 'Peugeot 208 1.6 GRIFFE 16V'),
        (007, 27.889, 'Fiat Palio 1.0 MPI FIRE ECONOMY 8V'),
        (008, 91.900, 'Chevrolet Tracker 1.4 16V TURBO PREMIER');
        
INSERT INTO bdvendaauto.`tbveiculo`(renavam, id_cliente, chassi, modelo, cor, ano)
	VALUES (481014771, '12345678912', '9BG116GW04C400001', "Agile", 'Vermelho', 2019),
		(481014772, '23456789123', '9BG116GW04C400002', "Focus Sedan", 'Prata', 2020),
        (481014773, '34567891234', '9BG116GW04C400003', "Sportage", 'Preto', 2020),
        (481014774, '45678912345', '9BG116GW04C400004', "Jeep", 'Prata', 2015),
        (481014775, '56789123456', '9BG116GW04C400005', "Spacefox", 'Azul', 2016),
        (481014776, '67891234567', '9BG116GW04C400006', "208", 'Vermelho', 2017),
        (481014777, '78912345678', '9BG116GW04C400007', "Palio", 'Verde', 2018),
        (481014778, '89123456789', '9BG116GW04C400008', "Tracker", 'Preto', 2019);
        
INSERT INTO bdvendaauto.`tbservico`(id_servico, descricao_servico, tempo_servico, custo_servico)
	VALUES (001, 'Reparo no freio', '05:00:00', 450.00),
		(002, 'Manutenção nos Pneus', '16:00:00', 450.00),
        (003, 'Limpeza Externa', '03:00:00', 450.00),
        (004, 'Limpeza Interna', '02:00:00', 450.00),
        (005, 'Troca de óleo', '02:00:00', 450.00),
        (006, 'Reparo de motor', '14:00:00', 450.00),
        (007, 'Reparo no volante', '12:00:00', 450.00),
        (008, 'Manutenção na buzina', '13:00:00', 450.00);
	
INSERT INTo bdvendaauto.`tborcamento`(id_orcamento, id_veiculo, situacao_orcamento, valor_orcamento, data_orcamento, met_pagto_orcamento, previsao_ent_orcamento)
	VALUES (001, 481014771, 'Analise', 95.000, '2019/03/15', 'Cartão Crédito', '2019/03/23'),
		(002, 481014772, 'Pendente', 55.000, '2019/02/18', 'Cartão Débito', '2019/03/01'),
        (003, 481014773, 'Atrasado', 85.900, '2019/11/19', 'À vista', '2019/11/29'),
        (004, 481014774, 'Entregue', 65.900, '2019/10/20', 'Cartão Débito', '2019/10/30'),
        (005, 481014775, 'Analisa', 35.000, '2019/06/05', 'Cartão Crédito', '2019/06/15'),
        (006, 481014776, 'Analise', 95.990, '2019/08/12', 'À vista', '2019/08/23'),
        (007, 481014777, 'Pendente', 70.900, '2019/11/23', 'Boleto', '2019/12/02'),
        (008, 481014778, 'Atrasado', 88.800, '2019/10/13', 'Boleto', '2019/10/23');
        
INSERT INTo bdvendaauto.`tbrelato_cliente`(id_relato, id_veiculo, problema_relato, data_relato)
	VALUES (0001, 481014771, 'Volante travado', '2019/03/23'),
		(0002, 481014772, 'Porta-malas danificado', '2019/12/13'),
        (0003, 481014773, 'Janela riscada', '2019/05/20'),
        (0004, 481014774, 'Costura do banco desfiada', '2019/10/15'),
        (0005, 481014775, 'Pneu furado', '2019/11/02'),
        (0006, 481014776, 'Volante travado', '2019/09/05'),
        (0007, 481014777, 'Janela Riscada', '2019/01/05'),
        (0008, 481014778, 'Volante travado', '2019/02/25');
        
INSERT INTO bdvendaauto.`tbitem_produto`(id_produto, id_orcamento, custo_ip, quantidade_ip, situacao_ip)
	VALUES (001, 001, 59.900, 1, 'Pendente'),
		(002, 002, 44.900, 1, 'Finalizado'),
        (003, 003, 54.900, 1, 'Finalizado'),
        (004, 004, 84.900, 1, 'Em atraso'),
        (005, 005, 93.900, 1, 'Em análise'),
        (006, 006, 75.900, 1, 'Pendente'),
        (007, 007, 64.900, 1, 'Em análise'),
        (008, 008, 23.900, 1, 'Finalizado');
        
INSERT INTO bdvendaauto.`tbitem_servico`(id_orcamento, id_servico, situacao_is,  custo_is)
	VALUES (001, 001, 'Pendente', 95.000),
		(002, 002, 'Em análise', 55.000),
        (003, 003, 'Finalizado', 85.000),
        (004, 004, 'Em análise', 70.000),
        (005, 005, 'Pendente', 50.000),
        (006, 006, 'Em análise', 65.000),
        (007, 007, 'Pendente', 72.000),
        (008, 008, 'Finalizado', 80.000);

/*pelo menos 3 remoções de tuplas em cada entidade*/

DELETE FROM bdvendaauto.`tbcliente`
	WHERE cpf_cliente = 12345678912;
    
DELETE FROM bdvendaauto.`tbcliente`
	WHERE cpf_cliente = 23456789123;

DELETE FROM bdvendaauto.`tbcliente`
	WHERE cpf_cliente = 34567891234;

DELETE FROM bdvendaauto.`tbproduto`
	WHERE id_produto = 001;
    
DELETE FROM bdvendaauto.`tbproduto`
	WHERE id_produto = 001;

DELETE FROM bdvendaauto.`tbproduto`
	WHERE id_produto = 001;

DELETE FROM bdvendaauto.`tbveiculo`
	WHERE renavam = 481014771;

DELETE FROM bdvendaauto.`tbveiculo`
	WHERE renavam = 481014772;
    
DELETE FROM bdvendaauto.`tbveiculo`
	WHERE renavam = 481014773;

DELETE FROM bdvendaauto.`tbservico`
	WHERE id_servico = 001;
    
DELETE FROM bdvendaauto.`tbservico`
	WHERE id_servico = 002;
    
DELETE FROM bdvendaauto.`tbservico`
	WHERE id_servico = 003;

DELETE FROM bdvendaauto.`tborcamento`
	WHERE id_orcamento = 001;
    
DELETE FROM bdvendaauto.`tborcamento`
	WHERE id_orcamento = 002;

DELETE FROM bdvendaauto.`tborcamento`
	WHERE id_orcamento = 003;

DELETE FROM bdvendaauto.`tbrelato_cliente`
	WHERE id_relato = 0001;
    
DELETE FROM bdvendaauto.`tbrelato_cliente`
	WHERE id_relato = 0002;

DELETE FROM bdvendaauto.`tbrelato_cliente`
	WHERE id_relato = 0003;

DELETE FROM bdvendaauto.`tbitem_produto`
	WHERE id_produto = 001;
    
DELETE FROM bdvendaauto.`tbitem_produto`
	WHERE id_produto = 002;

DELETE FROM bdvendaauto.`tbitem_produto`
	WHERE id_produto = 003;

DELETE FROM bdvendaauto.`tbitem_servico`
	WHERE renavam = 481014771;
    
DELETE FROM bdvendaauto.`tbitem_servico`
	WHERE renavam = 481014772;
    
DELETE FROM bdvendaauto.`tbitem_servico`
	WHERE renavam = 481014773;


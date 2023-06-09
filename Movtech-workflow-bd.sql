use movtech;

create table MvtCadEtapas (
	codEtapas int identity primary key,
	etapas varchar(50) not null,
	seqOrdem int not null,
	leadTime int not null
);



create table MvtEtapasBaixas(
	codEtapaBaixa int identity primary key,
	codEmpresa int not null,
	nomeEmpresa varchar(100) not null,
	documento varchar(200) not null,
	dataBaixa Date not null,
	codFuncionario int not null,
	nomeFuncionario varchar(40) not null,
	codEtapas int not null,
	nomeEtapa varchar(50) not null,
	corCelula varchar(20),
	foreign key(codEmpresa) references MvtMenuEmpresa(codEmpresa),
	foreign key(codEtapas) references MvtCadEtapas(codEtapas)
);

drop table MvtEtapasBaixas

select * from MvtEtapasBaixas;

select * from MvtCadEtapas;

select * from MvtCadCliente where codCliente = 658;

select * from MvtCadProduto where codProduto = '11054';

select * from MvtVendasEstruturaFaturamento where codCliente = 658 and documento =	169422;

update MvtVendasEstruturaFaturamento set data = '2015-06-02' where documento = 169422 and codProduto= '11054';

select * from MvtVendasEstruturaFaturamento where codProduto = '10311           ';

CREATE INDEX idxNomeCliente ON MvtCadCliente(nomeCliente);

select * from MvtCadFuncionario;

create view vwMvtCadCliente As 
select codCliente, nomeCliente from MvtCadCliente;

select * from vwMvtCadCliente where codCliente = 658;

create view vwMvtCadProduto As 
select codProduto, nomeProduto from MvtCadProduto;

select * from vwMvtCadProduto where codProduto = '11054';

create view vwMvtVendasEstruturaFaturamento As 
select codEmpresa, documento, qtde, valorFaturado, data, dataProjecao, codProduto, codCliente from MvtVendasEstruturaFaturamento where codEmpresa = 1 and tipo = 'F';

select * from vwMvtVendasEstruturaFaturamento where codCliente = 658 and documento =169422;

drop view vwMvtVendasEstruturaFaturamento


select * from vwMvtCadCliente;

select * from MvtVendasEstruturaFaturamento where codCliente = 12589 and documento = 235883;

select * from vwMvtCadProduto where codProduto = '5100000000';



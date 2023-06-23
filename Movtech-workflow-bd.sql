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
	usuario varchar(40) not null,
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
select codCliente, nomeCliente, idxMvtCadClientCodCliente from MvtCadCliente;

select * from vwMvtCadCliente where codCliente = 658;

create view vwMvtCadProduto As 
select codProduto, nomeProduto from MvtCadProduto;

select * from vwMvtCadProduto where codProduto = '11054';

create view vwMvtVendasEstruturaFaturamento As 
select codEmpresa, documento, qtde, valorFaturado, data, dataProjecao, codProduto, codCliente, tipo from MvtVendasEstruturaFaturamento where codEmpresa = 1 and tipo = 'F';

select * from vwMvtVendasEstruturaFaturamento where codCliente = 658 and documento =169422;

drop view vwMvtVendasEstruturaFaturamento


select * from vwMvtCadCliente;

select * from MvtVendasEstruturaFaturamento where codCliente = 12589 and documento = 235883;

select * from vwMvtCadProduto where codProduto = '5100000000';

CREATE INDEX idxMvtCadClientCodCliente
ON MvtCadCliente (codCliente);

CREATE INDEX idxMvtVendasEstruturaFaturamentoCodProduto
ON MvtVendasEstruturaFaturamento (codProduto);

CREATE INDEX idxMvtVendasEstruturaFaturamentoDocumento
ON MvtVendasEstruturaFaturamento (documento);

CREATE INDEX idxMvtVendasEstruturaFaturamentoDataEmissao
ON MvtVendasEstruturaFaturamento (dataEmissao);

select * from MvtVendasEstruturaFaturamento where dataEmissao BETWEEN '2020-01-01' AND '2023-06-13' AND tipo = 'f';

select * from MvtVendasEstruturaFaturamento where codCliente = 16215 and documento = 341225
update MvtVendasEstruturaFaturamento set data = '2020-01-10' where documento = 341225 and codCliente = 16215;

select sum(qtde) as quantidade, sum(valorFaturado) as Total, avg(valorFaturado/nullif(qtde,0)) as media, count(qtde) as totalproduto from MvtVendasEstruturaFaturamento where documento = 341111;

select * from MvtVendasEstruturaFaturamento where documento = 341111;

update MvtVendasEstruturaFaturamento set data = '2020-01-08' where documento = 341096;

update MvtVendasEstruturaFaturamento set data = '2020-01-21' where documento = 34051;

select * from MvtAcessoUsuario;
select * from MvtVendasEstruturaFaturamentoView where qtde = 0 AND tipo = 'F' AND codEmpresa = 1 and dataEmissao > '2020-01-01';

select * from MvtVendasEstruturaFaturamento where documento = 341096;
SELECT data FROM MvtVendasEstruturaFaturamento WHERE documento = 341096;

CREATE VIEW MvtVendasEstruturaFaturamentoView AS
SELECT documento, qtde, valorFaturado, dataProjecao, codEmpresa, dataEmissao, codCliente, codProduto, 
tipo, data FROM MvtVendasEstruturaFaturamento where tipo = 'F' AND codEmpresa = 1;


update MvtAcessoUsuario set senha = '123';

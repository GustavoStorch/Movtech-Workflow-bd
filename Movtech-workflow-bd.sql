use movtech;

create table MvtCadEtapas (
	codEtapas int identity primary key,
	etapas varchar(50) not null,
	seqOrdem int not null,
	leadTime int not null
);

select * from MvtCadCliente where codCliente = 658;

select * from MvtCadProduto where codProduto = '11054';

select * from MvtVendasEstruturaFaturamento where codCliente = 658 and documento =169422;


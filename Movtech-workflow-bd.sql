use movtech;

create table MvtCadEtapas (
	codEtapas int identity primary key,
	etapas varchar(50) not null,
	seqOrdem int not null,
	leadTime int not null
);

select * from MvtCadCliente;

select * from MvtCadProduto;

select * from MvtVendasEstruturaFaturamento where cidade = 'JARAGUA DO SUL';


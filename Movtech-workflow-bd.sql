use movtech;

create table MvtCadEtapas (
	codEtapas int not null primary key,
	etapas varchar(50) not null,
	seqOrdem int not null,
	leadTime int not null
);
use movtech;

create table MvtCadEtapas (
	codEtapas int identity primary key,
	etapas varchar(50) not null,
	seqOrdem int not null,
	leadTime int not null
);
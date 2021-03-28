create table COLABORADOR (

	ID_COLABORADOR SERIAL primary key,
	NOME_COLABORADOR VARCHAR not null,
	ETNIA VARCHAR not null,
	UF_NATURAL VARCHAR not null,
	CIDADE_NATURAL VARCHAR not null,
	GENERO VARCHAR not null,
	ESTADO_CIVIL VARCHAR not null,
	DT_NASCIMENTO DATE not null,
	CPF_OR_CNPJ VARCHAR (11) not null,
	NM_MAE VARCHAR not null,
	NM_PAI varchar not null,
	DT_ADMISSAO DATE not null,
	SALARIO bigint not null,
	TIPO_DO_CONTRATO VARCHAR not null,--fk
	TIPO_TICKET varchar not null,--fk
	FL_VL_TRANSPORTE VARCHAR not null,--boolean
	unique (CPF_OR_CNPJ)
);


create table TIPO_CONTRATO (
	ID_COLABORADOR INT references COLABORADOR(ID_COLABORADOR),--colaborador que tem que ter essa chave
	ID_TIPO_CONTRATO SERIAL primary key,
	NOME_TIPO_CONTRATO varchar not null
	
	);

create table TICKET (
	ID_COLABORADOR INT references COLABORADOR(ID_COLABORADOR),--colaborador que tem que ter essa chave
	ID_TICKET SERIAL primary key,
	NOME_TICKET varchar not null
);

create table ENDERECO (
ID_ENDERECO SERIAL primary key,
LUGRADOURO VARCHAR not null,
NUMERO INT not null,
COMPLEMENTO VARCHAR not null,
CEP VARCHAR not null,
BAIRRO VARCHAR not null,
ESTADO VARCHAR not null,
CIDADE VARCHAR not null
);

create table COLABORADOR_ENDERECO (
ID_COLABORADOR_ENDERECO SERIAL primary key, 
ID_COLABORADOR INT  references COLABORADOR(ID_COLABORADOR),
ID_ENDERECO INT references ENDERECO(ID_ENDERECO)

);

create table FORMACAO_ACADEMICA (
	ID_FORMACAO SERIAL primary key,
	ID_COLABORADOR INT references COLABORADOR(ID_COLABORADOR),
	ESCOLARIDADE VARCHAR not null,--outra tabela
	INSTITUICAO VARCHAR not null,
	CURSO VARCHAR not null,--nulo
	ANO_CONCLUSAO VARCHAR not NULL---nulo
);

create table DADOS_BANCARIOS (
	ID_DADOS_BANCARIOS SERIAL primary key,
	ID_COLABORADOR INT references COLABORADOR(ID_COLABORADOR),
	BANCO VARCHAR not null,
	AGENCIA VARCHAR not null,
	CONTA VARCHAR not null,
	TIPO_CONTA VARCHAR not NULL
);

create table CONTATOS(
	ID_CONTATOS SERIAL primary key,
	ID_COLABORADOR INT references COLABORADOR(ID_COLABORADOR),
	EMAIL VARCHAR not null,
	CELULAR VARCHAR not null,
	RESIDENCIAL VARCHAR
);

create table CONTATO_EMERGENCIA (
	ID_CONTATO_EMERGENCIA SERIAL primary key,
	ID_COLABORADOR INT references COLABORADOR(ID_COLABORADOR),
	NOME VARCHAR,
	CONTATO VARCHAR
	
	);

--ALTERNATIVA PENSADA COM O LUCAS
create table CONTATO (
	ID_CONTATO serial primary key,
	ID_COLABORADOR INT references COLABORADOR(ID_COLABORADOR),
	EMAIL varchar not null,
	CELULAR varchar not null,
	RESIDENCIAL varchar,
  	NOME VARCHAR
);


create table DEPENDENTES (
	ID_DEPENDENTES SERIAL primary key,
	ID_COLABORADOR INT references COLABORADOR(ID_COLABORADOR),
	NOME_DEPENDENTE varchar not null,
	DT_NASCIMENTO varchar not null,
	NOME_MAE VARCHAR not null,
	NOME_PAI VARCHAR not null,
	EMAIL VARCHAR not null,
	CPF VARCHAR (11) not null,
	RELACAO_PARENTAL VARCHAR not NULL---aqui contem a referencia do tipo de relacao
);

create table RELACAO_PARENTAL (
	ID_RELACAO_PARENTAL SERIAL primary key,
	ID_DEPENDENTES INT references DEPENDENTES(ID_DEPENDENTES),
	NOME_RELACAO VARCHAR not null,
	ID_COLABORADOR int references COLABORADOR(ID_COLABORADOR)
);

create table DEPARTAMENTO (
	ID_DEPARTAMENTO SERIAL primary key,
	NOME_DEPARTAMENTO VARCHAR not null,
	ID_GESTOR INT references COLABORADOR(ID_COLABORADOR)
	
	
	);

create table EQUIPAMENTO (
	ID_EQUIPAMENTO SERIAL primary key,
	DATA_AQUISICAO DATE not null,
	TIPO_EQUIPAMENTO VARCHAR not NULL--esse cara é fk

);



create table TIPO_EQUIPAMENTO (
	ID_EQUIPAMENTO INT references EQUIPAMENTO(ID_EQUIPAMENTO),-- esse cara n fica aqui
	ID_TIPO_EQUIPAMENTO SERIAL primary key,
	NM_TP_EQUIPAMENTO VARCHAR not null,
	FABRICANTE VARCHAR not null
);

create table COLABORADOR_EQUIPAMENTO (
	ID_COLABORADOR_EQUIPAMENTO SERIAL primary key,
	DATA_ATRIBUICAO DATE not null,
	ID_COLABORADOR INT references COLABORADOR(ID_COLABORADOR),
	ID_EQUIPAMENTO INT references EQUIPAMENTO(ID_EQUIPAMENTO)
	
);

create table FERIAS (
	ID_COLABORADOR INT references COLABORADOR(ID_COLABORADOR),
	ID_FERIAS SERIAL primary key,
	DT_SOLICITACAO DATE not null,
	DT_APROVACAO DATE not null,--nulo
	DT_INICIO DATE not null,
	DT_FIM DATE not null,
	QT_DIAS_ABONO INT not null,--nulo
	FL_ANTECIPAR_13 BOOL not null,
	JUSTIFICATIVA VARCHAR not NULL--nulo
);

create table HOLERITE (
	ID_HOLERITE SERIAL primary key,
	DT_REFERENCIA DATE not null,
	TIPO_PAGAMENTO VARCHAR not null,--outra tabela
	ID_COLABORADOR INT references COLABORADOR(ID_COLABORADOR),
	DESCONTO bigint not null,
	VALOR bigint not NULL
);

create table COLABORADOR_DEPARTAMENTO (
	ID_COLABORADOR_DEPARTAMENTO SERIAL primary key,
	ID_COLABORADOR INT references COLABORADOR(ID_COLABORADOR),
	ID_DEPARTAMENTO INT references DEPARTAMENTO(ID_DEPARTAMENTO)

);



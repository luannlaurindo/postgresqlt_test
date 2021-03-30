
--SELECTS DO COLABORADOR

--testando casos simples
select c.dt_admissao from colaborador c order by dt_admissao asc;
select *from colaborador c order by dt_admissao asc;
select * from colaborador c order by dt_nascimento asc; 
select c.nm_colaborador, c.id_colaborador from colaborador c where c.fl_cadastro_completo = false; --cadastro incompleto
select c.nm_colaborador, c.id_colaborador from colaborador c where c.fl_cadastro_completo = '1'; -- cadastro completo
select c.nm_colaborador, c.id_ticket, c.id_colaborador from colaborador c where c.id_ticket = 1;
select c.nm_colaborador, c.id_colaborador, c.id_cargo from colaborador c where c.id_cargo = 2;
select c.nm_colaborador from colaborador c where c.nm_colaborador like '%ia%';
select c.nm_colaborador, c.vl_salario  from colaborador c where c.vl_salario > 1000;
select cd.nm_dependete, cd.ds_relacao_parental from colaborador_dependente cd where id_colaborador = 3; -- RELACAO PARENTAL



-- USANDO JOIN PRA ORDEM DE ADMISSÃO

select c.nm_colaborador, c.cd_cpf_cnpj, c.dt_admissao, c.vl_salario, ca.nm_cargo cargo, tc.nm_tipo_contrato, tt.nm_tipo_ticket
from colaborador c inner join
	tipo_ticket tt on c.id_ticket = tt.id_tipo_ticket inner join
	tipo_contrato tc on c.id_tipo_contrato = tc.id_tipo_contrato inner join
	cargo ca on c.id_cargo = ca.id_cargo
	order by dt_admissao asc;

-- USANDO JOIN PARA DATA DE NASCIMENTO
select c.nm_colaborador, c.cd_cpf_cnpj, c.dt_nascimento , c.vl_salario, ca.nm_cargo cargo, tc.nm_tipo_contrato, tt.nm_tipo_ticket
from colaborador c inner join
	tipo_ticket tt on c.id_ticket = tt.id_tipo_ticket inner join
	tipo_contrato tc on c.id_tipo_contrato = tc.id_tipo_contrato inner join
	cargo ca on c.id_cargo = ca.id_cargo
	order by dt_nascimento asc;

--CADASTRO COMPLETO / INCOMPLETO
select c.nm_colaborador, c.cd_cpf_cnpj, c.dt_nascimento , c.vl_salario, ca.nm_cargo cargo, tc.nm_tipo_contrato, tt.nm_tipo_ticket
from colaborador c inner join
	tipo_ticket tt on c.id_ticket = tt.id_tipo_ticket inner join
	tipo_contrato tc on c.id_tipo_contrato = tc.id_tipo_contrato inner join
	cargo ca on c.id_cargo = ca.id_cargo
	where c.fl_cadastro_completo = '0';

select c.nm_colaborador, c.cd_cpf_cnpj, c.dt_nascimento , c.vl_salario, ca.nm_cargo cargo, tc.nm_tipo_contrato, tt.nm_tipo_ticket
from colaborador c inner join
	tipo_ticket tt on c.id_ticket = tt.id_tipo_ticket inner join
	tipo_contrato tc on c.id_tipo_contrato = tc.id_tipo_contrato inner join
	cargo ca on c.id_cargo = ca.id_cargo
	where c.fl_cadastro_completo = '1';


--TIPO TICKET
select c.nm_colaborador, c.cd_cpf_cnpj, c.dt_nascimento , c.vl_salario, ca.nm_cargo cargo, tc.nm_tipo_contrato, tt.nm_tipo_ticket
from colaborador c inner join
	tipo_ticket tt on c.id_ticket = tt.id_tipo_ticket inner join
	tipo_contrato tc on c.id_tipo_contrato = tc.id_tipo_contrato inner join
	cargo ca on c.id_cargo = ca.id_cargo
	where tt.id_ticket = 1;

--TIPO CARGO
select c.nm_colaborador, c.cd_cpf_cnpj, c.dt_nascimento , c.vl_salario, ca.nm_cargo cargo, tc.nm_tipo_contrato, tt.nm_tipo_ticket
from colaborador c inner join
	tipo_ticket tt on c.id_ticket = tt.id_tipo_ticket inner join
	tipo_contrato tc on c.id_tipo_contrato = tc.id_tipo_contrato inner join
	cargo ca on c.id_cargo = ca.id_cargo
	where c.id_cargo = 2;


-- LIKE IA
select c.nm_colaborador, c.cd_cpf_cnpj, c.dt_nascimento , c.vl_salario, ca.nm_cargo cargo, tc.nm_tipo_contrato, tt.nm_tipo_ticket
from colaborador c inner join
	tipo_ticket tt on c.id_ticket = tt.id_tipo_ticket inner join
	tipo_contrato tc on c.id_tipo_contrato = tc.id_tipo_contrato inner join
	cargo ca on c.id_cargo = ca.id_cargo
	where c.nm_colaborador like '%ia%';

-- SALARIO >1000
select c.nm_colaborador, c.cd_cpf_cnpj, c.dt_nascimento , c.vl_salario, ca.nm_cargo cargo, tc.nm_tipo_contrato, tt.nm_tipo_ticket
from colaborador c inner join
	tipo_ticket tt on c.id_ticket = tt.id_tipo_ticket inner join
	tipo_contrato tc on c.id_tipo_contrato = tc.id_tipo_contrato inner join
	cargo ca on c.id_cargo = ca.id_cargo
	where c.vl_salario > 1000;


--endereco

select * from colaborador_endereco ce;
select * from colaborador_endereco ce where ce.id_colaborador = 3;

select c.nm_colaborador, c.cd_cpf_cnpj, ce.nm_cidade, ce.nm_lugradouro ,ce.nm_bairro from colaborador c, colaborador_endereco ce 
where c.id_colaborador = ce.id_colaborador ;

select * from colaborador c , colaborador_endereco ce where c.id_colaborador = ce.id_colaborador ;

-- contato
select * from colaborador_contato cc  ;
select * from colaborador_contato cc , colaborador c where c.id_colaborador = cc.id_colaborador ;
select * from colaborador_contato cc where cc.nm_contato_emergencia is not null;
select c.nm_colaborador,c.cd_cpf_cnpj, cc.nm_contato_emergencia 
from colaborador c, colaborador_contato cc where c.id_colaborador = cc.id_colaborador;
select * from colaborador_contato cc  where cc.id_colaborador  = 3 and cc.nm_contato_emergencia is not null;


-- dados bancarios
select * from colaborador_dado_bancario cdb where cdb.id_colaborador  = 2; 
select * from colaborador_dado_bancario cdb ;









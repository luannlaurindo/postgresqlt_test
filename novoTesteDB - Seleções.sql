
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

select c.nm_colaborador, c.cd_cpf_cnpj, c.dt_admissao, c.vl_salario, c. ca.nm_cargo cargo, tc.nm_tipo_contrato, tt.nm_tipo_ticket
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


-- departamento 
select * from departamento d ;
select * from departamento d where d.id_gestor = 1;

select 
		c.nm_colaborador, c.vl_salario
from 
		colaborador c inner join
		colaborador_departamento cd on c.id_colaborador = cd.id_colaborador 
		inner join departamento d on d.id_departamento = cd.id_departamento 

where d.id_departamento = 1;

select * from departamento d where d.id_gestor  = 1;
select * from departamento d where d.id_gestor  = 2;
select * from departamento d where d.id_gestor  = 3;

select 
	d.nm_departamento, te.nm_tipo_equipamento , count(e.id_equipamento) as qtd_equipamentos
from departamento d
	left join colaborador_departamento cd on d.id_departamento = cd.id_departamento 
	left join colaborador_equipamento ce on cd.id_colaborador = ce.id_colaborador 
	left join equipamento e on ce.id_equipamento  = e.id_equipamento 
	left join tipo_equipamento te on  e.id_tipo_equipamento = te.id_tipo_equipamento 
group by d.nm_departamento, te.nm_tipo_equipamento;

--equipamento
select e.id_equipamento from equipamento e 
	inner join tipo_equipamento te on e.id_tipo_equipamento = te.id_tipo_equipamento 
	inner join colaborador_equipamento ce on ce.id_equipamento = e.id_equipamento 
	where upper(te.nm_tipo_equipamento) = upper('notebook') and ce.id_colaborador = 1;

select count(e.id_equipamento), te.nm_tipo_equipamento, te.nm_fabricante  from tipo_equipamento te 
inner join equipamento e on te.id_tipo_equipamento = e.id_tipo_equipamento 
group by te.id_tipo_equipamento order by te.nm_tipo_equipamento, te.nm_fabricante


-- relacao parental
select cd.nm_dependete, cd.ds_relacao_parental from colaborador_dependente cd where cd.id_colaborador  = 1;
select cd.nm_dependete, cd.ds_relacao_parental from colaborador_dependente cd where cd.id_colaborador  = 2;
select cd.nm_dependete, cd.ds_relacao_parental from colaborador_dependente cd where cd.id_colaborador  = 3;
select cd.nm_dependete, cd.ds_relacao_parental from colaborador_dependente cd where cd.id_colaborador  = 4;

-- ferias
select * from colaborador_ferias cf where cf.dt_inicio > current_date 
order by cf.dt_inicio asc;

select count (cf.id_colaborador_ferias) from colaborador_ferias cf 	where cf.fl_antecipar_decimo_terceiro = '1';

select * from colaborador_ferias cf where cf.dt_aprovacao is null 
									order by cf.dt_solicitacao asc;
				
								
select c.id_colaborador, c.nm_colaborador , c.cd_cpf_cnpj , c.dt_admissao , c.vl_salario , ca.nm_cargo, 
tc.nm_tipo_contrato, tt.nm_tipo_ticket,c.dt_nascimento,c.cd_uf_natural,
	   c.nm_cidade_natural,c.nm_mae,c.nm_pai,c.fl_cadastro_completo,
	   ch.id_colaborador_holerite, ch.dt_referencia, ch.vl_desconto, ch.vl_valor
from colaborador c inner join
	tipo_ticket tt on c.id_ticket = tt.id_tipo_ticket inner join 
	tipo_contrato tc on c.id_tipo_contrato = tc.id_tipo_contrato inner join 
	cargo ca on c.id_cargo = ca.id_cargo
	inner join colaborador_holerite ch on c.id_colaborador = ch.id_colaborador 
	inner join tipo_holerite th on ch.id_tipo_holerite = th.id_tipo_holerite 
where 
	th.nm_holerite  = 'HOLERITE 1' ; 













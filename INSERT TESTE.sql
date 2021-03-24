insert into COLABORADOR (nome_colaborador, etnia, uf_natural, cidade_natural, genero, estado_civil, dt_nascimento, cpf_or_cnpj, nm_mae, nm_pai, dt_admissao, salario, tipo_do_contrato, tipo_ticket, fl_vl_transporte, departamento)
values('Luann Barbosa Laurindo', 'BRANCO', 'ES', 'VILA VELHA', 'Masculino', 'Solteiro', '2000-02-24', '15679492741','Romilda Maria Barbosa Laurindo', 'Sebastião Marcelo Laurindo', '2020-03-17', 600.00,'???', 'N/A','N/A', '???');

insert into COLABORADOR (nome_colaborador, etnia, uf_natural, cidade_natural, genero, estado_civil, dt_nascimento, cpf_or_cnpj, nm_mae, nm_pai, dt_admissao, salario, tipo_do_contrato, tipo_ticket, fl_vl_transporte, departamento)
values('Maria da Silva Carvalho', 'BRANCO', 'SP', 'SÃO PAULO', 'Feminino', 'Casado', '1998-03-30', '15679492742', 'Joana Silva', 'Carlos Carvalho', '2020-03-06', 1200.00, 'TEMPORÁRIO', 'N/A', 'N/A', 'Recursos Humanos');

insert into COLABORADOR (nome_colaborador, etnia, uf_natural, cidade_natural, genero, estado_civil, dt_nascimento, cpf_or_cnpj, nm_mae, nm_pai, dt_admissao, salario, tipo_do_contrato, tipo_ticket, fl_vl_transporte, departamento)
values('João dos Santos Prado', 'INDÍGENA', 'MG', 'Belo Horizonte', 'Masculino', 'Solteiro', '2001-08-17', '15679492743', 'Roberta Santos', 'Roberto Prado', '2020-03-07', 3500.00, 'CLT', 'N/A', 'N/A', 'Financeiro');

insert into COLABORADOR (nome_colaborador, etnia, uf_natural, cidade_natural, genero, estado_civil, dt_nascimento, cpf_or_cnpj, nm_mae, nm_pai, dt_admissao, salario, tipo_do_contrato, tipo_ticket, fl_vl_transporte, departamento)
values('Ian Oliveira', 'BRANCO', 'ES', 'Iúna', 'Masculino', 'Solteiro', '1999-05-30', '15679492744', 'Maria Silva dos Santos', 'Sergio Oliveira', '2021-03-03', 2300.00, 'PJ', 'N/A', 'N/A', 'Business Inteligence');

insert into COLABORADOR (nome_colaborador, etnia, uf_natural, cidade_natural, genero, estado_civil, dt_nascimento, cpf_or_cnpj, nm_mae, nm_pai, dt_admissao, salario, tipo_do_contrato, tipo_ticket, fl_vl_transporte, departamento)
values('Silvio Oliveira Santos', 'NEGRO', 'RJ', 'Rio de Janeiro', 'Masculino', 'Solteiro', '1999-01-30', '15679492745', 'Maria dos Santos', 'Carlos Oliveira', '2021-03-03', 2800.00, 'PJ', 'N/A', 'N/A', 'Business Inteligence');

insert into 
COLABORADOR (nome_colaborador, etnia, uf_natural, cidade_natural, genero, estado_civil, dt_nascimento, cpf_or_cnpj, nm_mae, nm_pai, dt_admissao, salario, tipo_do_contrato, tipo_ticket, fl_vl_transporte, departamento)
values
('Bruno Prata', 'NEGRO', 'RJ', 'Rio de Janeiro', 'Masculino', 'Solteiro', '1992-01-30', '15679492750', 'Maria Cardoso', 'Carlos Prata', '2021-03-03', 10000.00, 'PJ', 'N/A', 'N/A', 'Recursos Humanos'),
('Fernando Moraes', 'Indigena', 'RS', 'Porto Alegre', 'Masculino', 'Casado', '1998-06-26', '15679492751', 'Marlene Moraes', 'Milton Moraes', '2019-12-12', 3500, 'CLT', 'TIPO 2', 'N/A', 'Desenvolvimento Web'),
('Fernando Meireles', 'Indigena', 'RS', 'Porto Alegre', 'Masculino', 'Casado', '1998-06-26', '15679492752', 'Marlene Moraes', 'Milton Moraes', '2019-12-12', 3500, 'CLT', 'TIPO 2', 'N/A', 'Desenvolvimento Web'),
('Andreia Felipe Santos', 'Indigena', 'MG', 'Manhuaõ', 'Feminino', 'Casado', '1998-06-26', '15679492753', 'Marlene Moraes', 'Milton Moraes', '2019-12-12', 3500, 'CLT', 'TIPO 2', 'N/A', 'Desenvolvimento Web');






















insert into endereco(LUGRADOURO,NUMERO, COMPLEMENTO, CEP,BAIRRO,ESTADO,CIDADE)
values('RUA MARIA CAETANO VALLI', 9, 'PRÓXIMO AO BAR DO MARCÍLIO', '29500-000', 'ALTO UNIVERSITÁRIO', 'Espírito Santo', 'ALEGRE');

insert into colaborador_endereco(id_colaborador, id_endereco) values(1,1);

insert into tipo_contrato (id_colaborador,nome_tipo_contrato) values(1, 'TEMPORÁRIO');

insert into ticket (id_colaborador, nome_ticket) values (1, 'N/A');

insert into formacao_academica (id_colaborador,escolaridade,instituicao,curso,ano_conclusao)
values(1, 'Ensino Superior Completo', 'UNIVERSIDADE FEDERAL DO ESPÍRITO SANTO - CAMPUS ALEGRE', 'Ciências da Computação', '2023');

insert into dados_bancarios (id_colaborador, banco, agencia, conta, tipo_conta)
values(1, 'NUBANK', '000', '01', 'POUPANÇA');

insert into contatos(id_colaborador, email, celular, residencial) values(1,'luannlaurindo@gmail.com','999490122', 'N/A');

insert into contato_emergencia (id_colaborador, nome, contato)
values(1, 'SEBASTIAO MARCELO LAURINDO', '999999');

insert into dependentes (id_colaborador, nome_dependente, dt_nascimento, nome_mae, nome_pai, email, cpf, relacao_parental)
values(1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A');

insert into relacao_parental(id_dependentes, nome_relacao, id_colaborador)
values(2,'N/A',1);

insert into departamento (nome_departamento, id_gestor)
values ('Desenvolvimento web', 1);

insert into equipamento (data_aquisicao,tipo_equipamento) 
values ('2020-12-12', 'Notebook');

insert into colaborador_equipamento (data_atribuicao, id_colaborador, id_equipamento)
values('2020-03-17', 1, 1);

insert into ferias (id_colaborador, dt_solicitacao, dt_aprovacao, dt_inicio, dt_fim, qt_dias_abono, fl_antecipar_13, justificativa)
values(1,'2020-12-12', '2021-11-11', '2021-12-12', '2022-12-12', 30, true, 'N/A');

insert into holerite(dt_referencia, tipo_pagamento, id_colaborador, desconto, valor)
values('2020-12-12', 'TIPO', 1, 10, 10);

insert into colaborador_departamento(id_colaborador, id_departamento)
values(1,1);

























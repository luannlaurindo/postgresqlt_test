--select * from comissao c2  ;
--select * from comissao_historico ch ;
--select * from comissao_draft cd ;
--select * from beneficiario b ;

select b.nm_beneficiario, SUM(c.vl_comissao), c.dt_comissao_inicio_beneficio
from beneficiario b, comissao c
where cast(b.nr_beneficiario_cpf as varchar) = c.nr_comissao_cpf and c.id_comissao_contrato = '47036'
group by c.dt_comissao_inicio_beneficio, b.nm_beneficiario ;

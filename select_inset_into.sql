select  'INSERT INTO dbo.Usuario(Matricula, CPF, Nome, Email, DataNascimento, Sigla, Inativo) values ('''|| s.siape || ''','''|| p.cpf_cnpj||''','''||p.nome||''','''||u.email||''', CONVERT(DATETIME, ''' ||p.data_nascimento||''', 102),'''||u.login||''',0)'
from comum.pessoa p
INNER JOIN  rh.servidor s 
ON p.id_pessoa = s.id_pessoa
INNER JOIN  comum.usuario u 
ON p.id_pessoa = u.id_pessoa
WHERE s.id_ativo = 1
ORDER BY p.nome;

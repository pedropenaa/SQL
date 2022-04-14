CREATE DATABASE bd_pessoas;
drop database bd_pessoas;

USE bd_pessoas;

CREATE TABLE tb_pessoa(
  idt_pessoa INT AUTO_INCREMENT PRIMARY KEY,
  nme_pessoa VARCHAR(50) NOT NULL,
  end_pessoa TEXT,
  tel_pessoa VARCHAR(20) NOT NULL,
  placa_carro varchar(50) not null,
  cpf_pessoa varchar(20) not null,
  model_veiculo text
);
-- Salvar Inclusão:
INSERT INTO tb_pessoa (nme_pessoa, end_pessoa, tel_pessoa, placa_carro, cpf_pessoa, model_veiculo)
values ('Pedro Henrique Pena Neves', 'quadra 6 conj c casa 3',' 61 984385678',' ped - 0987','05334899111', 'gol');

-- Pesquisar:
SELECT * FROM tb_pessoa WHERE nme_pessoa LIKE CONCAT('%', 'Pedro', '%');

 -- Editar:
SELECT * FROM tb_pessoa WHERE idt_pessoa=1;

-- Salvar Alterações:
UPDATE tb_pessoa SET nme_pessoa='Pedro Henrique Pena Neves', end_pessoa='quadra 6 conj c casas 3 ', tel_pessoa='984385678' WHERE idt_pessoa=1;


-- Excluir:
DELETE FROM tb_pessoa WHERE idt_pessoa=1;

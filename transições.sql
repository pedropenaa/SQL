create database tb_produto ;
use tb_produto;
drop database tb_produto;



CREATE TABLE tb_produto(
 idt_produto          INT AUTO_INCREMENT PRIMARY KEY,
 nme_produto          VARCHAR(50) NOT NULL,
 vlr_produto          DECIMAL(18,2) NOT NULL,
 qtd_estoque_produto  INT NOT NULL
);

create table tb_compra(
  idt_compra int auto_increment primary key,
  cod_compra datetime not null,
  nme_cliente_compra varchar (50) not null,
  vlr_compra decimal ( 30, 2) not null);
[

CREATE TABLE tb_item(
 idt_item     INT AUTO_INCREMENT PRIMARY KEY,
 cod_compra   INT NOT NULL,
 cod_produto  INT NOT NULL,
 qtd_item     INT NOT NULL,
 CONSTRAINT fk_produto_item FOREIGN KEY (cod_produto)
   REFERENCES tb_produto(idt_produto),
 CONSTRAINT fk_compra_item FOREIGN KEY (cod_compra)
   REFERENCES tb_compra(idt_comnpra)

);

INSERT INTO tb_produto(nme_produto, vlr_produto, qtd_estoque_produto)
 VALUES ('Açai', 7.50, 20), ('Doritos', 12.50, 17), ('Frango', 9.90, 32),
 ('Coca Cola', 6.50, 62), ('Hamburguer', 0.99, 134);



insert into tb_item(cod_compra, cod_produto, qtd_item)
 values (1,1,2);

insert into tb_compra(,nme_cliente_compra,vlr_compra)
values ('arroz',10.50),('feijao',20.50),('açaucar',22.50)



update tb_compra set vlr_compra = vlr_compra + 11 where idt_compra=1 ;

update tb_compra set qtd_estoque_produto= qts_estoque_produto -2 where idt_produto = 1 ;

insert into tb_item(cod_compra, cod_produto, qtd_item)
values (1,2,1);
update tb_compra set vlr_compra = vlr_compra+1.50 where idt_compra=1;

UPDATE tb_produto SET qtd_estoque_produto=qtd_estoque_produto-1

WHERE idt_produto=2

--Fazendo a compra 3

INSERT INTO tb_item(cod_compra, cod_produto, qtd_item)
VALUES (1,5,1);

--Update na tabela compra 3

UPDATE tb_compra SET vlr_compra=vlr_compra+10 WHERE idt_compra=1;

--Update na tabela produto 3

UPDATE tb_produto SET qtd_estoque_produto=qtd_estoque_produto-1
WHERE idt_produto=5;

--Deletar um item da compra

DELETE FROM tb_item WHERE idt_item=3;

--Update na tabela compra

UPDATE tb_compra SET vlr_compra=vlr_compra-1.50 WHERE idt_compra=1;

UPDATE tb_produto SET qtd_estoque_produto=qtd_estoque_produto+1
WHERE idt_produto=2


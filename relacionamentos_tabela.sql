DROP DATABASE bd_vagas;

CREATE DATABASE bd_vagas;

USE bd_vagas;

CREATE TABLE tb_vagas(
  idt_emp INT AUTO_INCREMENT PRIMARY KEY,
  nme_emp VARCHAR(50)   NOT NULL,
  cnpj_emp char(14)     NOT NULL,
  tel_emp varchar(20)   not null,
  end_emp varchar(50)   not null,
);

CREATE TABLE tb_area(
  idt_area INT AUTO_INCREMENT PRIMARY KEY,
  nme_area VARCHAR(50) NOT NULL
);

CREATE TABLE tb_vaga(
  idt_vaga INT AUTO_INCREMENT PRIMARY KEY,
  num_ch_carga int  NOT NULL,
  vlr_bolsa_vaga decimal(8,2) not null,
  cod_emp int not null,
  cod_area int not null,
  constraint fk_emp_vaga foreign key(cod_emp)
   references tb_emp(idt_emp),
  constraint fk_area_vaga foreign key (cod_area)
   references tb_area(idt_area)
);
 insert into tb_emp(nme_emp cnpj_emp,tel_emp,end_emp)
   values ('bancos do brasil','1234.567891-23','(61)4002822','906 Norte')
          ('caixa economica','1234.567891-23','(61)4002822','124 Norte')
          ('extra super mecado','1234.567891-23','(61)4002822','202 Norte')

insert into tb_area(nme_area)values
 ('tecnologia'),
 ('administração'),
 ('biblioteconomia'),
 ('direito');

insert into tb_vagas(num_ch_vagas, vlr_bolsa_vagas,cod_emp,cod_area) values
(4,1000,1,1),(6,1200,1,1),(6,800,2,1),
(6,1500,1,4),(6,800,1,3),(6,800,2,3),
(4,600,3,2), (6,1250,2,4),(4,750,3,4);


select * from tb_vaga where cod_area=1;
select *from tb_vagas where cod_emp=2;
select  min(vlr_bolsa_vaga), max(vlr_bolsa_vaga) from tb_vaga;
select nme_area, min(vlr_bolsa_vaga), max(vlr_bolsa_vaga), avg(vlr_bolsa_vaga)
from tb_vaga join tb_area on idt_area = cod_arera group by cod_arear;


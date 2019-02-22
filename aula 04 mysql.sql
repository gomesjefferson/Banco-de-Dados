create database ESTACIO;
DROP DATABASE ESTACIO;
CREATE TABLE tb_cargo (
id_cargo integer,
ds_cargo varchar(40) NOT NULL,
   valor numeric(15,2) NOT NULL,
fg_ativo integer,
PRIMARY KEY (id_cargo));

DROP TABLE tb_cargo;

use ESTACIO;

use ESTACIO;


DESCRIBE tb_cargo;

CREATE TABLE tb_escolaridade (
id_escolaridade integer,
ds_escolaridade varchar(40) NOT NULL,
       fg_ativo integer,
PRIMARY KEY (id_escolaridade));

describe tb_escolaridade;

drop table tb_funcionario;
CREATE TABLE tb_funcionario (
 id_funcionario integer,
       nome varchar(40),
        cpf varchar(15),
         rg varchar(15),
       dt_adm timestamp,
     id_gerente integer,
       id_cargo integer,
id_escolaridade integer,
	   fg_ativo integer,
PRIMARY KEY (id_funcionario),
foreign key (id_gerente) references tb_funcionario (id_funcionario),
foreign key (id_cargo) references tb_cargo (id_cargo),
foreign key (id_escolaridade) references tb_escolaridade (id_escolaridade));

CREATE TABLE id_dependente (
 id_dependente integer,
id_funcionario integer,
		  nome varchar (40) NOT NULL,
 dt_nascimento timestamp NOT NULL,
     descricao varchar(40) NOT NULL,
      fg_ativo integer,
PRIMARY KEY (id_dependente),
FOREIGN KEY (id_funcionario) references
tb_funcionario (id_funcionario));

CREATE TABLE tb_telefone (
   id_telefone integer,
id_funcionario integer NOT NULL,
          tipo char(1) NOT NULL,
           ddd varchar(3) NOT NULL,
      telefone VARCHAR(10) NOT NULL,
           obs VARCHAR(40),
      fg_ativo integer,
PRIMARY KEY (id_telefone),
FOREIGN KEY (id_funcionario) references
tb_funcionario (id_funcionario));

drop table id_dependente;

alter table tb_cargo add funcao varchar(40);
alter table tb_cargo drop funcao;
alter table tb_cargo modify ds_cargo varchar(60);

insert into tb_cargo
(id_cargo, ds_cargo, valor,fg_ativo)
values
(1,'Analista de Sistema', 42000.00,1),
(2,'Administrado de BD', 7900.00,1),
(3,'Desenvolvedor C#', 5740.00,1);

select *
from tb_cargo;





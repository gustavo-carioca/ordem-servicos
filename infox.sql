create database dbinfox;



use dbinfox;

create table tbusuarios(
iduser int primary key,
usuario varchar (50) not null,
fone varchar(15),
login varchar(15) not null unique,
senha varchar (15) not null
);

describe tbusuarios;

insert into tbusuarios(iduser,usuario,fone,login,senha)
values (1,'adiministrador','992572132','admin','admin');

insert into tbusuarios(iduser,usuario,fone,login,senha,perfil)
values (2,'Gustavo Carioca','39441151','gustavocarioca','gustavo1810','admin');

insert into tbusuarios(iduser,usuario,fone,login,senha)
values (3,'Bill Gates','992572132','bill','123456');
select * from tbusuarios;

-- modifica dados da tabela 

update tbusuarios set fone = '985503773' where iduser = 3;

delete from tbusuarios  where iduser= 4;

create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar (50) not null,
endcli varchar (100),
fonecli varchar(50) not null,
emailcli varchar(50)
);

describe tbclientes;

insert into tbclientes(nomecli,endcli,fonecli,emailcli)
values ('Marcos Rogério','av alexios jaffet, 1811','964596181','gd7@uol.com.br');

select * from tbclientes;

create table tbos(
os int primary key auto_increment,
data_os timestamp default current_timestamp,
equipamento varchar(150) not null,
defeito varchar(150) not null,
servico varchar(150),
tecnico varchar(30),
valor decimal (10,2),
idcli int not null,
foreign key(idcli) references tbclientes(idcli)
);

describe tbos;

insert into tbos(equipamento,defeito,servico,tecnico,valor,idcli)
values ('notebook','nao liga','troca da fonte','Zé',87.50,1);

select * from tbos;

-- o codigo abaixo trás informacoes de duas tabales

select
O.os,equipamento,defeito,servico,valor,
C.nomecli,fonecli
from tbos as O 
inner join tbclientes as C 
on (O.idcli = C.idcli);

select * from tbusuarios where login='admin' and senha='admin';

insert into tbusuarios(iduser,usuario,fone,login,senha,perfil)
values (4,'Solange Maria','9999-9999','smcarioca','123','user');


-- manipulando usuarios 

describe tbusuarios;

select * from tbusuarios;

-- adiciona mais um campo a tabela
alter table tbusuarios add column perfil varchar(20) not null;

-- a linha abaixo remove um campo de uma tabele 
alter table tbusuarios drop column perfil;
update tbusuarios set perfil = 'admin' where iduser=1;
update tbusuarios set perfil = 'user' where iduser=3;

insert into tbusuarios(iduser,usuario,fone,login,senha,perfil)
values (2,'Gustavo Carioca','964596181','gustavosilva','gustavo1810','user');

select * from tbusuarios where iduser=2;

describe tbclientes;

select * from tbclientes;

select * from tbclientes where nomecli like 'jo%';



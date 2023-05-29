create database track;

use track;

create table limites(
idLimites int primary key auto_increment,
horario datetime,
maxCpu decimal(10,2),
maxDisco decimal(10,2),
maxRam decimal(10,2),
fkMaquina int, foreign key (fkMaquina) references Maquina(idMaquina));

create table janelasBloqueadas (
idJanelasBloqueadas int primary key auto_increment,
nome varchar(45),
endereco varchar(100),
fkEmpresa int, foreign key (fkEmpresa) references empresa(idEmpresa));

create table empresa(
idEmpresa int primary key auto_increment,
nomeEmpresa varchar(100),
emailEmpresa varchar(256),
senha varchar(20),
cnpj char(14),
rua varchar(150),
bairro varchar(50),
estado varchar(50),
cep char(8),
numero int);

create table funcionario(
idFuncionario int primary key auto_increment,
nome varchar(45),
email varchar(256),
cpf char(11),
cargo varchar(45),
senha varchar(20),
fkEmpresa int, foreign key (fkEmpresa) references empresa(idEmpresa));

create table maquina(
idMaquina int primary key auto_increment,
status bit,
hostnameMaquina varchar(100),
nomeModeloCpu varchar(100),
clockCpu decimal(10,2),
nomeModeloRam varchar(45),
capacidadeTotalRam decimal(10,2),
nomeModeloDisco varchar(100),
capacidadeTotalDisco decimal(10,2),
leituraDisco decimal(10,2),
escritaDisco decimal(10,2),
fkEmpresa int , foreign key (fkEmpresa) references empresa(idEmpresa));

create table placaRede (
idRede int primary key auto_increment,
nomeRede varchar(50),
nomeExibicao varchar(70),
ipv4 char(15),
mac char(17),
fkMaquina int, foreign key (fkMaquina) references maquina(idMaquina));

create table log(
idLog int primary key auto_increment,
horarioCapturado datetime default current_timestamp,
janelaPid int,
tituloJanela varchar(150),
usoCpu decimal(10,2),
usoDisco decimal(10,2),
usoRam decimal(10,2),
bytesEnviados int,
bytesRecebidos int,
fkMaquina int, foreign key (fkMaquina) references maquina(idMaquina));



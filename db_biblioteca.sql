create database db_biblioteca;

use db_biblioteca;

create table livros(
id int auto_increment primary key,
titulo varchar(100),
autor varchar(50),
ano_publicacao int
);

INSERT INTO livros (id, titulo, autor, ano_publicacao)
VALUES
(1, 'Dom Casmurro', 'Machado de Assis', 1899),
(2, 'O Alienista', 'Machado de Assis', 1882),
(3, 'Memórias Póstumas de Brás cubas', 'Machado de Assis', 1881),
(4, 'Capitães da Areia', 'Jorge Amado', 1937);

select * from livros;

select titulo, autor from livros;

select * from livros  where autor = 'Machado de Assis';

SET SQL_SAFE_UPDATES = 0;

UPDATE livros
SET ano_publicacao = 1938
WHERE titulo = 'Capitães da Areia';

select * from livros;
[20:27, 03/12/2025] +55 83 9685-8434: Pratica aula.sql

create database Sys_vendas;

use sys_vendas;

create table cliente (
id int, 
nome Varchar(100),
email varchar(150),
data_nascimento date,
ativo boolean
);

alter table cliente
add column telefone varchar(20);

alter table cliente
modify column email varchar(200);

alter table cliente
drop column ativo;

create table produto (
id int primary key,
nome varchar(100) not null,
preco decimal(10,2) check (preco > 0),
codigo_baras varchar(13) unique,
estoque int not null default 0
);

create table pedidos (
id int primary key,
nome varchar(100) not null,
produto_id int not null,
quantidade int check (quantidade > 0),
data_pedido date not null,
foreign key (produto_id)
references produto(id)
);

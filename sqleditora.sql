Create database Nick;
use Nick;

Create Table tb_autor
cd_autor int,
nm_autor varchar(45)
);

Create Table tb_livro(
isbn char(15),
nm_livro varchar(50),
nm_editora varchar(30),
qt_paginas int,
nr_edicao int,
aa_edicao year,
fk_cd_autor int,
foreign key (fk_cd_autor) references tb_autor (cd_autor)
);

Create table tb_categoria(
cd_categoria int,
nm_categoria varchar(20),
ds_categoria longtext
);

Create table tb_item_categoria(
cd_item int,
fk_tb_livro_isbn char(13),
fk_tb_categoria_cd_categoria int,
foreign key (fk_tb_livro_isbn) references tb_livro (isbn),
foreign key (fk_tb_categoria_cd_categoria) references tb_categoria (cd_categoria)
);

Create Table tb_editora(
cd_editora int,
nm_editora varchar(50),
nr_fone char(11)
);

alter table tb_livro
add fk_tb_editora_cd_editora int;




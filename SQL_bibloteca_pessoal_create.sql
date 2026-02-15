-- Criar o banco de dados
-- CREATE DATABASE biblioteca_pessoal;

-- Selecionar o banco para usar
USE biblioteca_pessoal;


CREATE TABLE autores (
    idAutor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    pais VARCHAR(50),
    ano_nascimento INT
);


CREATE TABLE livros (
    idLivro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    autor_id INT,
    ano_publicacao INT,
    genero VARCHAR(50),
    FOREIGN KEY (autor_id) REFERENCES autores(idAutor)
);


CREATE TABLE emprestimos (
    idEmprestimo INT AUTO_INCREMENT PRIMARY KEY,
    livro_id INT NOT NULL,
    nome_pessoa VARCHAR(100) NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,
    FOREIGN KEY (livro_id) REFERENCES livros(idLivro)
);


-- Ver todas as tabelas
SHOW TABLES;

-- Ver a estrutura de uma tabela específica
DESCRIBE autores;
DESCRIBE livros;
DESCRIBE emprestimos;




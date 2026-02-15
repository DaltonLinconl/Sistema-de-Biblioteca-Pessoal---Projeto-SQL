use biblioteca_pessoal;

-- Ver todos os livros
SELECT * FROM livros;

-- Ver todos os autores
SELECT * FROM autores;


-- Ver apenas título e ano dos livros
SELECT titulo, ano_publicacao FROM livros;

-- Ver apenas nome dos autores
SELECT nome FROM autores;


-- Livros publicados depois de 1950
SELECT titulo, ano_publicacao 
FROM livros 
WHERE ano_publicacao > 1950;

-- Livros do gênero Romance
SELECT titulo, genero 
FROM livros 
WHERE genero = 'Romance';

-- Autores do Brasil
SELECT nome, pais 
FROM autores 
WHERE pais = 'Brasil';

-- Contar quantos livros temos
SELECT COUNT(*) AS total_livros FROM livros;

-- Ano do livro mais antigo
SELECT MIN(ano_publicacao) AS livro_mais_antigo FROM livros;

-- Ano do livro mais recente
SELECT MAX(ano_publicacao) AS livro_mais_recente FROM livros;

-- Média dos anos de publicação
SELECT AVG(ano_publicacao) AS ano_medio FROM livros;


-- Quantos livros cada autor escreveu
SELECT autor_id, COUNT(*) AS quantidade_livros
FROM livros
GROUP BY autor_id;

-- Quantos livros por gênero
SELECT genero, COUNT(*) AS quantidade
FROM livros
GROUP BY genero;

-- Quantos empréstimos cada pessoa fez
SELECT nome_pessoa, COUNT(*) AS total_emprestimos
FROM emprestimos
GROUP BY nome_pessoa;

use biblioteca_pessoal;


-- Inserir vários autores de uma vez
INSERT INTO autores (nome, pais, ano_nascimento) VALUES
	('Machado de Assis', 'Brasil', 1839),
	('Clarice Lispector', 'Brasil', 1920),
	('George Orwell', 'Inglaterra', 1903),
	('Gabriel García Márquez', 'Colômbia', 1927),
	('J.K. Rowling', 'Inglaterra', 1965);

SELECT * FROM autores;


INSERT INTO livros (titulo, autor_id, ano_publicacao, genero) VALUES
	('Dom Casmurro', 1, 1899, 'Romance'),
	('A Hora da Estrela', 2, 1977, 'Romance'),
	('1984', 3, 1949, 'Ficção Distópica'),
	('Cem Anos de Solidão', 4, 1967, 'Realismo Mágico'),
	('Harry Potter e a Pedra Filosofal', 5, 1997, 'Fantasia'),
	('Memórias Póstumas de Brás Cubas', 1, 1881, 'Romance'),
	('A Paixão Segundo G.H.', 2, 1964, 'Romance');
    
    

INSERT INTO emprestimos (livro_id, nome_pessoa, data_emprestimo, data_devolucao) VALUES
	(1, 'João Silva', '2024-01-15', '2024-02-01'),
	(3, 'Maria Santos', '2024-02-10', NULL),
	(5, 'Pedro Costa', '2024-01-20', '2024-02-05'),
	(2, 'Ana Oliveira', '2024-02-15', NULL),
	(5, 'João Silva', '2024-02-20', NULL);
# 📚 Sistema de Biblioteca Pessoal - Projeto SQL

Projeto didático de banco de dados MySQL para aprendizado de SQL, desenvolvido como um sistema simples de gerenciamento de biblioteca pessoal.

## 📋 Sobre o Projeto

Este é um projeto educacional que demonstra conceitos fundamentais de banco de dados relacionais, incluindo:

- Criação de tabelas e relacionamentos
- Chaves primárias e estrangeiras
- Inserção, consulta, atualização e exclusão de dados
- Consultas com filtros, ordenação e agregação


## 🗂️ Estrutura do Banco de Dados

O banco de dados `biblioteca_pessoal` contém 3 tabelas principais:

### Tabela: `autores`
| Campo | Tipo | Descrição |
|-------|------|-----------|
| idAutor | INT (PK, AUTO_INCREMENT) | Identificador único |
| nome | VARCHAR(100) | Nome completo do autor |
| pais | VARCHAR(50) | País de origem |
| ano_nascimento | INT | Ano de nascimento |

### Tabela: `livros`
| Campo | Tipo | Descrição |
|-------|------|-----------|
| idLivro | INT (PK, AUTO_INCREMENT) | Identificador único |
| titulo | VARCHAR(200) | Título do livro |
| autor_id | INT (FK) | Referência ao autor |
| ano_publicacao | INT | Ano de publicação |
| genero | VARCHAR(50) | Gênero literário |

### Tabela: `emprestimos`
| Campo | Tipo | Descrição |
|-------|------|-----------|
| idEmprestimo | INT (PK, AUTO_INCREMENT) | Identificador único |
| livro_id | INT (FK) | Referência ao livro |
| nome_pessoa | VARCHAR(100) | Nome de quem pegou emprestado |
| data_emprestimo | DATE | Data do empréstimo |
| data_devolucao | DATE | Data da devolução (NULL se não devolvido) |

### Diagrama de Relacionamentos
```
autores (1) ──────< (N) livros (1) ──────< (N) emprestimos
```

## 📚 Etapas do Projeto

### Etapa 1: Planejamento
- Definição das entidades e relacionamentos
- Esboço do modelo de dados

### Etapa 2: Criação das Tabelas
- CREATE DATABASE
- CREATE TABLE
- Definição de PRIMARY KEY e FOREIGN KEY

### Etapa 3: Inserção de Dados
- INSERT INTO
- Populando o banco com dados de exemplo

### Etapa 4: Consultas
- SELECT simples e com filtros
- WHERE, ORDER BY, LIMIT
- Funções de agregação (COUNT, MIN, MAX, AVG)
- GROUP BY



## 🎓 Conceitos Aprendidos

- Modelagem de dados
- Normalização básica
- Tipos de dados SQL
- Constraints (NOT NULL, PRIMARY KEY, FOREIGN KEY)
- CRUD básico (Create, Read)
- Filtragem e ordenação
- Funções de agregação
- Agrupamento de dados


## 📁 Estrutura de Arquivos

```
biblioteca-pessoal-sql/
├── README.md
├── SQL_bibloteca_pessoal_create.sql
├── SQL_bibloteca_pessoal_insert.sql
└── SQL_bibloteca_pessoal_queries.sql

```


---

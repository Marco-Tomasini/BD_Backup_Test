CREATE DATABASE IF NOT EXISTS biblioteca_marco_migracao;
USE biblioteca_marco_migracao;

CREATE TABLE autor (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(50) NOT NULL
);

CREATE TABLE livro (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    ano_publicacao INT NOT NULL,
    id_autor_fk INT NOT NULL,
    FOREIGN KEY (id_autor_fk) REFERENCES autor(id_autor)
);
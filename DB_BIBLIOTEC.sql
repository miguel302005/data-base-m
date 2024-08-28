CREATE DATABASE db_bibliotec;
USE db_bibliotec;

CREATE TABLE author (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NULL,
    phone VARCHAR(10) NULL,
    create_at DATETIME,
    update_at DATETIME
);

CREATE TABLE books (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_author INT,
    code_book VARCHAR(4) NOT NULL,
    name VARCHAR(50) NOT NULL,
    title VARCHAR(100) NOT NULL,
    publisher DATE NOT NULL,
    sbn CHAR(12),
    create_at DATETIME,
    update_at DATETIME,
    FOREIGN KEY (id_author) REFERENCES author(id)
);

CREATE TABLE user (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NULL,
    phone VARCHAR(11) NULL,
    create_at DATETIME,
    update_at DATETIME
);

CREATE TABLE loan (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_user INT,
    id_book INT,
    loan_date DATETIME NOT NULL,
    return_date DATETIME NULL,
    create_at DATETIME,
    update_at DATETIME,
    FOREIGN KEY (id_user) REFERENCES user(id),
    FOREIGN KEY (id_book) REFERENCES books(id)
);
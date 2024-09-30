create database covid19;
use covid19;

/* Tabela Regioes_Pais */
CREATE TABLE regioes_pais (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_regiao_pais VARCHAR(100) NOT NULL UNIQUE
); 

/* Tabela Estados */
CREATE TABLE estados (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_estado VARCHAR(100) NOT NULL,
    codigo_estado VARCHAR(100) NOT NULL UNIQUE,
    id_regiao_pais INT, /* Chave estrangeira para a tabela regioes_pais */
    FOREIGN KEY (id_regiao_pais) REFERENCES regioes_pais(id)
);

CREATE TABLE municipios (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    codigo_municipio VARCHAR(100) NOT NULL UNIQUE,
    nome_municipio VARCHAR(150) NOT NULL,
    id_estado INT, /* Chave estrangeira para a tabela estado */
    FOREIGN KEY (id_estado) REFERENCES estados(id)
);

/* Tabela Regioes_Estados */
CREATE TABLE regioes_estados (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_regiao_estado VARCHAR(100) NOT NULL,
    codigo_regiao_estado VARCHAR(100) NOT NULL UNIQUE,
    id_estado INT, /* Chave estrangeira para a tabela estado */
    FOREIGN KEY (id_estado) REFERENCES estados(id)
);

CREATE TABLE classificacao_localidade (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_classificacao VARCHAR(50) NOT NULL UNIQUE /* Exemplo: "Interior", "Metropolitano" */
);

/*tabela Dados Epidemiologicos*/
CREATE TABLE dados_epidemiologicos (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    data_registro DATE NOT NULL,
    id_municipio INT, /* Chave estrangeira para a tabela municipios */
    semana_epi INT, 
    populacao_tcu_2019 INT, 
    casos_acumulado INT, 
    casos_novos INT, 
    obitos_acumulado INT, 
    obitos_novos INT, 
    recuperados_novos INT, 
    em_acompanhamento_novos INT, 
    id_classificacao_localidade INT,
    FOREIGN KEY (id_municipio) REFERENCES municipios(id),
    FOREIGN KEY (id_classificacao_localidade) REFERENCES classificacao_localidade(id)
);

ALTER TABLE estados
ADD uf varchar(2) NOT NULL UNIQUE;

ALTER TABLE classificacao_localidade
ADD codigo_classificacao varchar(2) NOT NULL UNIQUE;

insert into classificacao_localidade  (nome_classificacao, codigo_classificacao)
values
('Interior','0'),
('Metropolitano','1');

UPDATE estados
SET nome_estado = 'Brasília'
WHERE nome_estado = 'Distrito Federal';
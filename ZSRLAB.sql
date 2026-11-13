CREATE TABLE PROPRIETARIO (
    idProprietario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    cognome VARCHAR(50),
    dataNascita DATE,
    telefono VARCHAR(20),
    email VARCHAR(100)
);
CREATE TABLE OFFICINA (
    idOfficina INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    città VARCHAR(50),
    telefono VARCHAR(20)
);
CREATE TABLE MODIFICA (
    idModifica INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    costo DECIMAL(8,2),
    incrementoPrestazioni INT
);
CREATE TABLE AUTO (
    targa VARCHAR(10) PRIMARY KEY,
    marca VARCHAR(30),
    modello VARCHAR(30),
    anno INT,
    cilindrata INT,
    colore VARCHAR(20),
    idProprietario INT,
    FOREIGN KEY (idProprietario) REFERENCES PROPRIETARIO(idProprietario)
);
CREATE TABLE MODIFICA_MECCANICA (
    idModifica INT PRIMARY KEY,
    tipoMotore VARCHAR(50),
    aumentoCoppia INT,
    FOREIGN KEY (idModifica) REFERENCES MODIFICA(idModifica)
);
CREATE TABLE MODIFICA_ESTETICA (
    idModifica INT PRIMARY KEY,
    colore VARCHAR(30),
    materiale VARCHAR(30),
    FOREIGN KEY (idModifica) REFERENCES MODIFICA(idModifica)
);
CREATE TABLE INSTALLA (
    targa VARCHAR(10),
    idModifica INT,
    dataInstallazione DATE,
    costoManodopera DECIMAL(8,2),
    PRIMARY KEY (targa, idModifica),
    FOREIGN KEY (targa) REFERENCES AUTO(targa),
    FOREIGN KEY (idModifica) REFERENCES MODIFICA(idModifica)
);



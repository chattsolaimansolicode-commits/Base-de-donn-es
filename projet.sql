  
    CREATE DATABASE projet;
USE projet;

CREATE TABLE EMPLOYE (
    id_EMPLOYE INT PRIMARY KEY AUTO_INCREMENT,
    Nom VARCHAR(50) NOT NULL,
    Prenom VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Role VARCHAR(100) NOT NULL
);

CREATE TABLE PROJET (
    id_projet INT PRIMARY KEY AUTO_INCREMENT,
    nom_projet VARCHAR(150) NOT NULL,
    description TEXT,
    date_debut DATE NOT NULL,
    date_fin DATE NOT NULL,
    statut ENUM('publié','brouillon','archivé') NOT NULL DEFAULT 'brouillon',
    id_EMPLOYE INT NOT NULL,
    FOREIGN KEY (id_EMPLOYE) REFERENCES EMPLOYE (id_EMPLOYE)
);

CREATE TABLE TACHE (
    id_tache INT AUTO_INCREMENT PRIMARY KEY,
    description TEXT,
    date_limite DATE NOT NULL,
    statut ENUM('publié','brouillon','archivé') NOT NULL DEFAULT 'brouillon',
    priorite ENUM('haute','moyenne','basse'),
    id_projet INT NOT NULL,
    id_EMPLOYE INT NOT NULL,
    FOREIGN KEY (id_projet) REFERENCES PROJET (id_projet),
    FOREIGN KEY (id_EMPLOYE) REFERENCES EMPLOYE (id_EMPLOYE)
);



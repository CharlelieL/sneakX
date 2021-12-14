DROP DATABASE IF EXISTS bdSneakX;

CREATE DATABASE IF NOT EXISTS bdSneakX;
USE bdSneakX;
# -----------------------------------------------------------------------------
#       TABLE : IMAGE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS IMAGE
 (
   IDCHAUSSURE INTEGER(2) NOT NULL  ,
   IDIMAGE INTEGER(2) NOT NULL AUTO_INCREMENT ,
   PHOTO LONGBLOB NOT NULL  
   , PRIMARY KEY (IDCHAUSSURE,IDIMAGE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE IMAGE
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_IMAGE_CHAUSSURE
     ON IMAGE (IDCHAUSSURE ASC);

# -----------------------------------------------------------------------------
#       TABLE : UTILISATEUR
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS UTILISATEUR
 (
   IDUTILISATEUR INTEGER(2) NOT NULL AUTO_INCREMENT ,
   NOM CHAR(32) NOT NULL  ,
   PRENOM CHAR(32) NOT NULL  ,
   MOTDEPASSE VARCHAR(128) NOT NULL  
   , PRIMARY KEY (IDUTILISATEUR) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : MARQUE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS MARQUE
 (
   IDMARQUE INTEGER(2) NOT NULL AUTO_INCREMENT ,
   NOMMARQUE VARCHAR(128) NOT NULL  
   , PRIMARY KEY (IDMARQUE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : SAISON
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS SAISON
 (
   IDSAISON INTEGER(2) NOT NULL AUTO_INCREMENT ,
   NOMSAISON CHAR(32) NOT NULL  
   , PRIMARY KEY (IDSAISON) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : TYPECHAUSSURE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS TYPECHAUSSURE
 (
   IDTYPE INTEGER(2) NOT NULL AUTO_INCREMENT ,
   GENRE CHAR(32) NOT NULL  
   , PRIMARY KEY (IDTYPE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : TAG
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS TAG
 (
   IDTAG INTEGER(2) NOT NULL AUTO_INCREMENT ,
   LABEL CHAR(32) NOT NULL  
   , PRIMARY KEY (IDTAG) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : CHAUSSURE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS CHAUSSURE
 (
   IDCHAUSSURE INTEGER(2) NOT NULL AUTO_INCREMENT ,
   IDMARQUEP INTEGER(2) NULL  ,
   IDMARQUEC INTEGER(2) NULL  ,
   IDMODELE INTEGER(2) NULL  ,
   IDSAISON INTEGER(2) NOT NULL  ,
   IDTYPE INTEGER(2) NOT NULL  ,
   IDMARQUE_PRODUIRE INTEGER(2) NOT NULL  ,
   SKU CHAR(20) NOT NULL  ,
   PRIXRETAI REAL(5,2) NOT NULL  ,
   PRIXRESELLE REAL(5,2) NOT NULL  ,
   DATESORTIE DATE NOT NULL  ,
   NOM CHAR(32) NOT NULL  
   , PRIMARY KEY (IDCHAUSSURE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE CHAUSSURE
# -----------------------------------------------------------------------------





CREATE  INDEX I_FK_CHAUSSURE_MODELE
     ON CHAUSSURE (IDMODELE ASC);

CREATE  INDEX I_FK_CHAUSSURE_SAISON
     ON CHAUSSURE (IDSAISON ASC);

CREATE  INDEX I_FK_CHAUSSURE_TYPECHAUSSURE
     ON CHAUSSURE (IDTYPE ASC);

CREATE  INDEX I_FK_CHAUSSURE_MARQUEP
     ON CHAUSSURE (IDMARQUEP ASC);

CREATE  INDEX I_FK_CHAUSSURE_MARQUEC
     ON CHAUSSURE (IDMARQUECchaussure ASC);


# -----------------------------------------------------------------------------
#       TABLE : MODELE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS MODELE
 (
   IDMODELE INTEGER(2) NOT NULL AUTO_INCREMENT ,
   NOM VARCHAR(128) NOT NULL  
   , PRIMARY KEY (IDMODELE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : FAVORIS
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS FAVORIS
 (
   IDUTILISATEUR INTEGER(2) NOT NULL  ,
   IDCHAUSSURE INTEGER(2) NOT NULL  ,
   CHAUSSUREFAVORITE BOOL NULL  
   , PRIMARY KEY (IDUTILISATEUR,IDCHAUSSURE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE FAVORIS
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_FAVORIS_UTILISATEUR
     ON FAVORIS (IDUTILISATEUR ASC);

CREATE  INDEX I_FK_FAVORIS_CHAUSSURE
     ON FAVORIS (IDCHAUSSURE ASC);

# -----------------------------------------------------------------------------
#       TABLE : IDENTIFICATION
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS IDENTIFICATION
 (
   IDTAG INTEGER(2) NOT NULL  ,
   IDCHAUSSURE INTEGER(2) NOT NULL  
   , PRIMARY KEY (IDTAG,IDCHAUSSURE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE IDENTIFICATION
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_IDENTIFICATION_TAG
     ON IDENTIFICATION (IDTAG ASC);

CREATE  INDEX I_FK_IDENTIFICATION_CHAUSSURE
     ON IDENTIFICATION (IDCHAUSSURE ASC);


# -----------------------------------------------------------------------------
#       CREATION DES REFERENCES DE TABLE
# -----------------------------------------------------------------------------


ALTER TABLE IMAGE 
  ADD FOREIGN KEY FK_IMAGE_CHAUSSURE (IDCHAUSSURE)
      REFERENCES CHAUSSURE (IDCHAUSSURE) ;


ALTER TABLE CHAUSSURE 
  ADD FOREIGN KEY FK_CHAUSSURE_MARQUEP (IDMARQUEP)
      REFERENCES MARQUE (IDMARQUE) ;

ALTER TABLE CHAUSSURE 
  ADD FOREIGN KEY FK_CHAUSSURE_MARQUEC (IDMARQUEC)
      REFERENCES MARQUE (IDMARQUE) ;


ALTER TABLE CHAUSSURE 
  ADD FOREIGN KEY FK_CHAUSSURE_MODELE (IDMODELE)
      REFERENCES MODELE (IDMODELE) ;


ALTER TABLE CHAUSSURE 
  ADD FOREIGN KEY FK_CHAUSSURE_SAISON (IDSAISON)
      REFERENCES SAISON (IDSAISON) ;


ALTER TABLE CHAUSSURE 
  ADD FOREIGN KEY FK_CHAUSSURE_TYPECHAUSSURE (IDTYPE)
      REFERENCES TYPECHAUSSURE (IDTYPE) ;


ALTER TABLE CHAUSSURE 
  ADD FOREIGN KEY FK_CHAUSSURE_MARQUE1 (IDMARQUE_PRODUIRE)
      REFERENCES MARQUE (IDMARQUE) ;


ALTER TABLE FAVORIS 
  ADD FOREIGN KEY FK_FAVORIS_UTILISATEUR (IDUTILISATEUR)
      REFERENCES UTILISATEUR (IDUTILISATEUR) ;


ALTER TABLE FAVORIS 
  ADD FOREIGN KEY FK_FAVORIS_CHAUSSURE (IDCHAUSSURE)
      REFERENCES CHAUSSURE (IDCHAUSSURE) ;


ALTER TABLE IDENTIFICATION 
  ADD FOREIGN KEY FK_IDENTIFICATION_TAG (IDTAG)
      REFERENCES TAG (IDTAG) ;


ALTER TABLE IDENTIFICATION 
  ADD FOREIGN KEY FK_IDENTIFICATION_CHAUSSURE (IDCHAUSSURE)
      REFERENCES CHAUSSURE (IDCHAUSSURE) ;


DROP DATABASE IF EXISTS MLRChausslam;

CREATE DATABASE IF NOT EXISTS MLRChausslam;
USE MLRChausslam;
# -----------------------------------------------------------------------------
#       TABLE : IMAGE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS IMAGE
 (
   IDIMAGE INTEGER(2) NOT NULL AUTO_INCREMENT ,
   IDCHAUSSURE BIGINT(4) NOT NULL  ,
   IDCHAUSSURE_1 BIGINT(4) NOT NULL  ,
   PHOTO LONGBLOB NOT NULL  
   , PRIMARY KEY (IDIMAGE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE IMAGE
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_IMAGE_CHAUSSURE
     ON IMAGE (IDCHAUSSURE ASC);

CREATE  INDEX I_FK_IMAGE_CHAUSSURE1
     ON IMAGE (IDCHAUSSURE_1 ASC);

# -----------------------------------------------------------------------------
#       TABLE : MARQUE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS MARQUE
 (
   IDMARQUE INTEGER(2) NOT NULL AUTO_INCREMENT ,
   NOMMARQUE CHAR(32) NOT NULL  
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
   GENRE VARCHAR(128) NOT NULL  
   , PRIMARY KEY (IDTYPE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : TAG
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS TAG
 (
   IDTAG BIGINT(4) NOT NULL AUTO_INCREMENT ,
   LABEL CHAR(32) NOT NULL  
   , PRIMARY KEY (IDTAG) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : CHAUSSURE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS CHAUSSURE
 (
   IDCHAUSSURE BIGINT(4) NOT NULL AUTO_INCREMENT ,
   IDMARQUE INTEGER(2) NOT NULL  ,
   IDMARQUE_1 INTEGER(2) NOT NULL  ,
   IDSAISON INTEGER(2) NOT NULL  ,
   IDTYPE INTEGER(2) NOT NULL  ,
   IDTYPE_1 INTEGER(2) NOT NULL  ,
   IDMARQUE_2 INTEGER(2) NOT NULL  ,
   IDMARQUE_3 INTEGER(2) NOT NULL  ,
   SKU VARCHAR(10) NOT NULL  ,
   PRIXRETAIL REAL(10,2) NOT NULL  ,
   PRIXRESELLE REAL(10,2) NOT NULL  ,
   POINTURE INTEGER(2) NOT NULL  ,
   DATESORTIE DATE NOT NULL  ,
   NOM VARCHAR(128) NOT NULL  
   , PRIMARY KEY (IDCHAUSSURE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE CHAUSSURE
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_CHAUSSURE_MARQUE
     ON CHAUSSURE (IDMARQUE ASC);

CREATE  INDEX I_FK_CHAUSSURE_MARQUE1
     ON CHAUSSURE (IDMARQUE_1 ASC);

CREATE  INDEX I_FK_CHAUSSURE_SAISON
     ON CHAUSSURE (IDSAISON ASC);

CREATE  INDEX I_FK_CHAUSSURE_TYPECHAUSSURE
     ON CHAUSSURE (IDTYPE ASC);

CREATE  INDEX I_FK_CHAUSSURE_TYPECHAUSSURE1
     ON CHAUSSURE (IDTYPE_1 ASC);

CREATE  INDEX I_FK_CHAUSSURE_MARQUE2
     ON CHAUSSURE (IDMARQUE_2 ASC);

CREATE  INDEX I_FK_CHAUSSURE_MARQUE3
     ON CHAUSSURE (IDMARQUE_3 ASC);

# -----------------------------------------------------------------------------
#       TABLE : IDENTIFICATION
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS IDENTIFICATION
 (
   IDCHAUSSURE BIGINT(4) NOT NULL  ,
   IDTAG BIGINT(4) NOT NULL  
   , PRIMARY KEY (IDCHAUSSURE,IDTAG) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE IDENTIFICATION
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_IDENTIFICATION_CHAUSSURE
     ON IDENTIFICATION (IDCHAUSSURE ASC);

CREATE  INDEX I_FK_IDENTIFICATION_TAG
     ON IDENTIFICATION (IDTAG ASC);


# -----------------------------------------------------------------------------
#       CREATION DES REFERENCES DE TABLE
# -----------------------------------------------------------------------------


ALTER TABLE IMAGE 
  ADD FOREIGN KEY FK_IMAGE_CHAUSSURE (IDCHAUSSURE)
      REFERENCES CHAUSSURE (IDCHAUSSURE) ;


ALTER TABLE IMAGE 
  ADD FOREIGN KEY FK_IMAGE_CHAUSSURE1 (IDCHAUSSURE_1)
      REFERENCES CHAUSSURE (IDCHAUSSURE) ;


ALTER TABLE CHAUSSURE 
  ADD FOREIGN KEY FK_CHAUSSURE_MARQUE (IDMARQUE)
      REFERENCES MARQUE (IDMARQUE) ;


ALTER TABLE CHAUSSURE 
  ADD FOREIGN KEY FK_CHAUSSURE_MARQUE1 (IDMARQUE_1)
      REFERENCES MARQUE (IDMARQUE) ;


ALTER TABLE CHAUSSURE 
  ADD FOREIGN KEY FK_CHAUSSURE_SAISON (IDSAISON)
      REFERENCES SAISON (IDSAISON) ;


ALTER TABLE CHAUSSURE 
  ADD FOREIGN KEY FK_CHAUSSURE_TYPECHAUSSURE (IDTYPE)
      REFERENCES TYPECHAUSSURE (IDTYPE) ;


ALTER TABLE CHAUSSURE 
  ADD FOREIGN KEY FK_CHAUSSURE_TYPECHAUSSURE1 (IDTYPE_1)
      REFERENCES TYPECHAUSSURE (IDTYPE) ;


ALTER TABLE CHAUSSURE 
  ADD FOREIGN KEY FK_CHAUSSURE_MARQUE2 (IDMARQUE_2)
      REFERENCES MARQUE (IDMARQUE) ;


ALTER TABLE CHAUSSURE 
  ADD FOREIGN KEY FK_CHAUSSURE_MARQUE3 (IDMARQUE_3)
      REFERENCES MARQUE (IDMARQUE) ;


ALTER TABLE IDENTIFICATION 
  ADD FOREIGN KEY FK_IDENTIFICATION_CHAUSSURE (IDCHAUSSURE)
      REFERENCES CHAUSSURE (IDCHAUSSURE) ;


ALTER TABLE IDENTIFICATION 
  ADD FOREIGN KEY FK_IDENTIFICATION_TAG (IDTAG)
      REFERENCES TAG (IDTAG) ;


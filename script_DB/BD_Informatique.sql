SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `BD_Informatique` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `BD_Informatique` ;

-- -----------------------------------------------------
-- Table `BD_Informatique`.`Utilisateur`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `BD_Informatique`.`Utilisateur` (
  `idUtilisateur` INT NOT NULL AUTO_INCREMENT ,
  `nom` VARCHAR(45) NULL ,
  `prenom` VARCHAR(45) NULL ,
  `email` VARCHAR(45) NULL ,
  `role` VARCHAR(45) NULL ,
  `login` VARCHAR(45) NULL ,
  `password` VARCHAR(45) NULL ,
  PRIMARY KEY (`idUtilisateur`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_Informatique`.`role`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `BD_Informatique`.`role` (
  `idrole` INT NOT NULL AUTO_INCREMENT ,
  `nomRole` VARCHAR(45) NULL ,
  PRIMARY KEY (`idrole`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_Informatique`.`client`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `BD_Informatique`.`client` (
  `idclient` INT NOT NULL AUTO_INCREMENT ,
  `nom` VARCHAR(45) NULL ,
  `prenom` VARCHAR(45) NULL ,
  `tel` VARCHAR(45) NULL ,
  PRIMARY KEY (`idclient`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_Informatique`.`produit`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `BD_Informatique`.`produit` (
  `idproduit` INT NOT NULL AUTO_INCREMENT ,
  `nomProduit` VARCHAR(45) NULL ,
  `dateDexpiration` DATE NULL ,
  `typeDeProduit` VARCHAR(45) NULL ,
  PRIMARY KEY (`idproduit`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_Informatique`.`stock`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `BD_Informatique`.`stock` (
  `idstock` INT NOT NULL AUTO_INCREMENT ,
  `nomDuProduit` VARCHAR(45) NULL ,
  `quantité` VARCHAR(45) NULL ,
  `dateDajout` VARCHAR(45) NULL ,
  PRIMARY KEY (`idstock`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_Informatique`.`facture`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `BD_Informatique`.`facture` (
  `idfacture` INT NOT NULL AUTO_INCREMENT ,
  `designation` VARCHAR(45) NULL ,
  `quantité` FLOAT NULL ,
  `prixUnitaire` FLOAT NULL ,
  `prixTotal` FLOAT NULL ,
  `Total` FLOAT NULL ,
  PRIMARY KEY (`idfacture`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_Informatique`.`tache`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `BD_Informatique`.`tache` (
  `idtache` INT NOT NULL AUTO_INCREMENT ,
  `nomTache` VARCHAR(45) NULL ,
  `assigneA` VARCHAR(45) NULL ,
  `dateDassignation` DATE NULL ,
  PRIMARY KEY (`idtache`) )
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

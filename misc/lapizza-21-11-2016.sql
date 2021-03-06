-- -----------------------------------------------------
-- Table `lapizza`.`Products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lapizza`.`Products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_categorie` INT NULL,
  `name` VARCHAR(45) NULL,
  `description` TEXT(20000) NULL,
  `price` DECIMAL(10,2) NULL,
  `image` VARCHAR(255) NULL,
  `quantity` INT NULL,
  `status` TINYINT(1) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lapizza`.`Categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lapizza`.`Categories` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lapizza`.`Users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lapizza`.`Users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `user` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `picture` VARCHAR(255) NULL,
  `type` TINYINT(1) NULL,
  `phone` VARCHAR(20) NULL,
  `status` TINYINT(1) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lapizza`.`Orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lapizza`.`Orders` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_user` INT NULL,
  `subtotal_price` DECIMAL(10,2) NULL,
  `tax_vat` DECIMAL(10,2) NULL,
  `total_price` DECIMAL(10,2) NULL,
  `date` DATETIME NULL,
  `name_user` VARCHAR(45) NULL,
  `address_user` VARCHAR(45) NULL,
  `number_user` VARCHAR(45) NULL,
  `postal_code_user` VARCHAR(45) NULL,
  `phone_user` VARCHAR(45) NULL,
  `name_billing` VARCHAR(45) NULL,
  `transshipment` DECIMAL(10,2) NULL,
  `status` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lapizza`.`Messages`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lapizza`.`Messages` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_order` INT NULL,
  `message` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lapizza`.`Options`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lapizza`.`Options` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tax_vat` DECIMAL(10,2) NULL,
  `store_status` TINYINT(1) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lapizza`.`Billings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lapizza`.`Billings` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lapizza`.`Banners`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lapizza`.`Banners` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NULL,
  `url` VARCHAR(255) NULL,
  `link` VARCHAR(255) NULL,
  `blank` TINYINT(1) NULL,
  `status` TINYINT(1) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lapizza`.`Address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lapizza`.`Address` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_user` INT NULL,
  `address` VARCHAR(255) NULL,
  `number` VARCHAR(45) NULL,
  `adjunct` VARCHAR(45) NULL,
  `district` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `postalcode` VARCHAR(8) NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lapizza`.`PostalCodes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lapizza`.`PostalCodes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cep` VARCHAR(8) NULL,
  `location` VARCHAR(45) NULL,
  `district` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lapizza`.`Itens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lapizza`.`Itens` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_order` INT NULL,
  `name` VARCHAR(45) NULL,
  `description` TEXT(20000) NULL,
  `price` DECIMAL(10,2) NULL,
  `image` VARCHAR(255) NULL,
  `quantity` INT NULL,
  `subtotal` DECIMAL(10,2) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

INSERT INTO `users` (`id`, `name`, `user`, `email`, `password`, `picture`, `type`, `phone`, `status`) VALUES ('1', 'Admin', 'Admin', 'admin@lapizza.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, '1', '11951569500', '1');
INSERT INTO `options` (`id`, `tax_vat`, `store_status`) VALUES ('1', '3.2', '1');
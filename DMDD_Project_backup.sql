-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema DMDD_Project_Garima
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema DMDD_Project_Garima
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DMDD_Project_Garima` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema new_schema1
-- -----------------------------------------------------
USE `DMDD_Project_Garima` ;

-- -----------------------------------------------------
-- Table `DMDD_Project_Garima`.`menu_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDD_Project_Garima`.`menu_category` (
  `cat_id` INT NOT NULL,
  `cat_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cat_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DMDD_Project_Garima`.`menu_item`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDD_Project_Garima`.`menu_item` (
  `menu_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(45) NOT NULL,
  `price` FLOAT NOT NULL,
  `category_id` INT NOT NULL,
  PRIMARY KEY (`menu_id`),
  INDEX `FK_category_id_idx` (`category_id` ASC) VISIBLE,
  CONSTRAINT `FK_category_id`
    FOREIGN KEY (`category_id`)
    REFERENCES `DMDD_Project_Garima`.`menu_category` (`cat_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DMDD_Project_Garima`.`employee_personal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDD_Project_Garima`.`employee_personal` (
  `employee_id` INT NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `contact_no` VARCHAR(20) NOT NULL,
  `email_id` VARCHAR(45) NULL,
  `state_id` VARCHAR(45) NOT NULL,
  `address_line1` VARCHAR(45) NOT NULL,
  `address_line2` VARCHAR(45) NULL,
  `city` VARCHAR(45) NOT NULL,
  `state` VARCHAR(45) NOT NULL,
  `zipcode` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`employee_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DMDD_Project_Garima`.`employee_professional`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDD_Project_Garima`.`employee_professional` (
  `employee_id` INT NOT NULL,
  `hire_date` DATE NOT NULL,
  `salary(per month)` FLOAT NOT NULL,
  `designation` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`employee_id`),
  CONSTRAINT `FK_employee_id`
    FOREIGN KEY (`employee_id`)
    REFERENCES `DMDD_Project_Garima`.`employee_personal` (`employee_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DMDD_Project_Garima`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDD_Project_Garima`.`orders` (
  `order_id` INT NOT NULL AUTO_INCREMENT,
  `cashier_id` INT NOT NULL,
  `invoice_number` INT NOT NULL DEFAULT 100,
  `in_time` TIMESTAMP(2) NOT NULL,
  `expected_out_time` TIMESTAMP(2) NULL,
  `status` VARCHAR(45) NOT NULL DEFAULT 'Initial',
  PRIMARY KEY (`order_id`),
  INDEX `FK_cashier_id_idx` (`cashier_id` ASC) VISIBLE,
  CONSTRAINT `FK_cashier_id`
    FOREIGN KEY (`cashier_id`)
    REFERENCES `DMDD_Project_Garima`.`employee_professional` (`employee_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DMDD_Project_Garima`.`order_menu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDD_Project_Garima`.`order_menu` (
  `order_id` INT NOT NULL,
  `menu_id` INT NOT NULL,
  `quantity` INT NOT NULL,
  PRIMARY KEY (`order_id`, `menu_id`),
  INDEX `FK_menu_id_idx` (`menu_id` ASC) VISIBLE,
  CONSTRAINT `FK_menu_id`
    FOREIGN KEY (`menu_id`)
    REFERENCES `DMDD_Project_Garima`.`menu_item` (`menu_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_order_id`
    FOREIGN KEY (`order_id`)
    REFERENCES `DMDD_Project_Garima`.`orders` (`order_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DMDD_Project_Garima`.`sales_invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDD_Project_Garima`.`sales_invoice` (
  `invoice_id` INT NOT NULL,
  `order_id` INT NOT NULL,
  `cashier_id` INT NOT NULL,
  `menu_id` INT NOT NULL,
  `quantity` INT NOT NULL,
  `total_amount` DECIMAL NULL,
  `in_time` DATETIME NOT NULL,
  PRIMARY KEY (`invoice_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DMDD_Project_Garima`.`manager_action_table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDD_Project_Garima`.`manager_action_table` (
  `alert_id` INT NOT NULL,
  `from_table` VARCHAR(45) NULL,
  `alert_comment` VARCHAR(45) NULL,
  PRIMARY KEY (`alert_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DMDD_Project_Garima`.`status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDD_Project_Garima`.`status` (
  `status_name` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`status_name`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DMDD_Project_Garima`.`kitchen_copy`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDD_Project_Garima`.`kitchen_copy` (
  `order_id` INT NOT NULL,
  `menu_id` INT NOT NULL,
  `quantity` INT NOT NULL DEFAULT 0,
  `status` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`order_id`, `menu_id`),
  INDEX `FK_kitchen_status_idx` (`status` ASC) VISIBLE,
  INDEX `FK_kitchen_menu_id_idx` (`menu_id` ASC) VISIBLE,
  CONSTRAINT `FK_kitchen_status`
    FOREIGN KEY (`status`)
    REFERENCES `DMDD_Project_Garima`.`status` (`status_name`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `FK_kitchen_order_id`
    FOREIGN KEY (`order_id`)
    REFERENCES `DMDD_Project_Garima`.`order_menu` (`order_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_kitchen_menu_id`
    FOREIGN KEY (`menu_id`)
    REFERENCES `DMDD_Project_Garima`.`order_menu` (`menu_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DMDD_Project_Garima`.`rating`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDD_Project_Garima`.`rating` (
  `rating` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`rating`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DMDD_Project_Garima`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDD_Project_Garima`.`customer` (
  `cust_id` INT NOT NULL,
  `cust_contact_no` VARCHAR(45) NULL,
  PRIMARY KEY (`cust_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DMDD_Project_Garima`.`customer_orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDD_Project_Garima`.`customer_orders` (
  `order_id` INT NOT NULL,
  `customer_id` INT NOT NULL,
  `rating` VARCHAR(20) NULL,
  PRIMARY KEY (`order_id`, `customer_id`),
  INDEX `FK_customer_id_idx` (`customer_id` ASC) VISIBLE,
  INDEX `FK_rating_idx` (`rating` ASC) VISIBLE,
  CONSTRAINT `FK_customer_order_id`
    FOREIGN KEY (`order_id`)
    REFERENCES `DMDD_Project_Garima`.`orders` (`order_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_customer_id`
    FOREIGN KEY (`customer_id`)
    REFERENCES `DMDD_Project_Garima`.`customer` (`cust_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_rating`
    FOREIGN KEY (`rating`)
    REFERENCES `DMDD_Project_Garima`.`rating` (`rating`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

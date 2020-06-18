-- -------------------------------------------------------------------
-- Testing
-- -------------------------------------------------------------------
select * from refering_table;

select * from referenced_tbl;

select referenced_tbl.referenced_tblcol, refering_table.col2
from referenced_tbl inner join refering_table
on referenced_tbl.idreferenced_tbl = refering_table.col1;

desc refering_table;
-- -------------------------------------------------------------------
drop table menu_item;
drop table employee_personal_details;
drop table employee_professional_details;
-- -------------------------------------------------------------------
select * from menu_category;

INSERT INTO `dmdd_project_garima`.`menu_category` (`cat_id`, `cat_name`) VALUES ('1', 'burgers');
INSERT INTO `dmdd_project_garima`.`menu_category` (`cat_id`, `cat_name`) VALUES ('2', 'fries');
INSERT INTO `dmdd_project_garima`.`menu_category` (`cat_id`, `cat_name`) VALUES ('3', 'sides');
INSERT INTO `dmdd_project_garima`.`menu_category` (`cat_id`, `cat_name`) VALUES ('4', 'beverages');
INSERT INTO `dmdd_project_garima`.`menu_category` (`cat_id`, `cat_name`) VALUES ('5', 'dessert');
-- -------------------------------------------------------------------
select * from menu_item;

INSERT INTO `dmdd_project_garima`.`menu_item` (`menu_id`, `name`, `description`, `price`, `category_id`) VALUES ('1', 'veg burger', 'totally veg', '4', '1');
INSERT INTO `dmdd_project_garima`.`menu_item` (`menu_id`, `name`, `description`, `price`, `category_id`) VALUES ('2', 'chicken burger', 'contains non vegetarian elements', '6', '1');

alter table menu_item drop column image;
alter table menu_item modify menu_id int auto_increment;

INSERT INTO `dmdd_project_garima`.`menu_item` (`name`, `description`, `price`, `category_id`) VALUES ('fries', 'totally veg', '4', '2');
INSERT INTO `dmdd_project_garima`.`menu_item` (`menu_id`, `name`, `description`, `price`, `category_id`) VALUES ('4', 'garlic bread', 'vegatarian', '3', '3');
INSERT INTO `dmdd_project_garima`.`menu_item` (`menu_id`, `name`, `description`, `price`, `category_id`) VALUES ('5', 'cheese sticks', 'mozzarella filling', '6', '3');
INSERT INTO `dmdd_project_garima`.`menu_item` (`menu_id`, `name`, `description`, `price`, `category_id`) VALUES ('6', 'cocacola', 'beverage', '2', '4');
INSERT INTO `dmdd_project_garima`.`menu_item` (`menu_id`, `name`, `description`, `price`, `category_id`) VALUES ('7', 'pastry', 'lots of calories!', '5', '5');
-- -------------------------------------------------------------------
select * from customer;
alter table employee_personal modify column contact_no varchar(20) not null;
INSERT INTO `dmdd_project_garima`.`employee_personal` (`employee_id`, `first_name`, `last_name`, `contact_no`, `email_id`, `state_id`, `address_line1`, `city`, `state`, `zipcode`, `country`) VALUES ('100', 'Katie', 'Smith', '8574125036', '123@gmail.com', 'MA', '40, Main Road', 'Townsville', 'State12', '123456', 'USA');
INSERT INTO `dmdd_project_garima`.`employee_professional` (`employee_id`, `hire_date`, `salary(per month)`, `designation`) VALUES ('100', '2018-02-16', '500', 'Cook');

UPDATE `dmdd_project_garima`.`employee_professional` SET `salary(per month)` = '1000' WHERE (`employee_id` = '100');

INSERT INTO `dmdd_project_garima`.`employee_personal` (`employee_id`, `first_name`, `last_name`, `contact_no`, `email_id`, `state_id`, `address_line1`, `city`, `state`, `zipcode`, `country`) VALUES ('200', 'Bob', 'Robson', '8574126987', '456@gmail.com', 'CA24578', '12, Little Street', 'Big City', 'Small State', '254879', 'USA');
INSERT INTO `dmdd_project_garima`.`employee_personal` (`employee_id`, `first_name`, `last_name`, `contact_no`, `email_id`, `state_id`, `address_line1`, `city`, `state`, `zipcode`, `country`) VALUES ('300', 'Sandra', 'Jakes', '9875879654', 'sandra@her_mail.com', 'TX45874', '25, Village Main', 'Windy Village', 'Golden State', '254785', 'USA');
INSERT INTO `dmdd_project_garima`.`employee_personal` (`employee_id`, `first_name`, `last_name`, `contact_no`, `email_id`, `state_id`, `address_line1`, `city`, `state`, `zipcode`, `country`) VALUES ('400', 'Steve', 'Gee', '2547898547', 'steve@gee.com', 'CA36598', '45, Happy Lane', 'Big Apple City', 'New State', '478578', 'USA');
INSERT INTO `dmdd_project_garima`.`employee_personal` (`employee_id`, `first_name`, `last_name`, `contact_no`, `email_id`, `state_id`, `address_line1`, `city`, `state`, `zipcode`, `country`) VALUES ('301', 'John', 'Jones', '8745896857', 'jj@jonesmail.org', 'MA15568', '32, Main Road', 'Townsville', 'Distant State', '245875', 'USA');
INSERT INTO `dmdd_project_garima`.`employee_personal` (`employee_id`, `first_name`, `last_name`, `contact_no`, `email_id`, `state_id`, `address_line1`, `city`, `state`, `zipcode`, `country`) VALUES ('101', 'Jenny', 'Jones', '5748967875', 'jones@gmail.com', 'MA14876', '22, Winding Road', 'Big Town', 'State45', '547857', 'USA');
INSERT INTO `dmdd_project_garima`.`employee_personal` (`employee_id`, `first_name`, `last_name`, `contact_no`, `email_id`, `state_id`, `address_line1`, `address_line2`, `city`, `state`, `zipcode`, `country`) VALUES ('102', 'Daisy', 'Moore', '8527414569', 'Daisy@hotmail.com', 'TX25478', '77, abc road', 'Apt 6', 'Small Village', 'State36', '895748', 'USA');
UPDATE `dmdd_project_garima`.`employee_personal` SET `state_id` = 'MA12345' WHERE (`employee_id` = '100');
INSERT INTO `dmdd_project_garima`.`employee_personal` (`employee_id`, `first_name`, `last_name`, `contact_no`, `email_id`, `state_id`, `address_line1`, `address_line2`, `city`, `state`, `zipcode`, `country`) VALUES ('401', 'Nick', 'White', '5787458796', 'white@house.com', 'NJ54875', '3, Tiny Terrace', 'Apt 8', 'Big City', 'Small State', '874589', 'USA');


INSERT INTO `dmdd_project_garima`.`employee_professional` (`employee_id`, `hire_date`, `salary(per month)`, `designation`) VALUES ('200', '2015-05-22', '3700', 'Manager');
INSERT INTO `dmdd_project_garima`.`employee_professional` (`employee_id`, `hire_date`, `salary(per month)`, `designation`) VALUES ('300', '2016-08-04', '700', 'Server');
INSERT INTO `dmdd_project_garima`.`employee_professional` (`employee_id`, `hire_date`, `salary(per month)`, `designation`) VALUES ('400', '2017-06-24', '1000', 'Cashier');
INSERT INTO `dmdd_project_garima`.`employee_professional` (`employee_id`, `hire_date`, `salary(per month)`, `designation`) VALUES ('301', '2017-06-29', '700', 'Server');
INSERT INTO `dmdd_project_garima`.`employee_professional` (`employee_id`, `hire_date`, `salary(per month)`, `designation`) VALUES ('101', '2016-04-23', '1000', 'Cook');
INSERT INTO `dmdd_project_garima`.`employee_professional` (`employee_id`, `hire_date`, `salary(per month)`, `designation`) VALUES ('102', '2016-05-30', '1000', 'Cook');
INSERT INTO `dmdd_project_garima`.`employee_professional` (`employee_id`, `hire_date`, `salary(per month)`, `designation`) VALUES ('401', '2016-12-03', '1000', 'Cashier');

select * from employee_personal;
select * from employee_professional;
-- -------------------------------------------------------------------
describe orders;
select * from orders;
alter table orders modify in_time timestamp not null default current_timestamp;
alter table orders modify invoice_number integer not null default 100;
delete from orders where order_id=2;

delimiter //
create trigger invoice_id_generator
 before insert
  on orders
   for each row PRECEDES out_time_generator
    begin
     set new.invoice_number=(select max(invoice_number) + 1 from orders);
	end;
//

delimiter //
create trigger out_time_generator
 before insert
  on orders
   for each row
    begin
     set new.expected_out_time=(select adddate(NEW.in_time, interval 30 minute));
	end;
//

delimiter //
create trigger invoice_id_generator
 before insert
  on orders
   for each row PRECEDES out_time_generator
    begin
     set new.invoice_number=NEW.order_id;
	end;
//-- this also works!
INSERT INTO `dmdd_project_garima`.`orders` (`order_id`, `cashier_id`, `in_time`) VALUES ('1', '400', '2018-12-13 01:48:00')//
INSERT INTO `dmdd_project_garima`.`orders` (`order_id`, `cashier_id`, `in_time`) VALUES ('2', '400', '2018-12-13 00:48:00')//
INSERT INTO `dmdd_project_garima`.`orders` (`order_id`, `cashier_id`, `in_time`) VALUES ('3', '401', '2018-12-13 00:48:00')//
INSERT INTO `dmdd_project_garima`.`orders` (`order_id`, `cashier_id`, `in_time`) VALUES ('4', '400', '2018-12-13 00:48:00')//
INSERT INTO `dmdd_project_garima`.`orders` (`order_id`, `cashier_id`, `in_time`) VALUES ('5', '400', '2018-12-13 00:48:00')//
INSERT INTO `dmdd_project_garima`.`orders` (`order_id`, `cashier_id`, `in_time`) VALUES ('6', '400', '2018-12-13 00:59:00')//
INSERT INTO `dmdd_project_garima`.`orders` (`order_id`, `cashier_id`, `in_time`) VALUES ('7', '400', '2018-12-13 00:59:00')//
INSERT INTO `dmdd_project_garima`.`orders` (`cashier_id`, `in_time`) VALUES ('400', '2018-12-13 01:10:00')// -- worked!!
insert into `dmdd_project_garima`.`orders` (`cashier_id`) VALUES ('401')//  -- worked too!!
select * from orders//

delimiter ;
select * from orders;
-- ----------------------------------------------------------------------------------------
desc orders;
select * from orders;
select * from order_menu;
select * from menu_item;

INSERT INTO `dmdd_project_garima`.`order_menu` (`order_id`, `menu_id`, `quantity`) VALUES ('1', '1', '1');
INSERT INTO `dmdd_project_garima`.`order_menu` (`order_id`, `menu_id`, `quantity`) VALUES ('1', '2', '1');
INSERT INTO `dmdd_project_garima`.`order_menu` (`order_id`, `menu_id`, `quantity`) VALUES ('1', '6', '2');
INSERT INTO `dmdd_project_garima`.`order_menu` (`order_id`, `menu_id`, `quantity`) VALUES ('2', '4', '1');
INSERT INTO `dmdd_project_garima`.`order_menu` (`order_id`, `menu_id`, `quantity`) VALUES ('2', '3', '2');
INSERT INTO `dmdd_project_garima`.`order_menu` (`order_id`, `menu_id`, `quantity`) VALUES ('2', '6', '2');
INSERT INTO `dmdd_project_garima`.`order_menu` (`order_id`, `menu_id`, `quantity`) VALUES ('3', '5', '1'); -- trigger created new row for kitchen_copy table

-- ----------------------------------------------------------------------------------------
select * from rating;
select * from rating;
describe rating;
alter table rating drop column rating_id;
alter table rating add primary key (rating);
select * from customer;
select * from orders;
select * from customer_orders;

INSERT INTO `dmdd_project_garima`.`rating` (`rating_id`, `rating`) VALUES ('1', 'good');
INSERT INTO `dmdd_project_garima`.`rating` (`rating_id`, `rating`) VALUES ('2', 'average');
INSERT INTO `dmdd_project_garima`.`rating` (`rating_id`, `rating`) VALUES ('3', 'poor');
INSERT INTO `dmdd_project_garima`.`rating` (`rating_id`, `rating`) VALUES ('4', 'recommend');

INSERT INTO `dmdd_project_garima`.`customer` (`cust_id`, `cust_contact_no`) VALUES ('1', '9858747895');
INSERT INTO `dmdd_project_garima`.`customer` (`cust_id`) VALUES ('2');
INSERT INTO `dmdd_project_garima`.`customer` (`cust_id`, `cust_contact_no`) VALUES ('3', '5487965894');
INSERT INTO `dmdd_project_garima`.`customer` (`cust_id`) VALUES ('4');
INSERT INTO `dmdd_project_garima`.`customer` (`cust_id`) VALUES ('5');
INSERT INTO `dmdd_project_garima`.`customer` (`cust_id`) VALUES ('6');

INSERT INTO `dmdd_project_garima`.`customer_orders` (`order_id`, `customer_id`, `rating`) VALUES ('1', '1', 'good');
INSERT INTO `dmdd_project_garima`.`customer_orders` (`order_id`, `customer_id`, `rating`) VALUES ('2', '3', 'average');
INSERT INTO `dmdd_project_garima`.`customer_orders` (`order_id`, `customer_id`, `rating`) VALUES ('3', '2', 'recommend');
INSERT INTO `dmdd_project_garima`.`customer_orders` (`order_id`, `customer_id`, `rating`) VALUES ('4', '5', 'poor');
-- ----------------------------------------------------------------------------------------
select * from status;
INSERT INTO `dmdd_project_garima`.`status` (`status_name`) VALUES ('Initial');
INSERT INTO `dmdd_project_garima`.`status` (`status_name`) VALUES ('In progress');
INSERT INTO `dmdd_project_garima`.`status` (`status_name`) VALUES ('Complete');
INSERT INTO `dmdd_project_garima`.`status` (`status_name`) VALUES ('Delivered');
-- ----------------------------------------------------------------------------------------
select * from kitchen_copy;
select * from order_menu;

delimiter //
create trigger popolate_kitchen_copy
 after insert
  on order_menu
   for each row
    begin
     insert into kitchen_copy (order_id, menu_id, quantity) values (NEW.order_id, NEW.menu_id, NEW.quantity);
	end;
//
delimiter ;
-- ----------------------------------------------------------------------------------------
drop table sales_invoice;
alter table orders modify column `invoice_number` int(11) NOT NULL unique DEFAULT '100';
select * from order_menu;

select order_menu.order_id, order_menu.menu_id, order_menu.quantity, menu_item.price, 
(order_menu.quantity*menu_item.price) as "Total", menu_item.name, orders.cashier_id, orders.in_time
 from order_menu inner join orders
 on order_menu.order_id=orders.order_id
 inner join menu_item
 on order_menu.menu_id=menu_item.menu_id;
 
create view Total_per_Order_id as
select order_menu.order_id, sum(order_menu.quantity*menu_item.price)  as "Total Amount per Order_id",
 orders.cashier_id, orders.in_time
 from order_menu inner join orders
 on order_menu.order_id=orders.order_id
 inner join menu_item
 on order_menu.menu_id=menu_item.menu_id
 group by order_menu.order_id;
 -- because logically only one cashier is working on one order, and at the same timestamp.
 
 select * from Total_per_Order_id;
 
create view Total_per_Customer_id as
select customer_orders.customer_id, sum(order_menu.quantity*menu_item.price) as "Each customer spends '$'"
 from order_menu inner join orders
 on order_menu.order_id=orders.order_id
 inner join menu_item
 on order_menu.menu_id=menu_item.menu_id
 inner join customer_orders
 on customer_orders.order_id=orders.order_id
 group by customer_orders.customer_id;
 
select * from Total_per_Customer_id;
-- ----------------------------------------------------------------------------------------
select * from ingredients;
select * from ingred_supplies;
select * from menu_ingred;
select * from supplier_list;

-- drop table ingredients; 
-- drop table ingred_supplies; 
-- drop table menu_ingred; 
-- drop table supplier_list; 

INSERT INTO `dmdd_project_garima`.`supplier_list` (`supplier_id`, `supplier_name`, `supplier_email`, `supplier_contact_no`, `address_line1`, `city`, `state`, `zipcode`, `country`) VALUES ('1', 'Bright Brothers', 'bright@gmail.com', '2587459865', '09, Kite Lane', 'Boston', 'MA', '245875', 'USA');
INSERT INTO `dmdd_project_garima`.`supplier_list` (`supplier_id`, `supplier_name`, `supplier_email`, `supplier_contact_no`, `address_line1`, `address_line2`, `city`, `state`, `zipcode`, `country`) VALUES ('2', 'Spice Kings', 'king@hotmail.com', '9874563248', '34, Lengthy Lane', 'Apt 6', 'Malden', 'MA', '658749', 'USA');

INSERT INTO `dmdd_project_garima`.`ingredients` (`ingred_id`, `ingred_name`, `ingred_threshold`, `current_inventory_level`, `ingred_cost`, `unit_of_measure`) VALUES ('1', 'peas', '100', '150', '20', 'boxes');
INSERT INTO `dmdd_project_garima`.`ingredients` (`ingred_id`, `ingred_name`, `ingred_threshold`, `current_inventory_level`, `ingred_cost`, `unit_of_measure`) VALUES ('2', 'lemons', '10', '15', '10', 'pounds');
INSERT INTO `dmdd_project_garima`.`ingredients` (`ingred_id`, `ingred_name`, `ingred_threshold`, `current_inventory_level`, `ingred_cost`, `unit_of_measure`) VALUES ('3', 'veg patty', '300', '350', '10', 'pieces');
INSERT INTO `dmdd_project_garima`.`ingredients` (`ingred_id`, `ingred_name`, `ingred_threshold`, `current_inventory_level`, `ingred_cost`, `unit_of_measure`) VALUES ('4', 'ketchup', '500', '550', '10', 'sachets');

INSERT INTO `dmdd_project_garima`.`ingred_supplies` (`ingred_id`, `supplier_id`, `supplies_at_price`, `min_quantity_supplied`) VALUES ('1', '2', '20', '100');
INSERT INTO `dmdd_project_garima`.`ingred_supplies` (`ingred_id`, `supplier_id`, `supplies_at_price`, `min_quantity_supplied`) VALUES ('1', '1', '18', '100');
INSERT INTO `dmdd_project_garima`.`ingred_supplies` (`ingred_id`, `supplier_id`, `supplies_at_price`, `min_quantity_supplied`) VALUES ('2', '1', '4', '5');

INSERT INTO `dmdd_project_garima`.`menu_ingred` (`menu_id`, `ingred_id`, `qty_used_per_menu_item`) VALUES ('1', '3', '1');
INSERT INTO `dmdd_project_garima`.`menu_ingred` (`menu_id`, `ingred_id`, `qty_used_per_menu_item`) VALUES ('1', '1', '1');
INSERT INTO `dmdd_project_garima`.`menu_ingred` (`menu_id`, `ingred_id`, `qty_used_per_menu_item`) VALUES ('1', '4', '1');
INSERT INTO `dmdd_project_garima`.`menu_ingred` (`menu_id`, `ingred_id`, `qty_used_per_menu_item`) VALUES ('2', '4', '1');
INSERT INTO `dmdd_project_garima`.`menu_ingred` (`menu_id`, `ingred_id`, `qty_used_per_menu_item`) VALUES ('2', '2', '2');
INSERT INTO `dmdd_project_garima`.`menu_ingred` (`menu_id`, `ingred_id`, `qty_used_per_menu_item`) VALUES ('2', '1', '1');
-- -------------------------------------------------------------------

delimiter //
create trigger manager_alert
 before	update 
  on ingredients
   for each row
    begin
     if NEW.current_inventory_level<OLD.ingred_threshold then
		insert into manager_action_table (from_table, alert_comment) values ('ingredients',
		  'quantity below threshold levels. Please check.');
	 end if;
    end;
//

delimiter ;
-- drop trigger manager_alert;
select * from manager_action_table;
update ingredients set current_inventory_level=8 where ingred_id=2;
select * from ingredients;
-- ----------------------------------------------------------------------------------------


-- -------------------------------------------------------------------
-- Just for future reference
-- -------------------------------------------------------------------
CREATE TABLE animals (
     id MEDIUMINT NOT NULL AUTO_INCREMENT,
     name CHAR(30) NOT NULL,
     PRIMARY KEY (id)
) ENGINE=InnoDB;

INSERT INTO animals (name) VALUES
    ('dog'),('cat'),('penguin'),
    ('lax'),('whale'),('ostrich');

SELECT * FROM animals;

TRUNCATE TABLE animals;

CREATE TRIGGER increment_insert BEFORE INSERT ON animals
  FOR EACH ROW 
    SET NEW.id = (SELECT MAX(id) + 2 FROM animals);

INSERT INTO animals (name) VALUES
    ('dog'),('cat'),('penguin'),
    ('lax'),('whale'),('ostrich');

SELECT * FROM animals;

drop table animals;

drop trigger trigex;     

delimiter //
create trigger trigex
 before update
  on studio
   for each row
    begin
     set @new = NEW.name;
	set @old=OLD.name;
	end //  
    
delimiter ;

update studio set name = 'gh' where studio_id = 1;
select @new, @old;
-- -------------------------------------------------------------------





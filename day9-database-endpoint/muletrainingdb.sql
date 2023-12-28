/*
SQLyog v4.06 RC1
Host - 5.5.37 : Database - muletrainingdb
*********************************************************************
Server version : 5.5.37
*/


create database if not exists `muletrainingdb`;

USE `muletrainingdb`;

/*Table structure for table `product` */

drop table if exists `product`;

CREATE TABLE `product` (
  `product_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `offer_price` double NOT NULL,
  `offer_valid_until` datetime DEFAULT NULL,
  `original_price` double NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert into `product` values (1,'HP','Hp Laptop ','Hp Pavilion laptop',1000,'2016-06-27 10:45:56',1000),(2,'Apple','Apple Laptop ','Macbook Pro laptop',3000,'2016-06-27 10:45:57',3000),(3,'Apple','Apple Laptop ','Mac Book  laptop',2000,'2016-06-27 10:45:57',2000),(4,'IBM','IBM Laptop ','IBM laptop',4000,'2016-06-27 10:45:57',4000),(5,'Motorola','Motorola Mobile ','MotoX Mobile',1000,'2016-06-27 10:45:57',1000),(6,'Samsung','Samsung Mobile ','Samsung Note 5',5000,'2016-06-27 10:45:57',5000);

/*Table structure for table `product_images` */

drop table if exists `product_images`;

CREATE TABLE `product_images` (
  `product_id` bigint(20) NOT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  KEY `FK_j6vpvxdkrgqdhqs0s1dlqhp6j` (`product_id`),
  CONSTRAINT `FK_j6vpvxdkrgqdhqs0s1dlqhp6j` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `product_images` */

insert into `product_images` values (1,'image1.jpeg'),(1,'image2.jpeg'),(1,'image3.jpeg'),(2,'image3.jpeg'),(2,'image4.jpeg'),(2,'image5.jpeg'),(3,'image6.jpeg'),(3,'image7.jpeg'),(3,'image8.jpeg'),(4,'image9.jpeg'),(4,'image10.jpeg'),(4,'image11.jpeg'),(5,'image12.jpeg'),(5,'image13.jpeg'),(5,'image14.jpeg'),(6,'image15.jpeg'),(6,'image16.jpeg'),(6,'image17.jpeg');

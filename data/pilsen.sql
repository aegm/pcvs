/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.35-0ubuntu0.13.10.1 : Database - pilsen
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pilsen` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci */;

USE `pilsen`;

/*Table structure for table `inscritos` */

DROP TABLE IF EXISTS `inscritos`;

CREATE TABLE `inscritos` (
  `fecha_registro` datetime NOT NULL,
  `num_doc` char(15) NOT NULL,
  `tipo_doc` char(1) NOT NULL,
  `fec_nac` datetime NOT NULL,
  `nombres` varchar(30) NOT NULL,
  `apellido_paterno` varchar(30) NOT NULL,
  `apellido_materno` varchar(30) DEFAULT NULL,
  `sexo` char(1) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `direccion` varchar(120) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `celular` varchar(10) DEFAULT NULL,
  `prov_celular` varchar(1) DEFAULT NULL,
  `telefono_otro` varchar(50) DEFAULT NULL,
  `int_tipo` int(1) NOT NULL DEFAULT '0',
  `ubigeo` varchar(6) NOT NULL,
  PRIMARY KEY (`num_doc`),
  KEY `fecha_registro` (`fecha_registro`,`fec_nac`,`sexo`),
  KEY `email` (`email`),
  KEY `email_2` (`email`),
  KEY `nombres` (`nombres`),
  KEY `apellido_materno` (`apellido_materno`),
  FULLTEXT KEY `apellido_paterno` (`apellido_paterno`),
  FULLTEXT KEY `apellido_paterno_2` (`apellido_paterno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0 ROW_FORMAT=DYNAMIC;

/*Data for the table `inscritos` */

insert  into `inscritos`(`fecha_registro`,`num_doc`,`tipo_doc`,`fec_nac`,`nombres`,`apellido_paterno`,`apellido_materno`,`sexo`,`email`,`direccion`,`telefono`,`celular`,`prov_celular`,`telefono_otro`,`int_tipo`,`ubigeo`) values ('2013-01-01 12:07:28','10544483','1','1978-03-10 00:00:00','Juan Francisco','Mergoni','Paredes','M','franciscomergoni@hotmail.com','pje la florida 134 dpto 2','4223746','989080939','0','',0,'150131'),('2013-01-01 12:07:34','09340577','1','1972-06-07 00:00:00','María lorena','Olite','Olmos','F','Lorena.olite@aviancataca.com','Luis manarelli 190 ','2642154','999137007','0','',0,'150131'),('2013-01-01 12:11:34','09835252','1','1975-04-09 00:00:00','ALDO MAX','ASENCIOS','BELTRAN','M','aldoasencios@yahoo.com','Los Negocios 280 E-7 Dpto 202','2419257','998139018','0','',0,'150141'),('2013-01-01 12:12:49','70246081','1','1990-11-04 00:00:00','Esau Oliver','Sanchez','LLantoy','M','blink_18_90@hotmail.com','Av. Santa Rosa 621','3872007','967767297','0','',0,'150132'),('2013-01-01 12:16:00','07290391','1','1966-07-12 00:00:00','salvador manuel','paredes','romero','M','salvadorparedes921@yahoo.es','','4343731','973856618','0','',0,'150114'),('2013-01-01 12:30:13','42764727','1','1984-12-01 00:00:00','Jaime Andres','Simon','Calle','M','jasimon01@hotmail.com','Calle E. Ferreyros 1035 Urb.Corpac','2265109','946093001','0','',0,'150131'),('2013-01-01 12:38:35','25435345','1','1956-11-13 00:00:00','juvenal','heredia','bernales','M','pocho04@hotmail.com','av. buenos aires #2342 urb. san antonio bellavista - callao','4651755','994611234','0','',0,'70102'),('2013-01-01 12:39:27','10744143','1','1977-07-15 00:00:00','JORGE ALFREDO','VEGA ','PAYTAN','M','jorgevega-77@hotmail.com','2 DE MAYO 817 KM 11 COMAS','0165367','991103761','0','',0,'150110'),('2013-01-01 12:48:14','08126572','1','1968-03-14 00:00:00','Roberto','Jara ','Arnao','M','jara_d_12@hotmail.com','Mk lote 11 El Altillo','3817895','986104593','0','',0,'150128'),('2013-01-01 03:23:21','70394412','1','1991-01-12 00:00:00','beatriz','mendez','davila','F','beatriz.mendez.d@upch.pe','calle stiglish 201 ','4527657','987608900','0','',0,'150136'),('2014-02-06 00:00:00','1111111','1','1991-05-15 00:00:00','Gabriella','Nureña','Sanchez','F','1','111','1','11','1','1',1,'1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

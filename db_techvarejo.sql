-- nova modificação no banco de dados
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: db_techvarejo
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_clientes` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  PRIMARY KEY (`id_clientes`),
  UNIQUE KEY `cpf_UNIQUE` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (2,'Brenno Lima','123.456.789-10','35 99876-54321','brenno@gmail.com','Poços de Caldas'),(3,'João pedro Silva','569.946.219-50','3596718-9519','joao.silva@gmail.com','Poços de Caldas'),(4,'Maria Eduarda Souza','234.567.890-12','3599234-5678','maria.souza@gmail.com','Poços de Caldas'),(5,'Lucas Henrique Santos','345.678.901-23','3599974-6582','lucas09234@gmail.com','Alfenas'),(6,'Ana Clara Ferreira','456.789.012-34','399456-7891','ana.ferreira@gmail.com','Varginha'),(7,'Matheus Almeida Rocha','789.012.345-67','1995482-6495','almeida.matheus@gmail.com','São João da Boa Vista'),(8,'Joao Victor Diniz','987.654.321.09','3597429-9735','joao.diniz@gmail.com','Matão');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id_codigo` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `quantidade` int NOT NULL,
  PRIMARY KEY (`id_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (5,'iPhone 16 Pro Max','Smartphone Apple 512GB com câmera profissional','Eletrônico',11999.90,10),(6,'Samsung Galaxy S25 Ultra','Smartphone premium com câmera de alta resolução e S Pen integrada.','Eletrônico',8499.90,7),(7,'MacBook Air M4','Notebook ultrafino com chip Apple M4, 16GB RAM e SSD de 512GB.','Informática',10699.90,4),(8,'Monitor Samsung Odyssey G9','Monitor gamer ultrawide 49 polegadas com 240Hz.','Informática',7899.90,3),(9,'Logitech G Pro X Superlight 2','Mouse gamer sem fio ultraleve e alta precisão.','Periférico',899.90,17),(10,'Logitech G915 Lightspeed','Teclado mecânico gamer sem fio com RGB.','Eletrônico',1299.90,12),(11,'ASUS ROG Rapture GT-AX11000','Roteador gamer Wi‑Fi 6 de alto desempenho.','Redes',3399.90,5),(12,'Ubiquiti UniFi Dream Router','Roteador empresarial com gerenciamento avançado.','Redes',2499.00,8),(13,'SSD Samsung 990 Pro 2TB','SSD NVMe de alto desempenho para jogos e edição.','Armazenamento',1390.90,22),(14,'SSD Kingston Fury Renegade 2TB','SSD NVMe PCIe 4.0 de alta velocidade.','Armazenamento',1099.90,15),(15,'Microsoft 365 Family','Assinatura anual com Word, Excel, PowerPoint e OneDrive.','Software',499.90,50),(16,'Adobe Creative Cloud','Pacote profissional para edição de imagem, vídeo e design.','Eletrônico',1199.90,50),(17,'AirPods Pro 2','Fones sem fio com cancelamento ativo de ruído.','Acessório',1999.00,20),(18,'Carregador Apple USB-C 35W','Carregador original Apple com dupla porta USB-C.','Acessório',449.90,22);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `login` varchar(50) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Usuário Geral','admin','$2b$12$F9mPs.RGkHNtXck0o1ptQ.Uulm/Xt9GznDHt88hns1RidLl12nC9y',''),(2,'Brenno Gonçalves Lima','brenno25','$2b$12$gd5S80wZYBr8stb1kQwchuQ2pAlj0nMPcIlKCfwLt81ucW0k5W88G','');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas`
--

DROP TABLE IF EXISTS `vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendas` (
  `id_vendas` int NOT NULL AUTO_INCREMENT,
  `id_clientes` int NOT NULL,
  `id_codigo` int NOT NULL,
  `quantidade` int NOT NULL,
  `valor_total` decimal(10,2) NOT NULL,
  `data_venda` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_vendas`),
  KEY `fk_vendas_clientes1` (`id_clientes`),
  KEY `fk_vendas_produtos1` (`id_codigo`),
  CONSTRAINT `fk_vendas_clientes1` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id_clientes`),
  CONSTRAINT `fk_vendas_produtos1` FOREIGN KEY (`id_codigo`) REFERENCES `produtos` (`id_codigo`),
  CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id_clientes`),
  CONSTRAINT `vendas_ibfk_2` FOREIGN KEY (`id_codigo`) REFERENCES `produtos` (`id_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-30 15:14:19

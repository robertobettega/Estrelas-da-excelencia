CREATE DATABASE  IF NOT EXISTS `centralservicos` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `centralservicos`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 10.1.1.31    Database: centralservicos
-- ------------------------------------------------------
-- Server version	5.5.5-10.3.36-MariaDB-0+deb10u2

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
-- Table structure for table `token_acesso`
--

DROP TABLE IF EXISTS `token_acesso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_acesso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_email` varchar(150) NOT NULL,
  `selector` text DEFAULT NULL,
  `token` text NOT NULL,
  `tempo_expiracao` text NOT NULL,
  `tempo_expiracao_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=320 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_acesso`
--

LOCK TABLES `token_acesso` WRITE;
/*!40000 ALTER TABLE `token_acesso` DISABLE KEYS */;
INSERT INTO `token_acesso` VALUES (10,'pedro@email.com','85f1fc49e26169c2','$2y$10$zn658S5nKwSB33bPbiGPCu9V2aAqo48QYiAdV9aH2xjlj22WRf9Cq','1634758334',NULL),(17,'teste@email.com','ad979ee59ece3adc','$2y$10$mQYWvAygJCrkYugAESoIt.fSmUr4ClLBVgxYvItK3gxGqU4938pfi','1634759535',NULL),(18,'teste@email.com','ed6c19ebdfddc684','$2y$10$JlF6ptk2Hqm6NpNL/LgeZOzVb6xxORg0gZl.VmSEQ0xU7ev0oQ7FO','1634759548',NULL),(27,'antoniolinhares@nhc.com.br','1efbc411fdd6cee4','$2y$10$N61vTHgoByLRhStchM0f2.V.GY4Vtic3dpq6hWBP.OWlzSe8APLSm','1641182572',NULL),(28,'antoniolinhares@nhc.com.br','b70c04a72f8053b3','$2y$10$VSgNDKELMfDnhH/jPSLHiuXFDnQVeaH3KdW9mdeKbZacxV2Gfcxum','1641182581',NULL),(33,'joseteles@delfinsaude.com.br','fde012b9fa56122b','$2y$10$ikTz/UUpla/DMkEUDk0i.ec7/Wbf4DRrrO4F7bJhScV4FGE7EaMAW','1641918596',NULL),(39,'annickcarvalho@nhc.com.br','7b183782b3c07a2d','$2y$10$AAGP5tUGTpImbVc9C7YbLePmEY5OSOwcvrKOWntgIxsgQge4pZM7q','1642158641',NULL),(41,'thamirisaraujo@nhc.com.br','214a1a52adc53cf6','$2y$10$Ql092slOeWxClaZpmhnhAefTq0RmXHktrJCa9xEVxYlO.IPvcPaMC','1642421545',NULL),(46,'miguelsicolo@hospitalriogrande.com.br','847e405a5ec8ad8b','$2y$10$1mhv3qyHeQfJ3GRTR0KHnuHyZx/614NNuiSVxE6EcioCeR4gq7Nn2','1645636434',NULL),(47,'miguelsicolo@hospitalriogrande.com.br','3ad46f2e3d42e3c1','$2y$10$VSGdL0/OFhlbTIolRNJ6NOxF2AyXOX3nTuTmioapX.iP623Z9PuKC','1645636441',NULL),(48,'miguelsicolo@nhc.com.br','eab689135ecb97a0','$2y$10$tskBM/WI3QDiSSwpc1KLSeZXukceZNk8mPZ.k9rncrcN5MEZ0aF0y','1645640742',NULL),(49,'miguelsicolo@hospitalriogrande.com.br','f28911bffd20f03c','$2y$10$6iZIX54TR.tqaJ.9hCPGVuzfrJxu3RBs4ibVN.oQ1lcP4tSpeKy9K','1645640910',NULL),(51,'processos@hospitalriogrande.com.br','97f6598312c9a34e','$2y$10$Zmx8nhoEqf.vaM92QCTuouIC7IEBEinBKFEW.XJHRRsl373CqZOt2','1646666255',NULL),(52,'processos@hospitalriogrande.com.br','0dc17e9cc869ee48','$2y$10$YleI4CIXocu2aZSC3AvNw.eaw/ar8T2wOl12/9d3WIjOpGmCcfeaa','1646666547',NULL),(53,'processos@hospitalriogrande.com.br','252bfa1bae726e96','$2y$10$qAIaVlvvYzIKb4RSM9aiY.NhZBbaszFWKRjvS8jaJeHyVRaJlBbSS','1646666550',NULL),(54,'processos@hospitalriogrande.com.br','8089fe9c8b2965bb','$2y$10$Y/Fi.ksLsRz4h4.xz0b3SeS0oylb/KmZpceO0pKHCxNr/Ww8WqeN2','1646666768',NULL),(55,'processos@hospitalriogrande.com.br','1c1738417b0868b4','$2y$10$K/338CkGs46z/zzDIyhHAuUzprh3oNW6gSPjOBvJTZ/umTgbOnm86','1646666772',NULL),(56,'processos@hospitalriogrande.com.br','a887afde371ab4b7','$2y$10$2JRunlIMw5uJFnyuGSNqUubgLkAl04Dor/cZIpLnsjPfwfS1xtxUe','1646666872',NULL),(57,'processos@hospitalriogrande.com.br','ba5e33550af642e6','$2y$10$SiKwQOwBdvLyAl3Z3GmL0.RbnQfAdZzcVrYeI6ms4Zpb2Q3kf4DDe','1646666875',NULL),(58,'processos@hospitalriogrande.com.br','45414d1acb8b9445','$2y$10$4mbF3BoLRHowOzcLWFALhuUwVcHeePEe6a5PkxKkQenWzGG6RLqQO','1646667022',NULL),(64,'larissadantas@hospitalriogrande.com.br','929ffa8bdac39f78','$2y$10$.9neMSDe2emPbW3hkyrhVeNOiDogtxjcb.u/MhhZHdd5Rx7Zq96YO','1647614722',NULL),(70,'larissadantas@hospitalriogrande.com.br','968dafcd92b11c81','$2y$10$WuMW4PwCP0VnO9DwnUccUOB/YoL1iwvJyv0/P/qSRv3DfKeQu10su','1648661754',NULL),(71,'larissadantas@hospitalriogrande.com.br','b1b0f2b43fbd7381','$2y$10$o9UZG.ZAilCjTAEvyaspU.unPS8ivTifvR90GKkKrW8d8JesQewoa','1648661796',NULL),(72,'larissadantas@hospitalriogrande.com.br','51823ce5f6a29fd5','$2y$10$tt7KSxTkHfDAkW0RiBRxeOyaTLWgu0Xa0nRwPn5rhFzN06gOz3PgC','1648661800',NULL),(73,'gabriellamoraes@hospitalriogrande.com.br','b37f91e07417544b','$2y$10$U3grt8svAA8rhOjLrg43heNdSuFZQB8BWLqBOeekrtG9DetFTDtCq','1648730894',NULL),(74,'gabriellamoraes@hospitalriogrande.com.br','e73ba93d36c7134f','$2y$10$LjyhgYeGVt9nGdS.v3iUTOfQFUi6NK0jiZpmDI4GAFqe40Zs3OWPq','1648732533',NULL),(75,'gabriellamoraes@hospitalriogrande.com.br','a565ed63c6ccd114','$2y$10$W3zNlz53gR.H6qux3kmQcevtqlXpwGPP/O7MwNopYrWj/Uhb0qeyO','1648732676',NULL),(76,'gabriellamoraes@hospitalriogrande.com.br','ee6c00a469376db2','$2y$10$Ca8CgHKP7P0vmTkvCMooDOZXDCfZ47Ia8sGQ4mgUiJJY38C0hKpNW','1648817792',NULL),(77,'gabriellamoraes@hospitalriogrande.com.br','eb38df2c8a0dfa66','$2y$10$Ou2xt2QGbX3fqbVpHKoJsOEpXBcIz3aKg92ICfR4isX8WPpQWTCoG','1648817844',NULL),(78,'gabrielcp4@outlook.com','d922d8ed82119994','$2y$10$2zGO0wCYTasoK5wgbx8JCu3EHcwq6gVfweJzEBDJW6BfDxs5XQMsS','1649855434',NULL),(79,'gabrielcp4@outlook.com','47e3f5ac967fb4db','$2y$10$chwz0uHfHY7JnRO6yUNgPufG6QHCtsoptPApIKEfTH1C9wyMuRvUa','1649855656',NULL),(80,'gabrielcp4@outlook.com','f55420392bd91f1e','$2y$10$RXmaCLigpkv/1/FNSxJIKukEzcbaCEBj/Y8S6.zhQ2AS4Vdpz6lCG','1649856081',NULL),(81,'gabrielcp4@outlook.com','709b7177386a38b5','$2y$10$PI2uOgI/mQAQd/rJanxZWeSgSQJ9zGhHzDWgjSTpWM5s7QDw.YSI.','1649856143',NULL),(82,'usuario@email.com','7cb7a86911b2cf52','$2y$10$0lesvuELeqgin27qUVla/.BhJFdWvnI9z0IQN8L1X66FkOCmbqI3e','1649856195',NULL),(83,'gabriellamoraes@hospitalriogrande.com.br','ba92a492e4067e02','$2y$10$FX4AW9CfrLRP7EKXsKaCLOZusM0uBHQ/6Y8OqJfqHEiiRQRRbYqve','1649857078',NULL),(84,'gabriellamoraes@hospitalriogrande.com.br','84bcf04c7592c227','$2y$10$K7vdGrKsnEqgt57SKeoUrO.DKQ2xiqzboLuHyv/BJrGUAPwf2gXnS','1649857082',NULL),(85,'gabriellamoraes@hospitalriogrande.com.br','1f4062c7e062a146','$2y$10$ouGzDbEmRhDxN66qyoY52OI8YqSXLK2QSSew5iddvagJDc2efHMnC','1649857086',NULL),(86,'gabriellamoraes@hospitalriogrande.com.br','8a6d6b5961a65ac0','$2y$10$BqMF2obCTpOWaoIQn07rEuWO4y5x/bwdtd15euhYNBvEJYbX.hjc2','1649857462',NULL),(87,'gabriellamoraes@hospitalriogrande.com.br','1a3cbf21294fb92d','$2y$10$VcMKSfC2WfKuf7fk98dGceiaw0J1zF8Fnm8oEssK2dOo179eNMOJi','1649857528',NULL),(88,'gabriellamoraes@hospitalriogrande.com.br','e35e7fe292c60f2d','$2y$10$x3Ft9FYxJLpQYymmVA1iGuPEHGta.lg4HnbHTv1KNg863JK2d1rq2','1649857585',NULL),(89,'contato@joseteles.com.br','6240e92d18df81ea','$2y$10$EippBCCL6zb8/umFNG/.6uz3eWHhtREWnH.iXxFGupqN9kJsmleDy','1651588950',NULL),(93,'jessica.gerbelli@uol.com.br','1b7527e4d01b845c','$2y$10$k4Ne1VlXGcYophNWKwj.H..tWpET5t2vI58bgwUdGJREJH3igZRYG','1655299492',NULL),(94,'cristianeneves@hospitalriogrande.com.br','c34953def10c6910','$2y$10$zzZ9XvsSZXzcSnjLAhrr1u9i9YcBpQwPifad1kNbRIjiN2tRxzdby','1655728641',NULL),(98,'pedropaulolucas@hotmail.com','f393cc44f9d0edd1','$2y$10$lE6VhFdz3tsbN165deNRFu63pcJxWjf8NIEs/6KChDmEVUD29d7ei','1655734462',NULL),(99,'pedrolira@nhc.com.br','e34efde6436ab09e','$2y$10$wPxddbvRc7/I8hQaEX2mR.zPRa8PixRZIGC.s35Y7wfDBd1XotUGS','1655734880',NULL),(125,'prontosocorro@nhc.com.br','3b459ab4017ae3d9','$2y$10$Mwsy9jjmDhZ8vB4uz472DOibPefL9dL0Un1z2c4plKSMF/Fb78Nvm','1665770598',NULL),(127,'prontoatendimento@nhc.com.br','04a4e902b21f1f1b','$2y$10$Jnh7P8paFEee4VD2.TkYeu6KgdpQtQh4LM6/FHx2YG4DqFS3cR8Vi','1666031126',NULL),(136,'npti@hospitalriogrande.com.br','4bfc46efa0bf8406','$2y$10$Ap4F0iXhZ5N52At1PXPD7evnBy1eoTJ55lfDZ9BroPLX8U5NgwZEu','1667499157',NULL),(145,'gabrielcp4@outlook.com',NULL,'pXOPo5xv$LPXvyP$dgDlN39fiaCmRIjJEkDmstTCv3LVjmdM','1','2022-12-01 11:42:03'),(146,'gabrielcp4@outlook.com',NULL,'1cKwgOboNJC3BagL$Cd$8DUvXxWcXlcenxj6TjIk4YT0fpza','1','2022-12-01 11:43:56'),(147,'gabrielcp4@outlook.com',NULL,'EpFmpuD9pLN1Wqe1!Ofld0YdXBPZuqozbdVSR1sVmABgX!$W','1','2022-12-01 11:47:51'),(148,'gabrielcp4@outlook.com',NULL,'Eccvfg0UXT6c65RiOmbx$V7flFRwHxAuZZctU!3Q$yEQ!3Ff','1','2022-12-01 11:48:32'),(149,'gabrielcp4@outlook.com',NULL,'BoKco6UAH7qpB12vRQ#50c6YfPeJN4hqyN!y19HA#IF#QJiq','1','2022-12-01 11:49:20'),(150,'gabrielcp4@outlook.com',NULL,'z8b$6pqUymHOCnTY#pr7ByXNQZh#wNRCIVo4BCHG4h$UTGio','1','2022-12-01 11:51:33'),(151,'gabrielcp4@outlook.com',NULL,'yaBCIZT5b0ByMSbx7wwZz!I0XQxtZULQ81b#!1boiGP2UfZZ','1','2022-12-01 11:52:03'),(152,'gabrielcp4@outlook.com',NULL,'XmnZmvfu2hQPmU3eFHEzaHGGZFXtmBNqSmrbj9b33JDmv#8v','1','2022-12-01 11:52:32'),(153,'gabrielcp4@outlook.com',NULL,'tqr!kE$r2cGTVpey0I7TkyrR61csewKtAB!7WL8j11H59gXU','1','2022-12-01 12:00:58'),(154,'gabrielcp4@outlook.com',NULL,'ptZgsS5qzF1vMgZ9q0F4G3KyWpc8WQbbO1Z7R7pD9GGLB6x0','1','2022-12-01 12:01:45'),(155,'gabrielcp4@outlook.com',NULL,'Y#vSvB1kk8itRLR$VIy2dYACZcCDU7cZ!Ecf7nMe#uiA4Lr$','1','2022-12-01 12:02:25'),(156,'gabrielcp4@outlook.com',NULL,'JAnZhNQj0lqgm1RF7YC1ThjJNgYX!Pzcg5hrOD5RcV7GVGwU','1','2022-12-01 13:27:53'),(157,'gabrielcp4@outlook.com',NULL,'CFvCTqQ2daiBWJOiU$2LR7515QcphkOT69m57laUa5uNUQpK','1','2022-12-01 13:49:11'),(158,'gabrielcp4@outlook.com',NULL,'QS2K4tiN#6IzABxz$Mbx1!1ITZLZVL2H952LWVj!B7DzBs6J','1','2022-12-01 13:54:28'),(159,'gabrielcp4@outlook.com',NULL,'5N9gkJLntwBJfe$LtGyVFaylvf4ilKruLdjaI0xD#$WtSzDQ','1','2022-12-01 13:57:36'),(160,'gabrielcp4@outlook.com',NULL,'oQuCQVGU9j7BHI!73!wbbj1W3o7!3mDuyy4aV22uFru2#$4J','1','2022-12-01 13:58:14'),(173,'matheusaugusto@nhc.com.br','c2efb4832e910f39','$2y$10$DZ7j4JxLQo4luBwvo7Vc3eO.vE9dJOfhZG1zbEDbi0/PbyEexTKP.','1683897131',NULL),(174,'vitortoscano@hospitalriogrande.com.br','b5b67cc2c9d7db43','$2y$10$RnJ6eq6iaclCsXSBomjuLeJhE7EF0FhRhjN55tgvEGnAUy43kQGHG','1692191772',NULL),(180,'antoniolinhares@hospitalriogrande.com.br','7790b7890afa3578','$2y$10$AWdoGrWuhIhrn.BnXf/zJemX9VzQ8zsNIfAX8yIdFWL/kI.DZtUJq','1701108572',NULL),(185,'adriana.bezerra77@gmail.com','72f3337695f00dc7','$2y$10$kOw5Ojrc01o1ii2qy3P/yeETva1arClPooF88OnJ.B3ZvDh22ULIy','1703017205',NULL),(187,'alexandresiilva2468@gmail.com','bd047d4e59efdf67','$2y$10$fYHMeddTJbpipeK.7R8d7usxRh4QvCJwxIA5ozJTqS8t/ZSi/I66q','1703017295',NULL),(190,'raulvinicius@nhc.com.br','3428c11d0110df5b','$2y$10$IhRDuM2d.t4Qh9RLGwmTae.dSekgOwYddJkPSxpcwE9NLq03OZDLK','1704977032',NULL),(215,'adriana.bezerra77@hotmail.com','5c6c7b55cc811a56','$2y$10$PYTktfCoZkf7GaRM8rCVje9dNxNCyaU8lGbcoj1WFDZMe3hJjNav6','1712758279',NULL),(218,'claudia.oliveira641@gmail.com','ea13bf7495a5b77f','$2y$10$k.58fOX7.MpDwjoNzz4ale.T8V2POOxwSWGT6QQB5LNpPinEtFS6y','1712839478',NULL),(226,'lucasbarreto@hospitalriogrande.com.br','24b26ed146c3dd90','$2y$10$5MDbIleVdZv09rM6YU.Q4u2gEPh14KoKumnqjh3RxdiGuerHivYQO','1716841454',NULL),(227,'contasapagar@hospitalriogrande.com.br','1f9c24271fa8f345','$2y$10$1PqPRFOToJtszPw3IDSrAObpPx6ZmXCZI97FVFZ6F.JKy2DTfZRg6','1716841768',NULL),(228,'ofcdavid@gmail.com','146538d4bde36868','$2y$10$3A5EUMoUYoGJv8Hd3kzaeOdTa.vsxVLEL4UeCqx.gEx25OMXhJbQC','1716894720',NULL),(230,'emanuelpereira@hospitalriogrande.com.br','aaa2913acfc7e4c9','$2y$10$SiHyisoVCqqGQdWPrwo3r.3MAakbuM3e8GvIiew6qpWlLknFnSJaS','1717783238',NULL),(251,'davidgabriel200507@gmail.com','316635101ab2c82f','$2y$10$VKNQo65pXbBmGSazRTGsjOfjeYen99m.7H6loziqXmV3HanFQFHb.','1718831399',NULL),(278,'vicmath64@gmail.com','ad0f64feb587809b','$2y$10$nCpvuinzvea6clQZAxoh0uzRllkcB3CNiS..59CmJDbl1UZAUxPp.','1722358799',NULL),(281,'marcoshudson4321@gmail.com','3f603e0eb30f44ea','$2y$10$mfPb8HeB1piRE5ZE2P5.2OAlQyfLpuF/7wA1hGigDDmoqbOcHZgby','1722365742',NULL),(310,'davidaraujo@hospitalriogrande.com.br','8c8bac2063d6b7db','$2y$10$rpW4v2lfG9EsCJ35gzEfYuw/qkwDwkcUP0r5INv1d71Eo0/enlJYK','1724780710',NULL),(312,'diegocarvalho@hospitalriogrande.com.br','f8427a800eda7af1','$2y$10$yCFzj/tdVU1t.pX93qkGoO29Bqs2Jx2WAlAFwhw.he9ocIa290.IW','1724852345',NULL),(313,'soloestudos@gmail.com','057a1459b12980ac','$2y$10$DRw8kx7xxO/eLZZbTKv3peB9FKbdDyH2Jd9kYBRPp.lDveiFlWtry','1724867061',NULL),(317,'victor.matheus.melo.072@ufrn.edu.br','95f3d177c7a2fcdc','$2y$10$vG8LgDgs9hRGLehnIV28gOKpNkfXMOQsYAe.AvXhqqdfYXL5xdJGS','1725375963',NULL);
/*!40000 ALTER TABLE `token_acesso` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-09 12:36:30

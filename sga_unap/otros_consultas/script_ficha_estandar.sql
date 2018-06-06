/*
SQLyog Enterprise - MySQL GUI v8.1 
MySQL - 5.5.5-10.1.28-MariaDB : Database - pric_otca
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`pric_otca` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `pric_otca`;

/*Table structure for table `ficha_estandar` */

DROP TABLE IF EXISTS `ficha_estandar`;

CREATE TABLE `ficha_estandar` (
  `Fie_IdFichaEstandar` int(11) NOT NULL AUTO_INCREMENT,
  `Fie_CampoFicha` varchar(50) DEFAULT NULL,
  `Esr_IdEstandarRecurso` int(11) DEFAULT NULL,
  `Fie_NombreTabla` varchar(50) DEFAULT NULL,
  `Fie_TipoDatoCampo` char(15) DEFAULT NULL,
  `Fie_TamanoColumna` char(11) DEFAULT NULL,
  `Fie_ColumnaTabla` varchar(50) DEFAULT NULL,
  `Fie_ColumnaObligatorio` tinyint(5) DEFAULT NULL,
  `Fie_ColumnaTraduccion` tinyint(5) DEFAULT NULL,
  `Fie_ColumnaTipo` varchar(50) DEFAULT NULL,
  `Idi_IdIdioma` char(11) DEFAULT NULL,
  PRIMARY KEY (`Fie_IdFichaEstandar`),
  KEY `FK_ficha_estandar` (`Esr_IdEstandarRecurso`),
  CONSTRAINT `FK_ficha_estandar_esr` FOREIGN KEY (`Esr_IdEstandarRecurso`) REFERENCES `estandar_recurso` (`Esr_IdEstandarRecurso`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;

/*Data for the table `ficha_estandar` */

insert  into `ficha_estandar`(Fie_IdFichaEstandar,Fie_CampoFicha,Esr_IdEstandarRecurso,Fie_NombreTabla,Fie_TipoDatoCampo,Fie_TamanoColumna,Fie_ColumnaTabla,Fie_ColumnaObligatorio,Fie_ColumnaTraduccion,Fie_ColumnaTipo,Idi_IdIdioma) values (1,'﻿Titulo',3,'dublincore','varchar',NULL,'Dub_Titulo',NULL,NULL,NULL,'es'),(2,'Descripcion',3,'dublincore','varchar',NULL,'Dub_Descripcion',NULL,NULL,NULL,'es'),(3,'Editor',3,'dublincore','varchar',NULL,'Dub_Editor',NULL,NULL,NULL,'es'),(4,'Colaborador',3,'dublincore','varchar',NULL,'Dub_Colaborador',NULL,NULL,NULL,'es'),(5,'Fecha Documento',3,'dublincore','varchar',NULL,'Dub_FechaDocumento',NULL,NULL,NULL,'es'),(6,'Formato',3,'dublincore','varchar',NULL,'Dub_Formato',NULL,NULL,NULL,'es'),(7,'Identificador',3,'dublincore','varchar',NULL,'Dub_Identificador',NULL,NULL,NULL,'es'),(8,'Fuente',3,'dublincore','varchar',NULL,'Dub_Fuente',NULL,NULL,NULL,'es'),(9,'Idioma',3,'dublincore','varchar',NULL,'Dub_Idioma',NULL,NULL,NULL,'es'),(10,'Relacion',3,'dublincore','varchar',NULL,'Dub_Relacion',NULL,NULL,NULL,'es'),(11,'Cobertura',3,'dublincore','varchar',NULL,'Dub_Cobertura',NULL,NULL,NULL,'es'),(12,'Derechos',3,'dublincore','varchar',NULL,'Dub_Derechos',NULL,NULL,NULL,'es'),(13,'PalabraClave',3,'dublincore','varchar',NULL,'Dub_PalabraClave',NULL,NULL,NULL,'es'),(14,'Pais',3,'dublincore','varchar',NULL,'Pai_Nombre',NULL,NULL,NULL,'es'),(15,'Tipo Dublin',3,'tipo_dublin','varchar',NULL,'Tid_Descripcion',NULL,NULL,NULL,'es'),(16,'Autor Nombre ',3,'autor','varchar',NULL,'Aut_Nombre',NULL,NULL,NULL,'es'),(17,'Autor Profesion',3,'autor','varchar',NULL,'Aut_Profesion',NULL,NULL,NULL,'es'),(18,'Autor Email',3,'autor','varchar',NULL,'Aut_Email',NULL,NULL,NULL,'es'),(19,'Nombre Cientifico',4,'plinian','varchar',NULL,'Pli_NombreCientifico',NULL,NULL,NULL,'es'),(20,'Acronimo Institucion',4,'plinian','varchar',NULL,'Pli_AcronimoInstitucion',NULL,NULL,NULL,'es'),(21,'Fecha Ultima Modificacion',4,'plinian','varchar',NULL,'Pli_FechaUltimaModificacion',NULL,NULL,NULL,'es'),(22,'Idioma',4,'plinian','varchar',NULL,'Pli_Idioma',NULL,NULL,NULL,'es'),(23,'Id Registro Taxon',4,'plinian','varchar',NULL,'Pli_IdRegistroTaxon',NULL,NULL,NULL,'es'),(24,'Cita Sugerida',4,'plinian','varchar',NULL,'Pli_CitaSugerida',NULL,NULL,NULL,'es'),(25,'Distribucion',4,'plinian','varchar',NULL,'Pli_Distribucion',NULL,NULL,NULL,'es'),(26,'Descripcion General',4,'plinian','varchar',NULL,'Pli_DescripcionGeneral',NULL,NULL,NULL,'es'),(27,'Reino',4,'plinian','varchar',NULL,'Pli_Reino',NULL,NULL,NULL,'es'),(28,'Phylum',4,'plinian','varchar',NULL,'Pli_Phylum',NULL,NULL,NULL,'es'),(29,'Clase',4,'plinian','varchar',NULL,'Pli_Clase',NULL,NULL,NULL,'es'),(30,'Orden',4,'plinian','varchar',NULL,'Pli_Orden',NULL,NULL,NULL,'es'),(31,'Familia',4,'plinian','varchar',NULL,'Pli_Familia',NULL,NULL,NULL,'es'),(32,'Genero',4,'plinian','varchar',NULL,'Pli_Genero',NULL,NULL,NULL,'es'),(33,'Sinonimia',4,'plinian','varchar',NULL,'Pli_Sinonimia',NULL,NULL,NULL,'es'),(34,'AutorFechaTaxon',4,'plinian','varchar',NULL,'Pli_AutorFechaTaxon',NULL,NULL,NULL,'es'),(35,'Especies Referencias Publicacion',4,'plinian','varchar',NULL,'Pli_EspeciesReferenciasPublicacion',NULL,NULL,NULL,'es'),(36,'Nombres Comunes',4,'plinian','varchar',NULL,'Pli_NombresComunes',NULL,NULL,NULL,'es'),(37,'Informacion Tipos',4,'plinian','varchar',NULL,'Pli_InformacionTipos',NULL,NULL,NULL,'es'),(38,'Identificador Unico Global',4,'plinian','varchar',NULL,'Pli_IdentificadorUnicoGlobal',NULL,NULL,NULL,'es'),(39,'Colaboradores',4,'plinian','varchar',NULL,'Pli_Colaboradores',NULL,NULL,NULL,'es'),(40,'FechaCreacion',4,'plinian','varchar',NULL,'Pli_FechaCreacion',NULL,NULL,NULL,'es'),(41,'Habito',4,'plinian','varchar',NULL,'Pli_Habito',NULL,NULL,NULL,'es'),(42,'CicloVida',4,'plinian','varchar',NULL,'Pli_CicloVida',NULL,NULL,NULL,'es'),(43,'Reproduccion',4,'plinian','varchar',NULL,'Pli_Reproduccion',NULL,NULL,NULL,'es'),(44,'CicloAnual',4,'plinian','varchar',NULL,'Pli_CicloAnual',NULL,NULL,NULL,'es'),(45,'Descripcion Cientifica',4,'plinian','varchar',NULL,'Pli_DescripcionCientifica',NULL,NULL,NULL,'es'),(46,'Breve Descripcion',4,'plinian','varchar',NULL,'Pli_BreveDescripcion',NULL,NULL,NULL,'es'),(47,'Alimentacion',4,'plinian','varchar',NULL,'Pli_Alimentacion',NULL,NULL,NULL,'es'),(48,'Comportamiento',4,'plinian','varchar',NULL,'Pli_Comportamiento',NULL,NULL,NULL,'es'),(49,'Interacciones',4,'plinian','varchar',NULL,'Pli_Interacciones',NULL,NULL,NULL,'es'),(50,'Numero Cromosomas',4,'plinian','varchar',NULL,'Pli_NumeroCromosomas',NULL,NULL,NULL,'es'),(51,'Datos Moleculares',4,'plinian','varchar',NULL,'Pli_DatosMoleculares',NULL,NULL,NULL,'es'),(52,'Estado Act Poblacion',4,'plinian','varchar',NULL,'Pli_EstadoActPoblacion',NULL,NULL,NULL,'es'),(53,'Estado UICN',4,'plinian','varchar',NULL,'Pli_EstadoUICN',NULL,NULL,NULL,'es'),(54,'Estado Leg Nacional',4,'plinian','varchar',NULL,'Pli_EstadoLegNacional',NULL,NULL,NULL,'es'),(55,'Habitat',4,'plinian','varchar',NULL,'Pli_Habitat',NULL,NULL,NULL,'es'),(56,'Territorialidad',4,'plinian','varchar',NULL,'Pli_Territorialidad',NULL,NULL,NULL,'es'),(57,'Endemismo',4,'plinian','varchar',NULL,'Pli_Endemismo',NULL,NULL,NULL,'es'),(58,'Usos',4,'plinian','varchar',NULL,'Pli_Usos',NULL,NULL,NULL,'es'),(59,'Manejo',4,'plinian','varchar',NULL,'Pli_Manejo',NULL,NULL,NULL,'es'),(60,'Folklore',4,'plinian','varchar',NULL,'Pli_Folklore',NULL,NULL,NULL,'es'),(61,'ReferenciasBibliograficas',4,'plinian','varchar',NULL,'Pli_ReferenciasBibliograficas',NULL,NULL,NULL,'es'),(62,'Documentacion No Estructurada',4,'plinian','varchar',NULL,'Pli_DocumentacionNoEstructurada',NULL,NULL,NULL,'es'),(63,'Otra Fuente Informacion',4,'plinian','varchar',NULL,'Pli_OtraFuenteInformacion',NULL,NULL,NULL,'es'),(64,'Articulo Cientifico',4,'plinian','varchar',NULL,'Pli_ArticuloCientifico',NULL,NULL,NULL,'es'),(65,'Claves Taxonomicas',4,'plinian','varchar',NULL,'Pli_ClavesTaxonomicas',NULL,NULL,NULL,'es'),(66,'Datos Migrados',4,'plinian','varchar',NULL,'Pli_DatosMigrados',NULL,NULL,NULL,'es'),(67,'Importancia Ecologica',4,'plinian','varchar',NULL,'Pli_ImportanciaEcologica',NULL,NULL,NULL,'es'),(68,'Historia Natural No Estructurada',4,'plinian','varchar',NULL,'Pli_HistoriaNaturalNoEstructurada',NULL,NULL,NULL,'es'),(69,'Datos Invasividad',4,'plinian','varchar',NULL,'Pli_DatosInvasividad',NULL,NULL,NULL,'es'),(70,'Publico Objetivo',4,'plinian','varchar',NULL,'Pli_PublicoObjetivo',NULL,NULL,NULL,'es'),(71,'Version',4,'plinian','varchar',NULL,'Pli_Version',NULL,NULL,NULL,'es'),(72,'URL Imagen1',4,'plinian','varchar',NULL,'Pli_URLImagen1',NULL,NULL,NULL,'es'),(73,'Pie Imagen1',4,'plinian','varchar',NULL,'Pli_PieImagen1',NULL,NULL,NULL,'es'),(74,'URL Imagen2',4,'plinian','varchar',NULL,'Pli_URLImagen2',NULL,NULL,NULL,'es'),(75,'Pie Imagen2',4,'plinian','varchar',NULL,'Pli_PieImagen2',NULL,NULL,NULL,'es'),(76,'URL Imagen3',4,'plinian','varchar',NULL,'Pli_URLImagen3',NULL,NULL,NULL,'es'),(77,'Pie Imagen3',4,'plinian','varchar',NULL,'Pli_PieImagen3',NULL,NULL,NULL,'es'),(78,'Imagen',4,'plinian','varchar',NULL,'Pli_Imagen',NULL,NULL,NULL,'es'),(79,'Fecha Publicacion',2,'matriz_legal','varchar',NULL,'Mal_FechaPublicacion',NULL,NULL,NULL,'es'),(80,'Entidad',2,'matriz_legal','varchar',NULL,'Mal_Entidad',NULL,NULL,NULL,'es'),(81,'Numero Normas',2,'matriz_legal','varchar',NULL,'Mal_NumeroNormas',NULL,NULL,NULL,'es'),(82,'Titulo',2,'matriz_legal','varchar',NULL,'Mal_Titulo',NULL,NULL,NULL,'es'),(83,'Articulo Aplicable',2,'matriz_legal','varchar',NULL,'Mal_ArticuloAplicable',NULL,NULL,NULL,'es'),(84,'Resumen Legislacion',2,'matriz_legal','varchar',NULL,'Mal_ResumenLegislacion',NULL,NULL,NULL,'es'),(85,'Fecha Revision',2,'matriz_legal','varchar',NULL,'Mal_FechaRevision',NULL,NULL,NULL,'es'),(86,'Normas Complemaentarias',2,'matriz_legal','varchar',NULL,'Mal_NormasComplemaentarias',NULL,NULL,NULL,'es'),(87,'Tipo Legislacion',2,'matriz_legal','varchar',NULL,'Mal_TipoLegislacion',NULL,NULL,NULL,'es'),(88,'Pais',2,'pais','varchar',NULL,'Pai_Nombre',NULL,NULL,NULL,'es'),(89,'Tema',2,'tema_legal','varchar',NULL,'Tel_Nombre',NULL,NULL,NULL,'es'),(90,'Sub Nivel',2,'sub_nivel_legal','varchar',NULL,'Snl_Nombre',NULL,NULL,NULL,'es'),(91,'Nivel',2,'nivel_legal','varchar',NULL,'Nil_Nombre',NULL,NULL,NULL,'es'),(92,'Valor',1,'monitoreo_calidad_agua','varchar',NULL,'Mca_Valor',NULL,NULL,NULL,'es'),(93,'Fecha',1,'monitoreo_calidad_agua','varchar',NULL,'Mca_Fecha',NULL,NULL,NULL,'es'),(94,'Nombre Variable',1,'variables_estudio','varchar',NULL,'Var_Nombre',NULL,NULL,NULL,'es'),(95,'Abreviatura Variable',1,'variables_estudio','varchar',NULL,'Var_Abreviatura',NULL,NULL,NULL,'es'),(96,'Und Medida Variable',1,'variables_estudio','varchar',NULL,'Var_Medida',NULL,NULL,NULL,'es'),(97,'Nombre de Estacion',1,'estacion_monitoreo','varchar',NULL,'Esm_Nombre',NULL,NULL,NULL,'es'),(98,'Estacion Longitud',1,'estacion_monitoreo','varchar',NULL,'Esm_Longitud',NULL,NULL,NULL,'es'),(99,'Estacion Latitud',1,'estacion_monitoreo','varchar',NULL,'Esm_Latitud',NULL,NULL,NULL,'es'),(100,'Estacion Altitud',1,'estacion_monitoreo','varchar',NULL,'Esm_Altitud',NULL,NULL,NULL,'es'),(101,'Estacion Referencia',1,'estacion_monitoreo','varchar',NULL,'Esm_Referencia',NULL,NULL,NULL,'es'),(102,'Entidad Responsable',1,'entidad','varchar',NULL,'Ent_Nombre',NULL,NULL,NULL,'es'),(103,'Entidad  Siglas',1,'entidad','varchar',NULL,'Ent_Siglas',NULL,NULL,NULL,'es'),(104,'Rio',1,'rio','varchar',NULL,'Rio_Nombre',NULL,NULL,NULL,'es'),(105,'Cuenca',1,'cuenca','varchar',NULL,'Cue_Nombre',NULL,NULL,NULL,'es'),(106,'Sub Cuenca',1,'sub_cuenca','varchar',NULL,'Suc_Nombre',NULL,NULL,NULL,'es'),(107,'Pais',1,'pais','varchar',NULL,'Pai_Nombre',NULL,NULL,NULL,'es'),(108,'Departamento',1,'estado_departamento','varchar',NULL,'Esd_Nombre',NULL,NULL,NULL,'es'),(109,'Distrito',1,'municipio_provincia_distrito','varchar',NULL,'Mpd_Nombre',NULL,NULL,NULL,'es'),(110,'Palabra Clave',2,'matriz_legal','varchar',NULL,'Mal_PalabraClave',NULL,NULL,NULL,'es'),(111,'Fecha Actualizacion',6,'darwin','varchar',NULL,'Dar_FechaActualizacion',NULL,NULL,NULL,'es'),(112,'Codigo Institucion',6,'darwin','varchar',NULL,'Dar_CodigoInstitucion',NULL,NULL,NULL,'es'),(113,'Codigo Coleccion',6,'darwin','varchar',NULL,'Dar_CodigoColeccion',NULL,NULL,NULL,'es'),(114,'Numero Catalogo',6,'darwin','varchar',NULL,'Dar_NumeroCatalogo',NULL,NULL,NULL,'es'),(115,'Nombre Cientifico',6,'darwin','varchar',NULL,'Dar_NombreCientifico',NULL,NULL,NULL,'es'),(116,'Base Registro',6,'darwin','varchar',NULL,'Dar_BaseRegistro',NULL,NULL,NULL,'es'),(117,'Reino Organismo',6,'darwin','varchar',NULL,'Dar_ReinoOrganismo',NULL,NULL,NULL,'es'),(118,'Division',6,'darwin','varchar',NULL,'Dar_Division',NULL,NULL,NULL,'es'),(119,'Clase Organismo',6,'darwin','varchar',NULL,'Dar_ClaseOrganismo',NULL,NULL,NULL,'es'),(120,'Orden Organismo',6,'darwin','varchar',NULL,'Dar_OrdenOrganismo',NULL,NULL,NULL,'es'),(121,'Familia Organismo',6,'darwin','varchar',NULL,'Dar_FamiliaOrganismo',NULL,NULL,NULL,'es'),(122,'Genero Organismo',6,'darwin','varchar',NULL,'Dar_GeneroOrganismo',NULL,NULL,NULL,'es'),(123,'Especie Organismo',6,'darwin','varchar',NULL,'Dar_EspecieOrganismo',NULL,NULL,NULL,'es'),(124,'Sub Especie Organismo',6,'darwin','varchar',NULL,'Dar_SubEspecieOrganismo',NULL,NULL,NULL,'es'),(125,'Autor Nombre Cientifico',6,'darwin','varchar',NULL,'Dar_AutorNombreCientifico',NULL,NULL,NULL,'es'),(126,'Identificado Por',6,'darwin','varchar',NULL,'Dar_IdentificadoPor',NULL,NULL,NULL,'es'),(127,'Ano Identificacion',6,'darwin','varchar',NULL,'Dar_AnoIdentificacion',NULL,NULL,NULL,'es'),(128,'Mes Identificacion',6,'darwin','varchar',NULL,'Dar_MesIdentificacion',NULL,NULL,NULL,'es'),(129,'Dia Identificacion',6,'darwin','varchar',NULL,'Dar_DiaIdentificacion',NULL,NULL,NULL,'es'),(130,'Status Tipo',6,'darwin','varchar',NULL,'Dar_StatusTipo',NULL,NULL,NULL,'es'),(131,'Numero Colector',6,'darwin','varchar',NULL,'Dar_NumeroColector',NULL,NULL,NULL,'es'),(132,'Numero Campo',6,'darwin','varchar',NULL,'Dar_NumeroCampo',NULL,NULL,NULL,'es'),(133,'Colector',6,'darwin','varchar',NULL,'Dar_Colector',NULL,NULL,NULL,'es'),(134,'Ano Colectado',6,'darwin','varchar',NULL,'Dar_AnoColectado',NULL,NULL,NULL,'es'),(135,'Mes Colectado',6,'darwin','varchar',NULL,'Dar_MesColectado',NULL,NULL,NULL,'es'),(136,'Dia Colectado',6,'darwin','varchar',NULL,'Dar_DiaColectado',NULL,NULL,NULL,'es'),(137,'Dia Ordinario',6,'darwin','varchar',NULL,'Dar_DiaOrdinario',NULL,NULL,NULL,'es'),(138,'Hora Colectado',6,'darwin','varchar',NULL,'Dar_HoraColectado',NULL,NULL,NULL,'es'),(139,'Continente Oceano',6,'darwin','varchar',NULL,'Dar_ContinenteOceano',NULL,NULL,NULL,'es'),(140,'Pais',6,'darwin','varchar',NULL,'Dar_Pais',NULL,NULL,NULL,'es'),(141,'Estado Provincia',6,'darwin','varchar',NULL,'Dar_EstadoProvincia',NULL,NULL,NULL,'es'),(142,'Municipio',6,'darwin','varchar',NULL,'Dar_Municipio',NULL,NULL,NULL,'es'),(143,'Localidad',6,'darwin','varchar',NULL,'Dar_Localidad',NULL,NULL,NULL,'es'),(144,'Longitud',6,'darwin','varchar',NULL,'Dar_Longitud',NULL,NULL,NULL,'es'),(145,'Latitud',6,'darwin','varchar',NULL,'Dar_Latitud',NULL,NULL,NULL,'es'),(146,'Precision De Cordenada',6,'darwin','varchar',NULL,'Dar_PrecisionDeCordenada',NULL,NULL,NULL,'es'),(147,'Bounding Box',6,'darwin','varchar',NULL,'Dar_BoundingBox',NULL,NULL,NULL,'es'),(148,'Minima Elevacion',6,'darwin','varchar',NULL,'Dar_MinimaElevacion',NULL,NULL,NULL,'es'),(149,'Maxima Elevacion',6,'darwin','varchar',NULL,'Dar_MaximaElevacion',NULL,NULL,NULL,'es'),(150,'Minima Profundidad',6,'darwin','varchar',NULL,'Dar_MinimaProfundidad',NULL,NULL,NULL,'es'),(151,'Maxima Profundidad',6,'darwin','varchar',NULL,'Dar_MaximaProfundidad',NULL,NULL,NULL,'es'),(152,'Sexo Organismo',6,'darwin','varchar',NULL,'Dar_SexoOrganismo',NULL,NULL,NULL,'es'),(153,'Preparacion Tipo',6,'darwin','varchar',NULL,'Dar_PreparacionTipo',NULL,NULL,NULL,'es'),(154,'Conteo Individuo',6,'darwin','varchar',NULL,'Dar_ConteoIndividuo',NULL,NULL,NULL,'es'),(155,'Numero Catalogo Anterior',6,'darwin','varchar',NULL,'Dar_NumeroCatalogoAnterior',NULL,NULL,NULL,'es'),(156,'Tipo Relacion',6,'darwin','varchar',NULL,'Dar_TipoRelacion',NULL,NULL,NULL,'es'),(157,'Informacion Relacionada',6,'darwin','varchar',NULL,'Dar_InformacionRelacionada',NULL,NULL,NULL,'es'),(158,'Estado Vida',6,'darwin','varchar',NULL,'Dar_EstadoVida',NULL,NULL,NULL,'es'),(159,'Nota',6,'darwin','varchar',NULL,'Dar_Nota',NULL,NULL,NULL,'es'),(160,'Nombre Comun Organismo',6,'darwin','varchar',NULL,'Dar_NombreComunOrganismo',NULL,NULL,NULL,'es'),(161,'Nombre del Archivo',3,'archivo_fisico','varchar',NULL,'Arf_PosicionFisica',NULL,NULL,NULL,'es'),(162,'Tema de Dublin',3,'tema_dublin','varchar',NULL,'Ted_IdTemaDublin',NULL,NULL,NULL,'es'),(196,'URL del Archivo',3,'archivo_fisico','varchar',NULL,'Arf_URL',NULL,NULL,NULL,NULL),(197,'Codigo',9,'prueba_webservice','int','10','Prw_Codigo',1,0,'Entero','es'),(198,'Sigla',9,'prueba_webservice','varchar','50','Prw_Sigla',1,0,'Texto','es'),(199,'Nome',9,'prueba_webservice','varchar','100','Prw_Nome',1,0,'Texto','es'),(202,'Pais',12,'hidrologia','varchar','20','Hid_Pais',1,0,'Texto','es'),(203,'Rio',12,'hidrologia','varchar','100','Hid_Rio',1,0,'Texto','es'),(204,'Variable',12,'hidrologia','varchar','50','Hid_Variable',1,0,'Texto','es'),(205,'Valor',12,'hidrologia','double','16,8','Hid_Valor',1,0,'Decimal','es'),(206,'Unidad medida',12,'hidrologia','varchar','10','Hid_UnidadMedida',0,0,'Texto','es'),(207,'Fecha',12,'hidrologia','varchar','10','Hid_Fecha',1,0,'Texto','es'),(208,'Latitud',12,'hidrologia','varchar','100','Hid_Latitud',1,0,'Latitud','es'),(209,'Longitud',12,'hidrologia','varchar','100','Hid_Longitud',1,0,'Longitud','es'),(210,'Nuevo campos',13,'nuevo_estandar','double','16,8','Nue_NuevoCampos',1,0,'Decimal','es'),(211,'Nuevo campo latitud',13,'nuevo_estandar','varchar','100','Nue_NuevoCampoLatitud',1,0,'Latitud','es'),(218,'Comunidades',15,'pueblos_indigenas','varchar','200','Pui_Comunidades',1,1,'Texto','es'),(219,'Latitud',15,'pueblos_indigenas','varchar','100','Pui_Latitud',1,0,'Latitud','es'),(220,'Longitud',15,'pueblos_indigenas','varchar','100','Pui_Longitud',1,0,'Longitud','es'),(221,'Habitantes',15,'pueblos_indigenas','varchar','20','Pui_Habitantes',0,0,'Texto','es'),(222,'Senal radio',15,'pueblos_indigenas','varchar','200','Pui_SenalRadio',0,0,'Texto','es'),(223,'Senal celular buena',15,'pueblos_indigenas','varchar','20','Pui_SenalCelularBuena',0,0,'Texto','es'),(224,'Senal celular regular',15,'pueblos_indigenas','varchar','20','Pui_SenalCelularRegular',0,0,'Texto','es'),(225,'Tema',14,'investigacion_opinion_publica','varchar','100','Iop_Tema',1,1,'Texto','es'),(226,'Subtema',14,'investigacion_opinion_publica','varchar','100','Iop_Subtema',1,1,'Texto','es'),(227,'Pregunta',14,'investigacion_opinion_publica','varchar','2000','Iop_Pregunta',1,1,'Texto','es'),(228,'Resultado',14,'investigacion_opinion_publica','varchar','15000','Iop_Resultado',1,0,'Texto','es'),(229,'Pais',14,'investigacion_opinion_publica','varchar','20','Iop_Pais',1,0,'Texto','es'),(230,'Latitud',14,'investigacion_opinion_publica','varchar','100','Iop_Latitud',1,0,'Latitud','es'),(231,'Longitud',14,'investigacion_opinion_publica','varchar','100','Iop_Longitud',1,0,'Longitud','es'),(248,'Nombre',19,'opinion_publica','varchar','50','Opp_Nombre',1,0,'Texto','es'),(249,'Etiqueta',19,'opinion_publica','varchar','1000','Opp_Etiqueta',1,1,'Texto','es'),(250,'Tipo',19,'opinion_publica','varchar','20','Opp_Tipo',1,0,'Texto','es'),(251,'Tema',19,'opinion_publica','varchar','50','Opp_Tema',0,0,'Texto','es'),(252,'Subtema',19,'opinion_publica','varchar','50','Opp_Subtema',0,0,'Texto','es'),(253,'Pais',19,'opinion_publica','varchar','15','Opp_Pais',1,0,'Texto','es'),(254,'Latitud',19,'opinion_publica','varchar','100','Opp_Latitud',1,0,'Latitud','es'),(255,'Longitud',19,'opinion_publica','varchar','100','Opp_Longitud',1,0,'Longitud','es'),(256,'Idd',20,'exam','int','10','Exa_Idd',1,0,'Entero','es'),(257,'Nombre',20,'exam','int','10','Exa_Nombre',0,0,'Entero','es');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

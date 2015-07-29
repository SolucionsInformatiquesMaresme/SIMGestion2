/* Base de Dades de SIMGes*/

CREATE TABLE `sim_agendes` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_agendes` ADD `nom` varchar(255) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_agendes` ADD `descripcio` longtext AFTER `nom`;
ALTER TABLE `sim_agendes` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcio`;

CREATE TABLE `sim_agendes_usuaris` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_agendes_usuaris` ADD `id_agenda` int(11) NOT NULL default '0' AFTER `id` ;
ALTER TABLE `sim_agendes_usuaris` ADD `id_usuari` int(11) NOT NULL default '0' AFTER `id_agenda` ;
ALTER TABLE `sim_agendes_usuaris` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_usuari`;
ALTER TABLE `sim_agendes_usuaris` ADD `escriptura` tinyint(1) NOT NULL default '0' AFTER `visible`;
ALTER TABLE `sim_agendes_usuaris` ADD `propietari` tinyint(1) NOT NULL default '0' AFTER `escriptura` ;

CREATE TABLE `sim_archius` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_archius` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id`;
ALTER TABLE `sim_archius` ADD `id_archiu_tipus` int(11) NOT NULL default '0' AFTER `visible`;
ALTER TABLE `sim_archius` ADD `nom` varchar(100) NOT NULL default '' AFTER `id_archiu_tipus`;
ALTER TABLE `sim_archius` ADD `tipus` varchar(20) NOT NULL default '' AFTER `nom`;
ALTER TABLE `sim_archius` ADD `tamany` int(11) NOT NULL default '0' AFTER `tipus`;
ALTER TABLE `sim_archius` ADD `id_element` int(11) NOT NULL default '0' AFTER `size`;
ALTER TABLE `sim_archius` ADD `id_tipus_element` int(11) NOT NULL default '0' AFTER `id_element`;
/*0=factura; 1=article; 2=client; 3=contracte; 4=incidencia; 5=dispositiu*/

CREATE TABLE `sim_archius_tipus` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_archius_tipus` ADD `nom` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_archius_tipus` ADD `limit_kb` int(11) NOT NULL default '0' AFTER `nom`;
INSERT INTO `sim_archius_tipus` VALUES (1, 'Imagen', 250);
INSERT INTO `sim_archius_tipus` VALUES (2, 'Video', 5000);
INSERT INTO `sim_archius_tipus` VALUES (3, 'PDF', 1500);
INSERT INTO `sim_archius_tipus` VALUES (4, 'DOC', 250);
INSERT INTO `sim_archius_tipus` VALUES (5, 'DWG-Cad', 1500);
INSERT INTO `sim_archius_tipus` VALUES (6, 'Programa', 3500);

CREATE TABLE `sim_articles` ( `id` int(11) NOT NULL auto_increment,  PRIMARY KEY  (`id`) );
ALTER TABLE `sim_articles` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id` ;
ALTER TABLE `sim_articles` ADD `codi` varchar(6) NOT NULL default '0' AFTER `visible` ;
ALTER TABLE `sim_articles` ADD `nom` varchar(70) NOT NULL default '' AFTER `codi` ;
ALTER TABLE `sim_articles` ADD `id_subgrup` int(11) NOT NULL default '0' AFTER `nom` ;
ALTER TABLE `sim_articles` ADD `notes` longtext AFTER `id_subgrup` ;
ALTER TABLE `sim_articles` ADD `descatalogat` tinyint(1) NOT NULL default '0' AFTER `notes` ;
ALTER TABLE `sim_articles` ADD `preu` decimal(11,3) NOT NULL default '0' AFTER `descatalogat` ;
ALTER TABLE `sim_articles` ADD `id_divisa` int(11) NOT NULL default '0' AFTER `preu` ;
ALTER TABLE `sim_articles` ADD `escandall` tinyint(1) NOT NULL default '0' AFTER `id_divisa` ;
ALTER TABLE `sim_articles` ADD `recalc_escandall` tinyint(1) NOT NULL default '0' AFTER `escandall` ;
ALTER TABLE `sim_articles` ADD `data` date NOT NULL default '0000-00-00' AFTER `recalc_escandall` ;
ALTER TABLE `sim_articles` ADD `percentatge` int(11) NOT NULL default '0' AFTER `data` ;

CREATE TABLE `sim_articles_escandall` ( `id` int(11) NOT NULL auto_increment,  PRIMARY KEY  (`id`) );
ALTER TABLE `sim_articles_escandall` ADD `id_escandall` int(11) NOT NULL default '0' AFTER `id` ;
ALTER TABLE `sim_articles_escandall` ADD `id_article` int(11) NOT NULL default '0' AFTER `id_escandall` ;
ALTER TABLE `sim_articles_escandall` ADD `unitats` decimal(11,3) NOT NULL default '0' AFTER `id_article` ;
ALTER TABLE `sim_articles_escandall` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `unitats` ;
ALTER TABLE `sim_articles_escandall` ADD `pvd_forzat` decimal(11,3) NOT NULL default '0' AFTER `visible` ;
ALTER TABLE `sim_articles_escandall` ADD `pvp_forzat` decimal(11,3) NOT NULL default '0' AFTER `pvd_forzat` ;

CREATE TABLE `sim_articles_caracteristiques` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) ) ;
ALTER TABLE `sim_articles_caracteristiques` ADD `id_caracteristica` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_articles_caracteristiques` ADD `nom` varchar(25) NOT NULL default '' AFTER `id_caracteristica`;
ALTER TABLE `sim_articles_caracteristiques` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `nom`;
ALTER TABLE `sim_articles_caracteristiques` ADD `unitat` varchar(25) NOT NULL default '' AFTER `visible`;
ALTER TABLE `sim_articles_caracteristiques` ADD `unitat_abr` varchar(10) NOT NULL default '' AFTER `unitat`;
ALTER TABLE `sim_articles_caracteristiques` ADD `valor` varchar(25) NOT NULL default '' AFTER `unitat_abr`;

CREATE TABLE `sim_articles_caracteristiques_taula` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) ) ;
ALTER TABLE `sim_articles_caracteristiques_taula` ADD `id_caracteristica` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_articles_caracteristiques_taula` ADD `valor` varchar(25) NOT NULL default '' AFTER `id_caracteristica`;
ALTER TABLE `sim_articles_caracteristiques_taula` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `valor`;

CREATE TABLE `sim_articles_clients` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) ) ;
ALTER TABLE `sim_articles_clients` ADD `id_article` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_articles_clients` ADD `id_client` int(11) NOT NULL default '0' AFTER `id_article`;
ALTER TABLE `sim_articles_clients` ADD `stock_min` int(11) NOT NULL default '0' AFTER `id_client`;
ALTER TABLE `sim_articles_clients` ADD `stock_max` int(11) NOT NULL default '0' AFTER `stock_min`;
ALTER TABLE `sim_articles_clients` ADD `preu` decimal( 11, 2 ) NOT NULL DEFAULT '0' AFTER `stock_max`;

CREATE TABLE `sim_articles_grups` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_articles_grups` ADD `codi` varchar(5) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_articles_grups` ADD `grup` varchar(30) NOT NULL default '' AFTER `codi`;

CREATE TABLE `sim_articles_rel_caracteristiques` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_articles_rel_caracteristiques` ADD `id_article` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_articles_rel_caracteristiques` ADD `id_valor` int(11) NOT NULL default '0' AFTER `id_article`;
ALTER TABLE `sim_articles_rel_caracteristiques` ADD `valor` varchar(50) NOT NULL default '' AFTER `id_valor`;

CREATE TABLE `sim_articles_rel_proveidors` ( `id` int(11) NOT NULL auto_increment,  PRIMARY KEY  (`id`) );
ALTER TABLE `sim_articles_rel_proveidors` ADD `id_article` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_articles_rel_proveidors` ADD `id_proveidor` int(11) NOT NULL default '0' AFTER `id_article`;
ALTER TABLE `sim_articles_rel_proveidors` ADD `codi_proveidor` varchar(30) NOT NULL default '' AFTER `id_proveidor`;
ALTER TABLE `sim_articles_rel_proveidors` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `codi_proveidor`;

CREATE TABLE `sim_articles_subgrups` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_articles_subgrups` ADD `id_grup` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_articles_subgrups` ADD `codi` varchar(5) NOT NULL default '' AFTER `id_grup`;
ALTER TABLE `sim_articles_subgrups` ADD `subgrup` varchar(30) NOT NULL default '' AFTER `codi`;
ALTER TABLE `sim_articles_subgrups` ADD `contador` int(11) NOT NULL default '0' AFTER `subgrup`;

CREATE TABLE `sim_articles_subgrupos_caracteristiques` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_articles_subgrupos_caracteristiques` ADD `id_subgrup` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_articles_subgrupos_caracteristiques` ADD `id_caracteristica` int(11) NOT NULL default '0' AFTER `id_subgrup` ;

CREATE TABLE `sim_articles_seccions` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_articles_seccions` ADD `id_article` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_articles_seccions` ADD `id_seccion` int(11) NOT NULL default '0' AFTER `id_article` ;
ALTER TABLE `sim_articles_seccions` ADD `id_estanteria` int(11) NOT NULL default '0' AFTER `id_seccion`;
ALTER TABLE `sim_articles_seccions` ADD `id_pasadis` int(11) NOT NULL default '0' AFTER `id_estanteria` ;
ALTER TABLE `sim_articles_seccions` ADD `id_magatzem` int(11) NOT NULL default '0' AFTER `id_pasadis`;
ALTER TABLE `sim_articles_seccions` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_magatzem`;

CREATE TABLE `sim_calendari` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_calendari` ADD `dia` int(11) NOT NULL default '0' AFTER `id` ;
ALTER TABLE `sim_calendari` ADD `mes` int(11) NOT NULL default '0' AFTER `dia` ;
ALTER TABLE `sim_calendari` ADD `descripcio` varchar(255) NOT NULL default '' AFTER `mes`;

CREATE TABLE `sim_calendari_horari` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_calendari_horari` ADD `dia` varchar(55) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_calendari_horari` ADD `hora_inici` int(11) NOT NULL default '0' AFTER `dia` ;
ALTER TABLE `sim_calendari_horari` ADD `hora_fi` int(11) NOT NULL default '0' AFTER `hora_inici` ;
ALTER TABLE `sim_calendari_horari` ADD `total_hores` int(11) NOT NULL default '0' AFTER `hora_fi` ;

CREATE TABLE `sim_cartes` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_cartes` ADD `asumpte` varchar(255) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_cartes` ADD `cos` longtext NOT NULL AFTER `asumpte`;
ALTER TABLE `sim_cartes` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `cos`;
ALTER TABLE `sim_cartes` ADD `carta` tinyint(1) NOT NULL default '1' AFTER `visible`;

CREATE TABLE `sim_cartes_adjunts` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_cartes_adjunts` ADD `id_carta` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_cartes_adjunts` ADD `contingut` LONGBLOB NULL default '' AFTER `id_carta` ;
ALTER TABLE `sim_cartes_adjunts` ADD `tamany` INTEGER UNSIGNED NULL default '0' AFTER `contingut` ;
ALTER TABLE `sim_cartes_adjunts` ADD `tipus` VARCHAR(150) NULL default '' AFTER `tamany` ;
ALTER TABLE `sim_cartes_adjunts` ADD `nom_archiu` VARCHAR(255) NULL default '' AFTER `tipus` ;
ALTER TABLE `sim_cartes_adjunts` ADD `id_usuari` int(11) NOT NULL default '0' AFTER `nom_archiu`;

CREATE TABLE `sim_cartes_enviades` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_cartes_enviades` ADD `id_carta` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_cartes_enviades` ADD `id_client` int(11) NOT NULL default '0' AFTER `id_carta`;
ALTER TABLE `sim_cartes_enviades` ADD `data` date NOT NULL default '0000-00-00' AFTER `id_client`;
ALTER TABLE `sim_cartes_enviades` ADD `id_usuari` int(11) NOT NULL default '0' AFTER `data`;
ALTER TABLE `sim_cartes_enviades` ADD `id_fact` int(11) NOT NULL default '0' AFTER `id_usuari`;

CREATE TABLE `sim_cartes_firmes` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_cartes_firmes` ADD `firma` longtext NOT NULL AFTER `id`;
ALTER TABLE `sim_cartes_firmes` ADD `id_usuari` int(11) NOT NULL default '0' AFTER `firma`;

CREATE TABLE `sim_cerques` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_cerques` ADD `nom` varchar(20) default NULL AFTER `id`;
ALTER TABLE `sim_cerques` ADD `lletres` varchar(30) default NULL AFTER `nom`;
ALTER TABLE `sim_cerques` ADD `id_tipus` varchar(50) NOT NULL default '' AFTER `lletres` ;
ALTER TABLE `sim_cerques` ADD `id_grup` varchar(50) NOT NULL default '' AFTER `id_tipus`;
ALTER TABLE `sim_cerques` ADD `id_sector` varchar(50) NOT NULL default '' AFTER `id_grup` ;
ALTER TABLE `sim_cerques` ADD `id_ubicacio` varchar(50) NOT NULL default '' AFTER `id_sector`;
ALTER TABLE `sim_cerques` ADD `id_classificacio` varchar(50) NOT NULL default '' AFTER `id_ubicacio`;
ALTER TABLE `sim_cerques` ADD `id_servei` varchar(50) NOT NULL default '' AFTER `id_classificacio`;
ALTER TABLE `sim_cerques` ADD `id_sestat` varchar(50) NOT NULL default '' AFTER `id_servei` ;
ALTER TABLE `sim_cerques` ADD `id_proveidor` varchar(50) NOT NULL default '' AFTER `id_sestat`;
ALTER TABLE `sim_cerques` ADD `id_certificat` varchar(50) NOT NULL default '' AFTER `id_proveidor` ;
ALTER TABLE `sim_cerques` ADD `id_cestat` varchar(50) NOT NULL default '' AFTER `id_certificat`;
ALTER TABLE `sim_cerques` ADD `contactes` tinyint(1) NOT NULL default '0' AFTER `id_cestat`;
ALTER TABLE `sim_cerques` ADD `likenom` varchar(20) default NULL AFTER `contactes`;
ALTER TABLE `sim_cerques` ADD `id_usuari` int(11) NOT NULL default '0' AFTER `likenom`;
ALTER TABLE `sim_cerques` ADD `id_client` int(11) NOT NULL default '0' AFTER `id_usuari`;

CREATE TABLE `sim_clients` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_clients` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id`;
ALTER TABLE `sim_clients` ADD `nom` varchar(255) NOT NULL default '' AFTER `visible`;
ALTER TABLE `sim_clients` ADD `cognom1` varchar(55) NOT NULL default '' AFTER `nom`;
ALTER TABLE `sim_clients` ADD `cognom2` varchar(55) NOT NULL default '' AFTER `cognom1`;
ALTER TABLE `sim_clients` ADD `nif` varchar(15) NOT NULL default '' AFTER `cognom2`;
ALTER TABLE `sim_clients` ADD `direccio` varchar(50) NOT NULL default '' AFTER `nif`;
ALTER TABLE `sim_clients` ADD `poblacio` varchar(50) NOT NULL default '' AFTER `direccio`;
ALTER TABLE `sim_clients` ADD `cp` varchar(5) NOT NULL default '' AFTER `poblacio`;
ALTER TABLE `sim_clients` ADD `provincia` varchar(15) NOT NULL default '' AFTER `cp`;
ALTER TABLE `sim_clients` ADD `id_nacio` int(11) NOT NULL default '0' AFTER `provincia`;
ALTER TABLE `sim_clients` ADD `mail` varchar(50) NOT NULL default '' AFTER `id_nacio`;
ALTER TABLE `sim_clients` ADD `telefon` varchar(15) NOT NULL default '' AFTER `mail`;
ALTER TABLE `sim_clients` ADD `telefono2` varchar(15) NOT NULL default '' AFTER `telefon`;
ALTER TABLE `sim_clients` ADD `notes` longtext AFTER `telefono2`;
ALTER TABLE `sim_clients` ADD `web` varchar(150) default NULL AFTER `notes`;
ALTER TABLE `sim_clients` ADD `client_fidelitzat` tinyint(1) NOT NULL default '0' AFTER `web`;
ALTER TABLE `sim_clients` ADD `client_vip` tinyint(1) NOT NULL default '0' AFTER `client_fidelitzat`;
ALTER TABLE `sim_clients` ADD `tipus_identificador` tinyint(1) NOT NULL default '1' AFTER `client_vip`;/*tipo_identificador: 1 nif; 2 VAT; 3 extrangero; 4 sin numero*/
ALTER TABLE `sim_clients` ADD `tipus_persona` tinyint(1) NOT NULL default '0' AFTER `tipus_identificador`;/*tipo_persona: 0 juridica; 1 física*/
ALTER TABLE `sim_clients` ADD `tipus_residencia` int(11) NOT NULL default '0' AFTER `tipus_persona`;/*tipo_residencia: 0 residente; 1 residente UE; 2 extrangero*/
ALTER TABLE `sim_clients` ADD `dir3_oficina_contable` varchar(15) NOT NULL default '' AFTER `tipus_residencia`;/*DIR3 per factura electronica*/
ALTER TABLE `sim_clients` ADD `dir3_organ_gestor` varchar(15) NOT NULL default '' AFTER `dir3_oficina_contable`;/*DIR3 per factura electronica*/
ALTER TABLE `sim_clients` ADD `dir3_unitat_tramitadora` varchar(15) NOT NULL default '' AFTER `dir3_organ_gestor`;/*DIR3 per factura electronica*/
ALTER TABLE `sim_clients` ADD `id_idioma` int(11) NOT NULL default '0' AFTER `dir3_unitat_tramitadora`;
ALTER TABLE `sim_clients` ADD `alias` varchar(11) NOT NULL default '' AFTER `id_idioma`;
ALTER TABLE `sim_clients` ADD `id_client` int(11) NOT NULL default '0' AFTER `alias`;
ALTER TABLE `sim_clients` ADD `id_agrupacio` int(11) NOT NULL default '0' AFTER `id_client`;
ALTER TABLE `sim_clients` ADD `id_tipus` int(11) NOT NULL default '0' AFTER `id_agrupacio`;
ALTER TABLE `sim_clients` ADD `id_grup` int(11) NOT NULL default '0' AFTER `id_tipus`;
ALTER TABLE `sim_clients` ADD `id_sector` int(11) NOT NULL default '0' AFTER `id_grup`;
ALTER TABLE `sim_clients` ADD `id_ubicacio` int(11) NOT NULL default '0' AFTER `id_sector`;
ALTER TABLE `sim_clients` ADD `iban` varchar(24) default NULL AFTER `id_ubicacio`;/*codi internacional de compte bancari*/
ALTER TABLE `sim_clients` ADD `bic_swift` varchar(11) NOT NULL default '' AFTER `iban`;/*codi identificador del banc*/
ALTER TABLE `sim_clients` ADD `dies_venciment` int(11) NOT NULL default '0' AFTER `bic_swift`;/*Numero de dies pel venciment de la factura*/
ALTER TABLE `sim_clients` ADD `dia_pagament` int(11) NOT NULL default '0' AFTER `dies_venciment`;/*Dia del mes de pagament de la factura*/

CREATE TABLE `sim_clients_bases_dades` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_clients_bases_dades` ADD `id_client` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_clients_bases_dades` ADD `base` varchar(50) NOT NULL default '' AFTER `id_client`;
ALTER TABLE `sim_clients_bases_dades` ADD `ip` varchar(50) NOT NULL default '' AFTER `base`;
ALTER TABLE `sim_clients_bases_dades` ADD `usuari` varchar(50) NOT NULL default '' AFTER `ip`;
ALTER TABLE `sim_clients_bases_dades` ADD `pass` varchar(50) NOT NULL default '' AFTER `usuari`;
ALTER TABLE `sim_clients_bases_dades` ADD `descripcio` varchar(255) NOT NULL default '' AFTER `pass`;
ALTER TABLE `sim_clients_bases_dades` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcio`;

CREATE TABLE `sim_clients_contactes` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_clients_contactes` ADD `id_client` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_clients_contactes` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_client`;
ALTER TABLE `sim_clients_contactes` ADD `nom` varchar(255) NOT NULL default '' AFTER `visible`;
ALTER TABLE `sim_clients_contactes` ADD `cognom1` varchar(255) NOT NULL default '' AFTER `nom`;
ALTER TABLE `sim_clients_contactes` ADD `cognom2` varchar(255) NOT NULL default '' AFTER `cognom1`;
ALTER TABLE `sim_clients_contactes` ADD `carrec` varchar(255) NOT NULL default '' AFTER `cognom2`;
ALTER TABLE `sim_clients_contactes` ADD `departament` varchar(255) NOT NULL default '' AFTER `carrec`;
ALTER TABLE `sim_clients_contactes` ADD `telefon` varchar(15) NOT NULL default '' AFTER `departament`;
ALTER TABLE `sim_clients_contactes` ADD `mail` varchar(50) NOT NULL default '' AFTER `telefon`;
ALTER TABLE `sim_clients_contactes` ADD `movil` varchar(15) NOT NULL default '' AFTER `mail`;
ALTER TABLE `sim_clients_contactes` ADD `id_tracte` int(11) NOT NULL default '0' AFTER `movil`;
ALTER TABLE `sim_clients_contactes` ADD `id_idioma` int(11) NOT NULL default '0' AFTER `id_tracte`;
ALTER TABLE `sim_clients_contactes` ADD `predeterminat` tinyint(1) NOT NULL default '0' AFTER `id_idioma`;
ALTER TABLE `sim_clients_contactes` ADD `notes` longtext AFTER `predeterminat`;

CREATE TABLE `sim_clients_classificacio_tipus` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_clients_classificacio_tipus` ADD `id_origen` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_clients_classificacio_tipus` ADD `nom` varchar(255) NOT NULL default '' AFTER `id_origen`;
ALTER TABLE `sim_clients_classificacio_tipus` ADD `color` varchar(12) NOT NULL default '' AFTER `nom`;
ALTER TABLE `sim_clients_classificacio_tipus` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `color`;
ALTER TABLE `sim_clients_classificacio_tipus` ADD `color_lletra` varchar(12) NOT NULL default '' AFTER `visible`;

CREATE TABLE `sim_clients_classificacio` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_clients_classificacio` ADD `id_client` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_clients_classificacio` ADD `id_clasificacio_tipus` int(11) NOT NULL default '0' AFTER `id_client`;
ALTER TABLE `sim_clients_classificacio` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_clasificacio_tipus`;
ALTER TABLE `sim_clients_classificacio` ADD `predeterminat` tinyint(1) NOT NULL default '0' AFTER `visible`;

CREATE TABLE `sim_clients_classificacio_neg` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_clients_classificacio_neg` ADD `id_clasificacio_tipus` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_clients_classificacio_neg` ADD `id_clasificacio_tipus_neg` int(11) NOT NULL default '0' AFTER `id_clasificacio_tipus`;
ALTER TABLE `sim_clients_classificacio_neg` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_clasificacio_tipus_neg`;

CREATE TABLE `sim_clients_grups` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_clients_grups` ADD `grup` varchar(30) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_clients_grups` ADD `predeterminat` tinyint(1) NOT NULL default '0' AFTER `grup`;

CREATE TABLE `sim_clients_sectors` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_clients_sectors` ADD `sector` varchar(30) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_clients_sectors` ADD `predeterminat` tinyint(1) NOT NULL default '0' AFTER `sector`;

CREATE TABLE `sim_clients_servidors_alertes` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_clients_servidors_alertes` ADD `id_servidor` int(11) NOT NULL AFTER `id`;
ALTER TABLE `sim_clients_servidors_alertes` ADD `data_caiguda` int(11) NOT NULL AFTER `id_servidor`;
ALTER TABLE `sim_clients_servidors_alertes` ADD `data_pujada` int(11) AFTER `data_caiguda`;
ALTER TABLE `sim_clients_servidors_alertes` ADD `temps` int(11) NOT NULL default '0' AFTER `data_pujada`;
ALTER TABLE `sim_clients_servidors_alertes` ADD `id_error` int(11) NOT NULL AFTER `temps`;

CREATE TABLE `sim_clients_servidors_param` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_clients_servidors_param` ADD `cpu` int(11) NOT NULL AFTER `id`;
ALTER TABLE `sim_clients_servidors_param` ADD `mem` int(11) NOT NULL AFTER `cpu`;
ALTER TABLE `sim_clients_servidors_param` ADD `memswap` int(11) NOT NULL AFTER `mem`;
ALTER TABLE `sim_clients_servidors_param` ADD `hd` int(11) NOT NULL AFTER `memswap`;

CREATE TABLE `sim_clients_tipus` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_clients_tipus` ADD `tipus` varchar(30) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_clients_tipus` ADD `predeterminat` tinyint(1) NOT NULL default '0' AFTER `tipus`;

CREATE TABLE `sim_clients_tractes` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_clients_tractes` ADD `tracte` varchar(30) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_clients_tractes` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `tracte`;
ALTER TABLE `sim_clients_tractes` ADD `predeterminat` tinyint(1) NOT NULL default '0' AFTER `visible`;
INSERT INTO `sim_clients_tractes` VALUES (1, 'Sr.',1,1);
INSERT INTO `sim_clients_tractes` VALUES (2, 'Sra.',1,0);
INSERT INTO `sim_clients_tractes` VALUES (3, 'Mr.',1,0);
INSERT INTO `sim_clients_tractes` VALUES (4, 'Ms.',1,0);
INSERT INTO `sim_clients_tractes` VALUES (5, 'M.',1,0);
INSERT INTO `sim_clients_tractes` VALUES (6, 'Mme.',1,0);
INSERT INTO `sim_clients_tractes` VALUES (7, 'Mlle',1,0);
INSERT INTO `sim_clients_tractes` VALUES (8, 'Hr.',1,0);
INSERT INTO `sim_clients_tractes` VALUES (9, 'Fr.',1,0);
INSERT INTO `sim_clients_tractes` VALUES (10, 'Illo.',1,0);
INSERT INTO `sim_clients_tractes` VALUES (11, 'Illa.',1,0);

CREATE TABLE `sim_clients_ubicacio` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_clients_ubicacio` ADD `ubicacio` varchar(60) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_clients_ubicacio` ADD `predeterminat` tinyint(1) NOT NULL default '0' AFTER `ubicacio`;

CREATE TABLE `sim_comercial_oferta` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_comercial_oferta` ADD `id_client` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_comercial_oferta` ADD `id_client_final` int(11) NOT NULL default '0' AFTER `id_client`;
ALTER TABLE `sim_comercial_oferta` ADD `numero` int(11) NOT NULL default '0' AFTER `id_client_final`;
ALTER TABLE `sim_comercial_oferta` ADD `versio` int(11) NOT NULL default '0' AFTER `numero`;
ALTER TABLE `sim_comercial_oferta` ADD `data` date NOT NULL default '0000-00-00' AFTER `versio`;
ALTER TABLE `sim_comercial_oferta` ADD `num_host` int(11) NOT NULL default '0' AFTER `data`;
ALTER TABLE `sim_comercial_oferta` ADD `pvp_total` int(11) NOT NULL default '0' AFTER `num_host`;
ALTER TABLE `sim_comercial_oferta` ADD `id_idioma` int(11) NOT NULL default '0' AFTER `pvp_total`;
ALTER TABLE `sim_comercial_oferta` ADD `descripcio` varchar(255) NOT NULL default '' AFTER `id_idioma`;
ALTER TABLE `sim_comercial_oferta` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcio`;

CREATE TABLE `sim_comercial_oferta_contingut` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_comercial_oferta_contingut` ADD `id_comercial_oferta` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_comercial_oferta_contingut` ADD `id_comercial_contingut` int(11) NOT NULL default '0' AFTER `id_comercial_oferta`;
ALTER TABLE `sim_comercial_oferta_contingut` ADD `ordre` varchar(10) NOT NULL default '' AFTER `id_comercial_contingut`;

CREATE TABLE `sim_comercial_contingut` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_comercial_contingut` ADD `id_comercial_contingut` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_comercial_contingut` ADD `titol` varchar(100) NOT NULL default '' AFTER `id_comercial_contingut`;
ALTER TABLE `sim_comercial_contingut` ADD `contingut` longtext AFTER `titol`;
ALTER TABLE `sim_comercial_contingut` ADD `contingut_estes` longtext AFTER `contingut`;
ALTER TABLE `sim_comercial_contingut` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `contingut_estes`;
ALTER TABLE `sim_comercial_contingut` ADD `id_idioma` int(11) NOT NULL default '0' AFTER `visible`;
ALTER TABLE `sim_comercial_contingut` ADD `obligatori` int(11) NOT NULL default '0' AFTER `id_idioma`;
ALTER TABLE `sim_comercial_contingut` ADD `id_servicio` int(11) NOT NULL default '0' AFTER `obligatori`;

CREATE TABLE `sim_comercial_oferta_valors` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_comercial_oferta_valors` ADD `id_comercial_oferta` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_comercial_oferta_valors` ADD `id_comercial_camps` int(11) NOT NULL default '0' AFTER `id_comercial_oferta`;
ALTER TABLE `sim_comercial_oferta_valors` ADD `id_comercial_camps_valor` int(11) NOT NULL default '0' AFTER `id_comercial_camps`;

CREATE TABLE `sim_comercial_oferta_camps` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_comercial_oferta_camps` ADD `id_article` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_comercial_oferta_camps` ADD `camp` varchar(100) NOT NULL default '' AFTER `id_article`;
ALTER TABLE `sim_comercial_oferta_camps` ADD `obligatori` tinyint(1) NOT NULL default '1' AFTER `camp`;
ALTER TABLE `sim_comercial_oferta_camps` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `obligatori`;
ALTER TABLE `sim_comercial_oferta_camps` ADD `id_idioma` tinyint(1) NOT NULL default '1' AFTER `visible`;

CREATE TABLE `sim_comercial_oferta_camps_valors` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_comercial_oferta_camps_valors` ADD `id_comercial_oferta_camps` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_comercial_oferta_camps_valors` ADD `valor_camp` varchar(100) NOT NULL default '' AFTER `id_comercial_oferta_camps`;
ALTER TABLE `sim_comercial_oferta_camps_valors` ADD `id_idioma` tinyint(1) NOT NULL default '1' AFTER `valor_camp`;
ALTER TABLE `sim_comercial_oferta_camps_valors` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_idioma`;

CREATE TABLE `sim_contractes` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_contractes` ADD `id_contracte_tipus` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_contractes` ADD `id_client` int(11) NOT NULL default '0' AFTER `id_contracte_tipus`;
ALTER TABLE `sim_contractes` ADD `id_client_final` int(11) NOT NULL default '0' AFTER `id_client`;
ALTER TABLE `sim_contractes` ADD `num_contracte` int(11) NOT NULL default '0' AFTER `id_client_final`;
ALTER TABLE `sim_contractes` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `num_contracte`;
ALTER TABLE `sim_contractes` ADD `data_inici` date NOT NULL default '0000-00-00' AFTER `visible`;
ALTER TABLE `sim_contractes` ADD `data_fi` date NOT NULL default '0000-00-00' AFTER `data_inici`;
ALTER TABLE `sim_contractes` ADD `actiu` tinyint(1) NOT NULL default '1' AFTER `data_fi`;
ALTER TABLE `sim_contractes` ADD `descripcio` longtext AFTER `actiu`;
ALTER TABLE `sim_contractes` ADD `id_responsable` int(11) NOT NULL default '0' AFTER `descripcio`;
ALTER TABLE `sim_contractes` ADD `id_tecnic` int(11) NOT NULL default '0' AFTER `id_responsable`;
ALTER TABLE `sim_contractes` ADD `renovat` tinyint(1) NOT NULL default '0' AFTER `id_tecnic`;

CREATE TABLE `sim_contractes_cobertura` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_contractes_cobertura` ADD `cobertura` varchar(55) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_contractes_cobertura` ADD `descripcio` longtext AFTER `cobertura`;
ALTER TABLE `sim_contractes_cobertura` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcio`;

CREATE TABLE `sim_contractes_facturas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_contractes_facturas` ADD `data` date NOT NULL default '0000-00-00' AFTER `id`;
ALTER TABLE `sim_contractes_facturas` ADD `concepte` varchar(255) NOT NULL default '' AFTER `data`;
ALTER TABLE `sim_contractes_facturas` ADD `import` decimal(11,2) NOT NULL default '0.00' AFTER `concepte`;

CREATE TABLE `sim_contractes_tipus` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_contractes_tipus` ADD `nom` varchar(255) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_contractes_tipus` ADD `descripcio` longtext AFTER `nom`;
ALTER TABLE `sim_contractes_tipus` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcio`;

CREATE TABLE `sim_contractes_serveis` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_contractes_serveis` ADD `id_contracte` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_contractes_serveis` ADD `servei` varchar(55) NOT NULL default '' AFTER `id_contracte`;
ALTER TABLE `sim_contractes_serveis` ADD `id_cobertura` int(11) NOT NULL default '0' AFTER `servei`;
ALTER TABLE `sim_contractes_serveis` ADD `temps_resposta` int(11) NOT NULL default '0' AFTER `id_cobertura`;
ALTER TABLE `sim_contractes_serveis` ADD `nbd` tinyint(1) NOT NULL default '1' AFTER `temps_resposta`;
ALTER TABLE `sim_contractes_serveis` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `nbd`;
ALTER TABLE `sim_contractes_serveis` ADD `extranet` tinyint(1) NOT NULL default '1' AFTER `visible`;
ALTER TABLE `sim_contractes_serveis` ADD `obligatori` tinyint(1) NOT NULL default '1' AFTER `extranet`;
ALTER TABLE `sim_contractes_serveis` ADD `incidencies` tinyint(1) NOT NULL default '1' AFTER `obligatori`;
ALTER TABLE `sim_contractes_serveis` ADD `sla` int(11) NOT NULL default '0' AFTER `incidencies`;
ALTER TABLE `sim_contractes_serveis` ADD `durada` int(11) NOT NULL default '0' AFTER `sla`;
ALTER TABLE `sim_contractes_serveis` ADD `preu_hora` int(11) NOT NULL default '0' AFTER `durada`;
INSERT INTO `sim_contractes_serveis` VALUES (-1,0,'Instal&middot;laci&oacute; de Plataforma',0,0,0,1,0,0,0,0,0,0);
INSERT INTO `sim_contractes_serveis` VALUES (-2,0,'Manteniment  Plataforma',0,0,0,1,0,0,0,0,0,0);
INSERT INTO `sim_contractes_serveis` VALUES (-3,0,'Monitoritzaci&oacute; Plataforma',1,0,0,1,1,0,0,0,0,0);
INSERT INTO `sim_contractes_serveis` VALUES (-4,0,'Gesti&oacute; d&#39;Incid&egrave;ncies',1,4,0,1,1,0,1,95,0,0);
INSERT INTO `sim_contractes_serveis` VALUES (-5,0,'Gesti&oacute; de Canvis',2,8,1,1,1,0,1,95,0,0);
INSERT INTO `sim_contractes_serveis` VALUES (-6,0,'Gesti&oacute; d&#39;Alertes',1,4,0,1,1,0,0,95,0,0);
INSERT INTO `sim_contractes_serveis` VALUES (-7,0,'Auditoria de servei i plataforma',2,8,1,1,1,0,1,95,0,0);
INSERT INTO `sim_contractes_serveis` VALUES (-8,0,'Servei de Consultoria',2,0,0,1,1,0,1,0,0,0);
INSERT INTO `sim_contractes_serveis` VALUES (-9,0,'Servei de Formaci&oacute;',2,8,1,1,1,0,1,95,0,0);
INSERT INTO `sim_contractes_serveis` VALUES (-10,0,'Servei de Backups',2,8,1,1,1,0,1,95,0,0);
INSERT INTO `sim_contractes_serveis` VALUES (-11,0,'Gesti&oacute; Comercial',2,8,1,1,1,1,1,95,0,0);
INSERT INTO `sim_contractes_serveis` VALUES (-12,0,'Gesti&oacute; Administrativa',2,8,1,1,1,1,1,95,0,0);

CREATE TABLE `sim_contrasenyes` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_contrasenyes` ADD `id_client` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_contrasenyes` ADD `id_aplicacio` int(11) NOT NULL default '0' AFTER `id_client`;
ALTER TABLE `sim_contrasenyes` ADD `acces` varchar(50) NOT NULL default '' AFTER `id_aplicacio`;
ALTER TABLE `sim_contrasenyes` ADD `usuari` varchar(50) NOT NULL default '' AFTER `acces`;
ALTER TABLE `sim_contrasenyes` ADD `pass` varchar(50) NOT NULL default '' AFTER `usuari`;
ALTER TABLE `sim_contrasenyes` ADD `descripcio` varchar(255) NOT NULL default '' AFTER `pass`;
ALTER TABLE `sim_contrasenyes` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcio`;
ALTER TABLE `sim_contrasenyes` ADD `id_contracte` int(11) NOT NULL default '0' AFTER `visible`;

CREATE TABLE `sim_contrasenyes_aplicacions` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_contrasenyes_aplicacions` ADD `aplicacio` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_contrasenyes_aplicacions` ADD `descripcio` varchar(255) NOT NULL default '' AFTER `aplicacio`;
ALTER TABLE `sim_contrasenyes_aplicacions` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcio`;

CREATE TABLE `sim_contrasenyes_lopd` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_contrasenyes_lopd` ADD `id_contrasenya` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_contrasenyes_lopd` ADD `id_usuari` int(11) NOT NULL default '0' AFTER `id_contrasenya`;
ALTER TABLE `sim_contrasenyes_lopd` ADD `data` int(11) NOT NULL default '0' AFTER `id_usuari`;
ALTER TABLE `sim_contrasenyes_lopd` ADD `accio` int(11) NOT NULL default '0' AFTER `data`;

CREATE TABLE `sim_divises` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_divises` ADD `divisa` varchar(255) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_divises` ADD `abrevitura_iso` varchar(3) NOT NULL default '' AFTER `divisa`;
ALTER TABLE `sim_divises` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `abrevitura_iso`;
ALTER TABLE `sim_divises` ADD `predeterminat` tinyint(1) NOT NULL default '0' AFTER `visible`;
ALTER TABLE `sim_divises` ADD `simbol` varchar(1) AFTER `predeterminat`;

CREATE TABLE `sim_divises_canvi_euro` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_divises_canvi_euro` ADD `id_divisa` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_divises_canvi_euro` ADD `id_usuari` int(11) NOT NULL default '0' AFTER `id_divisa`;
ALTER TABLE `sim_divises_canvi_euro` ADD `data` date NOT NULL default '0000-00-00' AFTER `id_usuari`;
ALTER TABLE `sim_divises_canvi_euro` ADD `canvi` decimal(11,3) NOT NULL default '0.000' AFTER `data`;

CREATE TABLE `sim_factura` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_factura` ADD `id_origen` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_factura` ADD `id_usuari` int(5) NOT NULL default '0' AFTER `id_origen`;
ALTER TABLE `sim_factura` ADD `numero` int(11) NOT NULL default '0' AFTER `id_usuari`;
ALTER TABLE `sim_factura` ADD `versio` int(11) NOT NULL default '0' AFTER `numero`;
ALTER TABLE `sim_factura` ADD `numero_comanda_client` varchar(20) default NULL AFTER `versio`;
ALTER TABLE `sim_factura` ADD `data` date NOT NULL default '0000-00-00' AFTER `numero_comanda_client`;
ALTER TABLE `sim_factura` ADD `data_previsio` date NOT NULL default '0000-00-00' AFTER `data`;
ALTER TABLE `sim_factura` ADD `data_entrega` date NOT NULL default '0000-00-00' AFTER `data_previsio`;
ALTER TABLE `sim_factura` ADD `data_venciment` date NOT NULL default '0000-00-00' AFTER `data_entrega`;
ALTER TABLE `sim_factura` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `data_venciment`;
ALTER TABLE `sim_factura` ADD `tipus` int(11) NOT NULL default '1' AFTER `visible`;
ALTER TABLE `sim_factura` ADD `subtipus` int(11) NOT NULL default '0' AFTER `tipus`;
ALTER TABLE `sim_factura` ADD `id_client` int(5) NOT NULL default '0' AFTER `subtipus`;
ALTER TABLE `sim_factura` ADD `nom` varchar(255) default NULL AFTER `id_client`;
ALTER TABLE `sim_factura` ADD `nif` varchar(15) default NULL AFTER `nom`;
ALTER TABLE `sim_factura` ADD `direccio` varchar(150) default NULL AFTER `nif`;
ALTER TABLE `sim_factura` ADD `poblacio` varchar(50) default NULL AFTER `direccio`;
ALTER TABLE `sim_factura` ADD `cp` varchar(5) default NULL AFTER `poblacio`;
ALTER TABLE `sim_factura` ADD `provincia` varchar(15) default NULL AFTER `cp`;
ALTER TABLE `sim_factura` ADD `id_nacio` int(11) NOT NULL default '0' AFTER `provincia`;
ALTER TABLE `sim_factura` ADD `mail` varchar(50) default NULL AFTER `id_nacio`;
ALTER TABLE `sim_factura` ADD `telefon` varchar(15) default NULL AFTER `mail`;
ALTER TABLE `sim_factura` ADD `contacte_nom` varchar(55) NOT NULL default '' AFTER `telefon`;
ALTER TABLE `sim_factura` ADD `contacte_telefon` varchar(55) NOT NULL default '' AFTER `contacte_nom`;
ALTER TABLE `sim_factura` ADD `contacte_mail` varchar(55) NOT NULL default '' AFTER `contacte_telefon`;
ALTER TABLE `sim_factura` ADD `notes` longtext AFTER `contacte_mail`;
ALTER TABLE `sim_factura` ADD `id_divisa` int(11) NOT NULL default '0' AFTER `notes`;
ALTER TABLE `sim_factura` ADD `divisa_canvi` decimal(11,3) NOT NULL default '0.000' AFTER `id_divisa`;
ALTER TABLE `sim_factura` ADD `id_usuari_pagador` int(11) NOT NULL default '0' AFTER `divisa_canvi`;
ALTER TABLE `sim_factura` ADD `id_dades_origen_factura_iban` int(11) NOT NULL default '0' AFTER `id_usuari_pagador`;
ALTER TABLE `sim_factura` ADD `subtotal` decimal(11,3) NOT NULL default '0.000' AFTER `id_dades_origen_factura_iban`;
ALTER TABLE `sim_factura` ADD `descompte` decimal(11,3) NOT NULL default '0.000' AFTER `subtotal`;
ALTER TABLE `sim_factura` ADD `descompte_absoluto` decimal(11,3) NOT NULL default '0.000' AFTER `descompte`;
ALTER TABLE `sim_factura` ADD `subtotal_descompte` decimal(11,3) NOT NULL default '0.000' AFTER `descompte_absoluto`;
ALTER TABLE `sim_factura` ADD `iva` decimal(11,3) NOT NULL default '0.000' AFTER `subtotal_descompte`;
ALTER TABLE `sim_factura` ADD `total` decimal(11,3) NOT NULL default '0.000' AFTER `iva`;
ALTER TABLE `sim_factura` ADD `total_forzat` TINYINT( 1 ) NOT NULL DEFAULT '0' AFTER `total` ;
ALTER TABLE `sim_factura` ADD `rebuts` tinyint(1) NOT NULL default '0' AFTER `total_forzat`;
ALTER TABLE `sim_factura` ADD `cobrada` tinyint(1) NOT NULL default '0' AFTER `rebuts`;
ALTER TABLE `sim_factura` ADD `tancada` tinyint(1) NOT NULL default '0' AFTER `cobrada`;
ALTER TABLE `sim_factura` ADD `id_contracte` int(11) NOT NULL default '0' AFTER `tancada`;
ALTER TABLE `sim_factura` ADD `id_llicencia` int(11) NOT NULL default '0' AFTER `id_contracte`;

CREATE TABLE `sim_factura_calendari` ( `id` int(11) NOT NULL AUTO_INCREMENT, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_factura_calendari` ADD `data` int(15) NOT NULL DEFAULT '0' AFTER `id`;
ALTER TABLE `sim_factura_calendari` ADD `despeses` decimal(11,3) NOT NULL DEFAULT '0.000' AFTER `data`;
ALTER TABLE `sim_factura_calendari` ADD `prev_despeses` decimal(11,3) NOT NULL DEFAULT '0.000' AFTER `despeses`;
ALTER TABLE `sim_factura_calendari` ADD `ingressos` decimal(11,3) NOT NULL DEFAULT '0.000' AFTER `prev_despeses`;
ALTER TABLE `sim_factura_calendari` ADD `externs` decimal(11,3) NOT NULL DEFAULT '0.000' AFTER `ingressos`;
ALTER TABLE `sim_factura_calendari` ADD `liquit` decimal(11,3) NOT NULL DEFAULT '0.000' AFTER `externs`;

CREATE TABLE `sim_factura_canvi_data_entrega` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_factura_canvi_data_entrega` ADD `id_factura` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_factura_canvi_data_entrega` ADD `id_usuari` int(11) NOT NULL default '0' AFTER `id_factura`;
ALTER TABLE `sim_factura_canvi_data_entrega` ADD `data_anterior` date NOT NULL default '0000-00-00' AFTER `id_usuari`;
ALTER TABLE `sim_factura_canvi_data_entrega` ADD `data` date NOT NULL default '0000-00-00' AFTER `data_anterior`;

CREATE TABLE `sim_factura_canvi_data_previsio` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_factura_canvi_data_previsio` ADD `id_factura` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_factura_canvi_data_previsio` ADD `id_usuari` int(11) NOT NULL default '0' AFTER `id_factura`;
ALTER TABLE `sim_factura_canvi_data_previsio` ADD `data_anterior` date NOT NULL default '0000-00-00' AFTER `id_usuari`;
ALTER TABLE `sim_factura_canvi_data_previsio` ADD `data` date NOT NULL default '0000-00-00' AFTER `data_anterior`;

CREATE TABLE `sim_factura_canvi_data_previsio_linia` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_factura_canvi_data_previsio_linia` ADD `id_factura` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_factura_canvi_data_previsio_linia` ADD `id_usuari` int(11) NOT NULL default '0' AFTER `id_factura`;
ALTER TABLE `sim_factura_canvi_data_previsio_linia` ADD `data_anterior` date NOT NULL default '0000-00-00' AFTER `id_usuari`;
ALTER TABLE `sim_factura_canvi_data_previsio_linia` ADD `data` date NOT NULL default '0000-00-00' AFTER `data_anterior`;
ALTER TABLE `sim_factura_canvi_data_previsio_linia` ADD `id_factura_linia` int(11) NOT NULL default '0' AFTER `data`;

CREATE TABLE `sim_factura_linia` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_factura_linia` ADD `id_factura` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_factura_linia` ADD `num_linea` int(11) NOT NULL default '0' AFTER `id_factura`;
ALTER TABLE `sim_factura_linia` ADD `data_previsio` date NOT NULL default '0000-00-00' AFTER `num_linea`;
ALTER TABLE `sim_factura_linia` ADD `codi` varchar(20) NOT NULL default '' AFTER `data_prevision`;
ALTER TABLE `sim_factura_linia` ADD `nom` varchar(70) NOT NULL default '' AFTER `codi`;
ALTER TABLE `sim_factura_linia` ADD `pvd` decimal(11,3) NOT NULL default '0.000' AFTER `nom`;
ALTER TABLE `sim_factura_linia` ADD `pvp` decimal(11,3) NOT NULL default '0.000' AFTER `pvd`;
ALTER TABLE `sim_factura_linia` ADD `unitats` decimal(11,3) NOT NULL default '0.000' AFTER `pvp`;
ALTER TABLE `sim_factura_linia` ADD `descompte` decimal(11,3) NOT NULL default '0.000' AFTER `unitats`;
ALTER TABLE `sim_factura_linia` ADD `total` decimal(11,3) NOT NULL default '0.000' AFTER `descompte`;
ALTER TABLE `sim_factura_linia` ADD `id_article` int(11) NOT NULL default '0' AFTER `total`;

CREATE TABLE `sim_factura_dades_origen` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_factura_dades_origen` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id`;
ALTER TABLE `sim_factura_dades_origen` ADD `rao_social` varchar(255) default NULL AFTER `visible`;
ALTER TABLE `sim_factura_dades_origen` ADD `nif` varchar(15) NOT NULL default '' AFTER `rao_social`;
ALTER TABLE `sim_factura_dades_origen` ADD `direccio` varchar(150) NOT NULL default '' AFTER `nif`;
ALTER TABLE `sim_factura_dades_origen` ADD `poblacio` varchar(15) NOT NULL default '' AFTER `direccio`;
ALTER TABLE `sim_factura_dades_origen` ADD `cp` varchar(5) NOT NULL default '' AFTER `poblacio`;
ALTER TABLE `sim_factura_dades_origen` ADD `provincia` varchar(15) NOT NULL default '' AFTER `cp`;
ALTER TABLE `sim_factura_dades_origen` ADD `mail` varchar(50) NOT NULL default '' AFTER `provincia`;
ALTER TABLE `sim_factura_dades_origen` ADD `telefon` varchar(15) NOT NULL default '' AFTER `mail`;
ALTER TABLE `sim_factura_dades_origen` ADD `logo` varchar(50) NOT NULL default '' AFTER `telefon`;
ALTER TABLE `sim_factura_dades_origen` ADD `iva` decimal(11,3) NOT NULL default '0.000' AFTER `logo`;

CREATE TABLE `sim_factura_dades_origen_iban` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_factura_dades_origen_iban` ADD `id_dades_origen_factura` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_factura_dades_origen_iban` ADD `entitat_bancaria` varchar(50) NOT NULL default '' AFTER `id_dades_origen_factura`;
ALTER TABLE `sim_factura_dades_origen_iban` ADD `iban` varchar(50) NOT NULL default '' AFTER `entitat_bancaria`;
ALTER TABLE `sim_factura_dades_origen_iban` ADD `descripcio` varchar(150) NOT NULL default '' AFTER `iban`;
ALTER TABLE `sim_factura_dades_origen_iban` ADD `predeterminat` tinyint(1) NOT NULL default '0' AFTER `descripcio`;

CREATE TABLE `sim_factura_rebuts` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_factura_rebuts` ADD `numero` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_factura_rebuts` ADD `id_factura` int(11) NOT NULL default '0' AFTER `numero`;
ALTER TABLE `sim_factura_rebuts` ADD `numero_serie` int(11) NOT NULL default '0' AFTER `id_factura`;
ALTER TABLE `sim_factura_rebuts` ADD `data` date NOT NULL default '0000-00-00' AFTER `numero_serie`;
ALTER TABLE `sim_factura_rebuts` ADD `data_venciment` date NOT NULL default '0000-00-00' AFTER `data`;
ALTER TABLE `sim_factura_rebuts` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `data_venciment`;
ALTER TABLE `sim_factura_rebuts` ADD `total` decimal(11,3) NOT NULL default '0.000' AFTER `visible`;
ALTER TABLE `sim_factura_rebuts` ADD `id_client` int(5) NOT NULL default '0' AFTER `total`;
ALTER TABLE `sim_factura_rebuts` ADD `id_usuari` int(5) NOT NULL default '0' AFTER `id_client`;
ALTER TABLE `sim_factura_rebuts` ADD `id_tipus_pagament` int(11) NOT NULL default '0' AFTER `id_usuari`;
ALTER TABLE `sim_factura_rebuts` ADD `cobrat` tinyint(1) NOT NULL default '0' AFTER `id_tipus_pagament`;

CREATE TABLE `sim_factura_subtipus` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_factura_subtipus` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id`;
ALTER TABLE `sim_factura_subtipus` ADD `id_tipus` int(11) NOT NULL default '0' AFTER `visible`;
ALTER TABLE `sim_factura_subtipus` ADD `subtipus` varchar(50) default NULL AFTER `id_tipus`;

CREATE TABLE `sim_factura_tipus` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_factura_tipus` ADD `ordre` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_factura_tipus` ADD `tipus` varchar(150) NOT NULL default '' AFTER `ordre`;
ALTER TABLE `sim_factura_tipus` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `tipus`;
ALTER TABLE `sim_factura_tipus` ADD `descripcio` varchar(250) NOT NULL default '' AFTER `visible`;
ALTER TABLE `sim_factura_tipus` ADD `veure_data_previsio` tinyint(1) NOT NULL default '0' AFTER `descripcio`;
ALTER TABLE `sim_factura_tipus` ADD `veure_data_venciment` tinyint(1) NOT NULL default '0' AFTER `veure_data_previsio`;
ALTER TABLE `sim_factura_tipus` ADD `veure_numero_comanda_client` tinyint(1) NOT NULL default '0' AFTER `veure_data_venciment`;
ALTER TABLE `sim_factura_tipus` ADD `veure_subtipos` tinyint(1) NOT NULL default '0' AFTER `veure_numero_comanda_client`;
ALTER TABLE `sim_factura_tipus` ADD `veure_fecha_prevision_dias` int(11) NOT NULL default '0' AFTER `veure_subtipos` ;
ALTER TABLE `sim_factura_tipus` ADD `veure_rebuts` tinyint(1) NOT NULL default '0' AFTER `veure_fecha_prevision_dias` ;
ALTER TABLE `sim_factura_tipus` ADD `tipus_ot` tinyint(1) NOT NULL default '0' AFTER `veure_rebuts` ;
ALTER TABLE `sim_factura_tipus` ADD `tipus_presupost` tinyint(1) NOT NULL default '0' AFTER `tipus_ot`;
ALTER TABLE `sim_factura_tipus` ADD `presupost_dias_venciment` int(11) NOT NULL default '0' AFTER `tipus_presupost` ;
ALTER TABLE `sim_factura_tipus` ADD `aprovado` tinyint(1) NOT NULL default '0' AFTER `presupost_dias_venciment`;

CREATE TABLE `sim_factura_tipus_idiomes` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_factura_tipus_idiomes` ADD `id_tipus` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_factura_tipus_idiomes` ADD `id_idiomes`  varchar(100) NOT NULL default '' AFTER `id_tipus`;
ALTER TABLE `sim_factura_tipus_idiomes` ADD `tipus`  varchar(100) NOT NULL default '' AFTER `id_idiomes`;

CREATE TABLE `sim_factura_tipus_pagament` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_factura_tipus_pagament` ADD `tipus` varchar(150) NOT NULL default '' AFTER `id`;
INSERT INTO `sim_factura_tipus_pagament` VALUES (1, 'Efectivo');
INSERT INTO `sim_factura_tipus_pagament` VALUES (2, 'Tarjeta');
INSERT INTO `sim_factura_tipus_pagament` VALUES (3, 'Cheque');
INSERT INTO `sim_factura_tipus_pagament` VALUES (4, 'Domiciliaci&oacute;n');
INSERT INTO `sim_factura_tipus_pagament` VALUES (5, 'Transferencia');

CREATE TABLE `sim_factura_tipus_permisos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_factura_tipus_permisos` ADD `id_usuari` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_factura_tipus_permisos` ADD `id_tipus` int(11) NOT NULL default '0' AFTER `id_usuari`;
ALTER TABLE `sim_factura_tipus_permisos` ADD `administrador`  tinyint(1) NOT NULL default '0' AFTER `id_tipus`;

CREATE TABLE `sim_factura_tipus_relacions` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_factura_tipus_relacions` ADD `id_tipus_origen` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_factura_tipus_relacions` ADD `id_tipus_desti` int(11) NOT NULL default '0' AFTER `id_tipus_origen`;

CREATE TABLE `sim_idiomes` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_idiomes` ADD `idioma` varchar(2) NOT NULL default 'ES' AFTER `id`;
ALTER TABLE `sim_idiomes` ADD `descripcio` varchar(15) NOT NULL default '' AFTER `idioma`;
ALTER TABLE `sim_idiomes` ADD `imatge` varchar(15) NOT NULL default '' AFTER `descripcio`;
ALTER TABLE `sim_idiomes` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `imatge`;
ALTER TABLE `sim_idiomes` ADD `predeterminat` tinyint(1) NOT NULL default '0' AFTER `visible`;

CREATE TABLE `sim_incidencies` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_incidencies` ADD `id_incidencia` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_incidencies` ADD `id_usuari_origen` int(11) NOT NULL default '0' AFTER `id_incidencia`;
ALTER TABLE `sim_incidencies` ADD `id_usuari_registre` int(11) NOT NULL default '0' AFTER `id_usuari_origen`;
ALTER TABLE `sim_incidencies` ADD `id_usuari_desti` int(11) NOT NULL default '0' AFTER `id_usuari_registre`;
ALTER TABLE `sim_incidencies` ADD `id_usuari_finalitzacio` int(11) NOT NULL default '0' AFTER `id_usuari_desti`;
ALTER TABLE `sim_incidencies` ADD `data_previsio` int(15) NOT NULL default '0' AFTER `id_usuari_finalitzacio`;
ALTER TABLE `sim_incidencies` ADD `data_registre_inici` int(15) NOT NULL default '0' AFTER `data_registre_inici`;
ALTER TABLE `sim_incidencies` ADD `data_inici` int(15) NOT NULL default '0' AFTER `data_inici`;
ALTER TABLE `sim_incidencies` ADD `data_registre_tancament` int(15) NOT NULL default '0' AFTER `fecha_inicio`;
ALTER TABLE `sim_incidencies` ADD `data_tancament` int(15) NOT NULL default '0' AFTER `data_registre_tancament`;
ALTER TABLE `sim_incidencies` ADD `assumpte` varchar(150) default NULL AFTER `data_tancament`;
ALTER TABLE `sim_incidencies` ADD `notes` longtext AFTER `assumpte`;
ALTER TABLE `sim_incidencies` ADD `notes_conclusio` longtext AFTER `notes`;
ALTER TABLE `sim_incidencies` ADD `id_estat` int(11) NOT NULL default '0' AFTER `notes_conclusio`;
ALTER TABLE `sim_incidencies` ADD `id_entrada` int(11) NOT NULL default '0' AFTER `id_estat`;
ALTER TABLE `sim_incidencies` ADD `id_servei` int(11) NOT NULL default '0' AFTER `id_entrada`;
ALTER TABLE `sim_incidencies` ADD `id_client` int(11) NOT NULL default '0' AFTER `id_servei`;
ALTER TABLE `sim_incidencies` ADD `durada` int(11) NOT NULL default '0' AFTER `id_client`;
ALTER TABLE `sim_incidencies` ADD `sla_ok` tinyint(1) NOT NULL default '0' AFTER `durada` ;
ALTER TABLE `sim_incidencies` ADD `visible_client` tinyint(1) NOT NULL default '1' AFTER `sla_ok` ;
ALTER TABLE `sim_incidencies` ADD `pausada` tinyint(1) NOT NULL default '0' AFTER `visible_client` ;
ALTER TABLE `sim_incidencies` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `pausada` ;
ALTER TABLE `sim_incidencies` ADD `temps_restant` int(15) NOT NULL default '0' AFTER `visible`;

CREATE TABLE `sim_incidencies_correus` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_incidencies_correus` ADD `uid` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_incidencies_correus` ADD `destinatari` varchar(100) NOT NULL default '' AFTER `uid`;

CREATE TABLE `sim_incidencies_estats` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_incidencies_estats` ADD `estat` varchar(30) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_incidencies_estats` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `estat`;

CREATE TABLE `sim_incidencies_entrada` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_incidencies_entrada` ADD `entrada` varchar(30) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_incidencies_entrada` ADD `predeterminat` tinyint(1) NOT NULL default '0' AFTER `entrada`;
INSERT INTO `sim_incidencies_entrada` VALUES (1, 'Teléfono');
INSERT INTO `sim_incidencies_entrada` VALUES (2, 'Mail');
INSERT INTO `sim_incidencies_entrada` VALUES (3, 'Web');
INSERT INTO `sim_incidencies_entrada` VALUES (4, 'Otra');

/*
CREATE TABLE `sim_inventario` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_inventario` ADD `nom` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_inventario` ADD `id_tipo` int(11) NOT NULL default '0' AFTER `nom` ;
ALTER TABLE `sim_inventario` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_tipo` ;

CREATE TABLE `sim_inventario_relacion` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_inventario_relacion` ADD `id_disp1` int(11) NOT NULL default '0' AFTER `id` ;
ALTER TABLE `sim_inventario_relacion` ADD `id_disp2` int(11) NOT NULL default '0' AFTER `id_disp1` ;
ALTER TABLE `sim_inventario_relacion` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_disp2` ;

CREATE TABLE `sim_inventario_actuacion` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_inventario_actuacion` ADD `nom` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_inventario_actuacion` ADD `id_disp` int(11) NOT NULL default '1' AFTER `nom` ;
ALTER TABLE `sim_inventario_actuacion` ADD `parada` tinyint(1) NOT NULL default '0' AFTER `id_disp` ;
ALTER TABLE `sim_inventario_actuacion` ADD `duracion` int(11) NOT NULL default '0' AFTER `parada`;
ALTER TABLE `sim_inventario_actuacion` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `duracion` ;

CREATE TABLE `sim_inventario_actuacion_disp` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_inventario_actuacion_disp` ADD `id_act` int(11) NOT NULL default '0' AFTER `id` ;
ALTER TABLE `sim_inventario_actuacion_disp` ADD `id_disp` int(11) NOT NULL default '0' AFTER `id_act` ;
ALTER TABLE `sim_inventario_actuacion_disp` ADD `id_usuari` int(11) NOT NULL default '0' AFTER `id_disp` ;
ALTER TABLE `sim_inventario_actuacion_disp` ADD `data` datetime default NULL AFTER `id_usuari`;
ALTER TABLE `sim_inventario_actuacion_disp` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `data` ;

CREATE TABLE `sim_inventario_tipo` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_inventario_tipo` ADD `tipo` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_inventario_tipo` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `tipo` ;
ALTER TABLE `sim_inventario_tipo` ADD `orden` int(11) NOT NULL default '0' AFTER `visible` ;

CREATE TABLE `sim_inventario_tipo_atributo` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_inventario_tipo_atributo` ADD `atributo` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_inventario_tipo_atributo` ADD `id_tipo` int(11) NOT NULL default '0' AFTER `atributo` ;
ALTER TABLE `sim_inventario_tipo_atributo` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_tipo` ;

CREATE TABLE `sim_inventario_tipo_atributo_dada` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_inventario_tipo_atributo_dada` ADD `dada` longtext NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_inventario_tipo_atributo_dada` ADD `id_atribut` int(11) NOT NULL default '0' AFTER `dada` ;
ALTER TABLE `sim_inventario_tipo_atributo_dada` ADD `id_inventario` int(11) NOT NULL default '0' AFTER `id_atribut` ;
ALTER TABLE `sim_inventario_tipo_atributo_dada` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_inventario` ;
*/

CREATE TABLE `sim_rrhh_bolsa` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY (`id`) );
ALTER TABLE `sim_rrhh_bolsa` ADD `fecha` date NOT NULL default '0000-00-00' AFTER `id`;
ALTER TABLE `sim_rrhh_bolsa` ADD `contacto` longtext NOT NULL AFTER `fecha`;
ALTER TABLE `sim_rrhh_bolsa` ADD `cv` longtext NOT NULL AFTER `contacto`;
ALTER TABLE `sim_rrhh_bolsa` ADD `carta` longtext NOT NULL AFTER `cv`;
ALTER TABLE `sim_rrhh_bolsa` ADD `notas` longtext NOT NULL AFTER `carta`;
ALTER TABLE `sim_rrhh_bolsa` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `notas`;

CREATE TABLE `sim_rrhh_ofertas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY (`id`) );
ALTER TABLE `sim_rrhh_ofertas` ADD `fecha` date NOT NULL default '0000-00-00' AFTER `id`;
ALTER TABLE `sim_rrhh_ofertas` ADD `descripcion` longtext NOT NULL AFTER `fecha`;
ALTER TABLE `sim_rrhh_ofertas` ADD `requisitos` longtext NOT NULL AFTER `descripcion`;
ALTER TABLE `sim_rrhh_ofertas` ADD `condiciones` longtext NOT NULL AFTER `requisitos`;
ALTER TABLE `sim_rrhh_ofertas` ADD `localidad` varchar(75) NOT NULL default '' AFTER `condiciones`;
ALTER TABLE `sim_rrhh_ofertas` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `localidad`;
ALTER TABLE `sim_rrhh_ofertas` ADD `vigente` tinyint(1) NOT NULL default '1' AFTER `visible`;

CREATE TABLE `sim_rrhh_departamento` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_rrhh_departamento` ADD `id_departamento` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_rrhh_departamento` ADD `departamento` varchar(255) default NULL AFTER `id_departamento`;
ALTER TABLE `sim_rrhh_departamento` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `departamento`;

CREATE TABLE `sim_rrhh_puesto_trabajo` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_rrhh_puesto_trabajo` ADD `puesto` varchar(255) default NULL AFTER `id`;
ALTER TABLE `sim_rrhh_puesto_trabajo` ADD `id_departamento` int(11) NOT NULL default '0' AFTER `puesto`;
ALTER TABLE `sim_rrhh_puesto_trabajo` ADD `tareas` longtext NOT NULL AFTER `id_departamento`;
ALTER TABLE `sim_rrhh_puesto_trabajo` ADD `f_general` longtext NOT NULL AFTER `tareas`;
ALTER TABLE `sim_rrhh_puesto_trabajo` ADD `f_especifica` longtext NOT NULL AFTER `f_general`;
ALTER TABLE `sim_rrhh_puesto_trabajo` ADD `experiencia` longtext NOT NULL AFTER `f_especifica`;
ALTER TABLE `sim_rrhh_puesto_trabajo` ADD `habilidades` longtext NOT NULL AFTER `experiencia`;
ALTER TABLE `sim_rrhh_puesto_trabajo` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `habilidades`;
ALTER TABLE `sim_rrhh_puesto_trabajo` ADD `activo` tinyint(1) NOT NULL default '1' AFTER `visible`;
ALTER TABLE `sim_rrhh_puesto_trabajo` ADD `numero` int(15) NOT NULL default '0' AFTER `visible`;

CREATE TABLE `sim_rrhh_empleado` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_rrhh_empleado` ADD `nom` varchar(255) default NULL AFTER `id`;
ALTER TABLE `sim_rrhh_empleado` ADD `fecha_incor` date NOT NULL default '0000-00-00' AFTER `nom`;
ALTER TABLE `sim_rrhh_empleado` ADD `plan_acogida` longtext NOT NULL AFTER `fecha_incor`;
ALTER TABLE `sim_rrhh_empleado` ADD `formacion` longtext NOT NULL AFTER `plan_acogida`;
ALTER TABLE `sim_rrhh_empleado` ADD `trayectoria` longtext NOT NULL AFTER `formacion`;
ALTER TABLE `sim_rrhh_empleado` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `trayectoria`;
ALTER TABLE `sim_rrhh_empleado` ADD `numero` int(15) NOT NULL default '0' AFTER `visible`;
ALTER TABLE `sim_rrhh_empleado` CHANGE `numero` `codigo` VARCHAR( 25 ) DEFAULT NULL;
ALTER TABLE `sim_rrhh_empleado` ADD `nif` varchar(15) NOT NULL default '' AFTER `nom`;
ALTER TABLE `sim_rrhh_empleado` ADD `cvia` char(2) NOT NULL default '' AFTER `nif`;
ALTER TABLE `sim_rrhh_empleado` ADD `direccion` varchar(50) NOT NULL default '' AFTER `cvia`;
ALTER TABLE `sim_rrhh_empleado` ADD `poblacion` varchar(50) NOT NULL default '' AFTER `direccion`;
ALTER TABLE `sim_rrhh_empleado` ADD `cp` varchar(5) NOT NULL default '' AFTER `poblacion`;
ALTER TABLE `sim_rrhh_empleado` ADD `provincia` varchar(15) NOT NULL default '' AFTER `cp`;
ALTER TABLE `sim_rrhh_empleado` ADD `id_pais` int(11) NOT NULL default '0' AFTER `provincia`;
ALTER TABLE `sim_rrhh_empleado` ADD `telefono` varchar(15) NOT NULL default '' AFTER `id_pais`;
ALTER TABLE `sim_rrhh_empleado` ADD `telefono2` varchar(15) NOT NULL default '' AFTER `telefono`;
ALTER TABLE `sim_rrhh_empleado` ADD `fax` varchar(15) NOT NULL default '' AFTER `telefono2`;
ALTER TABLE `sim_rrhh_empleado` ADD `fax2` varchar(15) NOT NULL default '' AFTER `fax`;
ALTER TABLE `sim_rrhh_empleado` ADD `mail` varchar(50) NOT NULL default '' AFTER `fax2`;
ALTER TABLE `sim_rrhh_empleado` ADD `notas` longtext AFTER `mail`;
ALTER TABLE `sim_rrhh_empleado` ADD `cuentabancaria` varchar(30) default NULL AFTER `notas`;
ALTER TABLE `sim_rrhh_empleado` ADD `entidadbancaria` varchar(100) NOT NULL default '' AFTER `cuentabancaria`;
ALTER TABLE `sim_rrhh_empleado` ADD `domiciliobancario` varchar(255) NOT NULL default '' AFTER `entidadbancaria`;

CREATE TABLE `sim_rrhh_puesto_empleado` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_rrhh_puesto_empleado` ADD `id_empleado` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_rrhh_puesto_empleado` ADD `id_puesto` int(11) NOT NULL default '0' AFTER `id_empleado`;
ALTER TABLE `sim_rrhh_puesto_empleado` ADD `fecha_alta` date NOT NULL default '0000-00-00' AFTER `id_puesto`;
ALTER TABLE `sim_rrhh_puesto_empleado` ADD `fecha_baja` date NOT NULL default '0000-00-00' AFTER `fecha_alta`;
ALTER TABLE `sim_rrhh_puesto_empleado` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `fecha_baja`;

CREATE TABLE `sim_rrhh_formacion` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_rrhh_formacion` ADD `numero` varchar(15) NOT NULL default '1' AFTER `id`;
ALTER TABLE `sim_rrhh_formacion` ADD `nom` varchar(255) default NULL AFTER `numero`;
ALTER TABLE `sim_rrhh_formacion` ADD `tipo` tinyint(1) NOT NULL default '1' AFTER `nom`;
ALTER TABLE `sim_rrhh_formacion` ADD `fecha` date NOT NULL default '0000-00-00' AFTER `tipo`;
ALTER TABLE `sim_rrhh_formacion` ADD `fecha_inicio` date NOT NULL default '0000-00-00' AFTER `fecha`;
ALTER TABLE `sim_rrhh_formacion` ADD `fecha_fin` date NOT NULL default '0000-00-00' AFTER `fecha_inicio`;
ALTER TABLE `sim_rrhh_formacion` ADD `impartidor` varchar(255) default NULL AFTER `fecha_fin`;
ALTER TABLE `sim_rrhh_formacion` ADD `duracion` tinyint(11) NOT NULL default '1' AFTER `impartidor`;
ALTER TABLE `sim_rrhh_formacion` ADD `observaciones` longtext NOT NULL AFTER `duracion`;
ALTER TABLE `sim_rrhh_formacion` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `observaciones`;
ALTER TABLE `sim_rrhh_formacion` ADD `temario` longtext NOT NULL AFTER `visible`;
ALTER TABLE `sim_rrhh_formacion` ADD `id_plan` int(11) NOT NULL default '0' AFTER `temario`;
ALTER TABLE `sim_rrhh_formacion` ADD `planificado` tinyint(1) NOT NULL default '0' AFTER `id_plan`;
ALTER TABLE `sim_rrhh_formacion` ADD `realizado` tinyint(1) NOT NULL default '0' AFTER `planificado`;
ALTER TABLE `sim_rrhh_formacion` ADD `coste` varchar(15) NOT NULL default '0' AFTER `realizado`;

CREATE TABLE `sim_rrhh_formacion_plan` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_rrhh_formacion_plan` ADD `nom` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_rrhh_formacion_plan` ADD `necesidades` longtext NOT NULL AFTER `nom`;
ALTER TABLE `sim_rrhh_formacion_plan` ADD `objetivos` longtext NOT NULL AFTER `necesidades`;
ALTER TABLE `sim_rrhh_formacion_plan` ADD `metodos` longtext NOT NULL AFTER `objetivos`;
ALTER TABLE `sim_rrhh_formacion_plan` ADD `resultados` longtext NOT NULL AFTER `metodos`;
ALTER TABLE `sim_rrhh_formacion_plan` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `resultados`;

CREATE TABLE `sim_rrhh_formacion_empleado` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_rrhh_formacion_empleado` ADD `id_empleado` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_rrhh_formacion_empleado` ADD `id_curso` int(11) NOT NULL default '0' AFTER `id_empleado`;
ALTER TABLE `sim_rrhh_formacion_empleado` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_curso`;

CREATE TABLE `sim_servidores_correo` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_servidores_correo` ADD `servidorSMTP` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_servidores_correo` ADD `sim_user` varchar(50) NOT NULL default '' AFTER `servidorSMTP`;
ALTER TABLE `sim_servidores_correo` ADD `usuari` varchar(50) NOT NULL default '' AFTER `sim_user`;
ALTER TABLE `sim_servidores_correo` ADD `pass` varchar(50) NOT NULL default '' AFTER `usuari`;
ALTER TABLE `sim_servidores_correo` ADD `port` int(11) NOT NULL default '0' AFTER `pass`;
ALTER TABLE `sim_servidores_correo` ADD `direccio` varchar(50) NOT NULL default '' AFTER `port`;
ALTER TABLE `sim_servidores_correo` ADD `nom_correu` varchar(50) NOT NULL default '' AFTER `direccio`;
ALTER TABLE `sim_servidores_correo` ADD `pred` tinyint(1) NOT NULL default '0' AFTER `nom_correu`;
ALTER TABLE `sim_servidores_correo` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `pred`;

/*
CREATE TABLE `sim_stock` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_stock` ADD `id_article` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_stock` ADD `id_almacen` int(11) NOT NULL default '0' AFTER `id_article`;
ALTER TABLE `sim_stock` ADD `unitates` decimal(11,2) NOT NULL default '0.00' AFTER `id_almacen`;
ALTER TABLE `sim_stock` ADD `id_cabezera` int(11) NOT NULL default '0' AFTER `unitates`;
ALTER TABLE `sim_stock` ADD `entrada` tinyint(1) NOT NULL default '1' AFTER `id_cabezera`;
ALTER TABLE `sim_stock` ADD `web` tinyint(1) NOT NULL default '0' AFTER `entrada`;
ALTER TABLE `sim_stock` ADD `fecha` date NOT NULL default '0000-00-00' AFTER `web`;
ALTER TABLE `sim_stock` ADD `id_usuari` int(11) NOT NULL default '0' AFTER `fecha`;
ALTER TABLE `sim_stock` ADD `pvp` decimal(10,2) NOT NULL default '0.00' AFTER `id_usuari`;
ALTER TABLE `sim_stock` ADD `pvd` decimal(10,2) NOT NULL default '0.00' AFTER `pvp`;
ALTER TABLE `sim_stock` ADD `vigente` tinyint(1) NOT NULL default '0' AFTER `pvd`;
ALTER TABLE `sim_stock` ADD `id_compte_entradas` int(11) NOT NULL default '0' AFTER `vigente` ;
ALTER TABLE `sim_stock` CHANGE `pvp` `pvp` DECIMAL( 10, 3 ) NOT NULL DEFAULT '0.000';
ALTER TABLE `sim_stock` CHANGE `pvd` `pvd` DECIMAL( 10, 3 ) NOT NULL DEFAULT '0.000';

CREATE TABLE `sim_stock_almacenes` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_stock_almacenes` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id`;
ALTER TABLE `sim_stock_almacenes` ADD `nom` varchar(255) NOT NULL default '' AFTER `visible`;
ALTER TABLE `sim_stock_almacenes` ADD `direccion` varchar(50) NOT NULL default '' AFTER `nom`;
ALTER TABLE `sim_stock_almacenes` ADD `poblacion` varchar(30) NOT NULL default '' AFTER `direccion`;
ALTER TABLE `sim_stock_almacenes` ADD `cp` varchar(5) NOT NULL default '' AFTER `poblacion`;
ALTER TABLE `sim_stock_almacenes` ADD `provincia` varchar(15) NOT NULL default '' AFTER `cp`;
ALTER TABLE `sim_stock_almacenes` ADD `mail` varchar(50) NOT NULL default '' AFTER `provincia`;
ALTER TABLE `sim_stock_almacenes` ADD `telefono` varchar(15) NOT NULL default '' AFTER `mail`;
ALTER TABLE `sim_stock_almacenes` ADD `notas` longtext AFTER `telefono`;

CREATE TABLE `sim_stock_almacenes_pasillo` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_stock_almacenes_pasillo` ADD `id_almacen` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_stock_almacenes_pasillo` ADD `orden` int(11) NOT NULL default '0' AFTER `id_almacen`;
ALTER TABLE `sim_stock_almacenes_pasillo` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `orden`;
ALTER TABLE `sim_stock_almacenes_pasillo` ADD `nom` varchar(255) NOT NULL default '' AFTER `visible`;

CREATE TABLE `sim_stock_almacenes_pasillo_estanteria` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_stock_almacenes_pasillo_estanteria` ADD `id_pasillo` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_stock_almacenes_pasillo_estanteria` ADD `orden` int(11) NOT NULL default '0' AFTER `id_pasillo`;
ALTER TABLE `sim_stock_almacenes_pasillo_estanteria` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `orden`;
ALTER TABLE `sim_stock_almacenes_pasillo_estanteria` ADD `nom` varchar(255) NOT NULL default '' AFTER `visible`;

CREATE TABLE `sim_stock_almacenes_pasillo_estanteria_seccion` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_stock_almacenes_pasillo_estanteria_seccion` ADD `id_estanteria` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_stock_almacenes_pasillo_estanteria_seccion` ADD `orden` int(11) NOT NULL default '0' AFTER `id_estanteria`;
ALTER TABLE `sim_stock_almacenes_pasillo_estanteria_seccion` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `orden`;
ALTER TABLE `sim_stock_almacenes_pasillo_estanteria_seccion` ADD `nom` varchar(255) NOT NULL default '' AFTER `visible`;
ALTER TABLE `sim_stock_almacenes_pasillo_estanteria_seccion` ADD `porcentage` int(11) NOT NULL default '0' AFTER `nom`;
*/

CREATE TABLE `sim_tamany_paper` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_tamany_paper` ADD `nom` varchar(255) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_tamany_paper` ADD `y` int(11) NOT NULL default '0' AFTER `nom`;
ALTER TABLE `sim_tamany_paper` ADD `x` int(11) NOT NULL default '0' AFTER `y`;
ALTER TABLE `sim_tamany_paper` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `x`;
ALTER TABLE `sim_tamany_paper` ADD `predeterminat` tinyint(1) NOT NULL default '0' AFTER `visible`;
INSERT INTO `sim_tamany_paper` VALUES (1,'Carta',279,216,1,0);
INSERT INTO `sim_tamany_paper` VALUES (2,'Oficio',330,216,1,0);
INSERT INTO `sim_tamany_paper` VALUES (3,'Folio',320,220,1,0);
INSERT INTO `sim_tamany_paper` VALUES (4,'DIN A5',210,148,1,0);
INSERT INTO `sim_tamany_paper` VALUES (5,'DIN A4',297,210,1,0);
INSERT INTO `sim_tamany_paper` VALUES (6,'DIN A3',420,297,1,0);
INSERT INTO `sim_tamany_paper` VALUES (7,'DIN A2',594,420,1,0);
INSERT INTO `sim_tamany_paper` VALUES (8,'DIN A1',841,594,1,0);
INSERT INTO `sim_tamany_paper` VALUES (9,'DIN A0',1189,841,1,0);

CREATE TABLE `sim_tarifes` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_tarifes` ADD `nom` varchar(255) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_tarifes` ADD `percentatge` int(11) NOT NULL default '0' AFTER `nom`;
ALTER TABLE `sim_tarifes` ADD `descompte` tinyint(1) NOT NULL default '1' AFTER `percentatge`;
ALTER TABLE `sim_tarifes` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descompte`;

CREATE TABLE `sim_tarifes_clients` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_tarifes_clients` ADD `id_tarifa` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_tarifes_clients` ADD `id_client` int(11) NOT NULL default '0' AFTER `id_tarifa`;
ALTER TABLE `sim_tarifes_clients` ADD `predeterminat` tinyint(1) NOT NULL default '0' AFTER `id_client`;

CREATE TABLE `sim_usuaris` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_usuaris` ADD `validat` tinyint(1) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_usuaris` ADD `actiu` tinyint(1) NOT NULL default '1' AFTER `validat`;
ALTER TABLE `sim_usuaris` ADD `usuari` varchar(30) NOT NULL default '' AFTER `actiu`;
ALTER TABLE `sim_usuaris` ADD `pass` varchar(10) NOT NULL default '' AFTER `usuari`;
ALTER TABLE `sim_usuaris` ADD `mail` varchar(50) NOT NULL default '' AFTER `pass`;
ALTER TABLE `sim_usuaris` ADD `sim` tinyint(1) NOT NULL default '0' AFTER `mail`;
ALTER TABLE `sim_usuaris` ADD `id_origen` int(11) NOT NULL default '0' AFTER `sim`;
INSERT INTO `sim_usuaris` VALUES (1, '1', '1', 'admin', 'admin', 'administracion@solucions-im.com', 1, 0);

CREATE TABLE `sim_usuaris_clients` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_usuaris_clients` ADD `id_usuari` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_usuaris_clients` ADD `id_client` int(11) NOT NULL default '0' AFTER `id_usuari`;
ALTER TABLE `sim_usuaris_clients` ADD `admin` tinyint(1) NOT NULL default '0' AFTER `id_client`;

CREATE TABLE `sim_usuaris_moduls` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_usuaris_moduls` ADD `id_usuari` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_usuaris_moduls` ADD `id_modul` int(11) NOT NULL default '0' AFTER `id_usuari`;
ALTER TABLE `sim_usuaris_moduls` ADD `admin` tinyint(1) NOT NULL default '0' AFTER `id_modul`;
INSERT INTO `sim_usuaris_moduls` VALUES (1, '1', '1002', '1');
INSERT INTO `sim_usuaris_moduls` VALUES (2, '1', '1022', '1');

CREATE TABLE `sim_modulos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_modulos` ADD `id_modulo` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_modulos` ADD `nom` varchar(30) NOT NULL default '' AFTER `id_modulo`;
ALTER TABLE `sim_modulos` ADD `descripcion` varchar(130) NOT NULL default '' AFTER `nom`;
ALTER TABLE `sim_modulos` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcion`;
ALTER TABLE `sim_modulos` ADD `id_grupo` int(11) NOT NULL default '0' AFTER `visible` ;
INSERT INTO `sim_modulos` VALUES (1, 1001, 'Contenidos', 'Permite crear noticias, articulos i sus grupos.', 0, 5);
INSERT INTO `sim_modulos` VALUES (2, 1002, 'Usuarios', 'Permite conceder permisos y modificar usuarios.', 1, 5);
INSERT INTO `sim_modulos` VALUES (3, 1003, 'Facturaci&oacute;n', 'M&oacute;dulo para la gesti&oacute;n de facturaci&oacute;n y contabilidad', 0, 3);
INSERT INTO `sim_modulos` VALUES (4, 1004, 'Articulos', 'Gesti&oacute;n de articulos y marcas de fabricantes.', 0, 6);
INSERT INTO `sim_modulos` VALUES (5, 1005, 'Inventario', 'Gesti&oacute;n del inventario que dispone cada cliente.', 0, 3);
INSERT INTO `sim_modulos` VALUES (6, 1006, 'Incidencias', 'Gesti&oacute;n de incidencias y agenda de tareas.', 0, 4);
INSERT INTO `sim_modulos` VALUES (7, 1007, 'Pedidos', 'Formulario de solucitud de material.', 0, 3);
INSERT INTO `sim_modulos` VALUES (8, 1008, 'Clientes', 'Gesti&oacute;n de clientes y todos sus datos.', 0, 1);
INSERT INTO `sim_modulos` VALUES (9, 1009, 'Comercial', 'Para la gesti&oacute;n de posibles clientes y su seguimiento', 0, 1);
INSERT INTO `sim_modulos` VALUES (10, 1010, 'Compras', 'Gesti&oacute;n de proveedores y pedidos', 0, 3);
INSERT INTO `sim_modulos` VALUES (11, 1011, 'Contratos', 'Gesti&oacute;n de contratos de servicios', 0, 3);
INSERT INTO `sim_modulos` VALUES (12, 1012, 'Mailing', 'Gesti&oacute; de e-mails masivos.', 0, 3);
INSERT INTO `sim_modulos` VALUES (13, 1013, 'Inventario Incid.', 'Gesti&oacute;n de incidencias técnicas en los registros de inventario.', 0, 1);
INSERT INTO `sim_modulos` VALUES (14, 1014, 'Control Producci&oacute;n', 'Control del proceso de producci&oacute;n y control de calidad.', 0, 6);
INSERT INTO `sim_modulos` VALUES (15, 1015, 'Control de Calidad', 'Gesti&oacute;n del control de calidad para normativa ISO', 0, 6);
INSERT INTO `sim_modulos` VALUES (16, 1016, 'Producci&oacute;n', 'Gesti&oacute;n de OT, FT, etc', 0, 6);
INSERT INTO `sim_modulos` VALUES (17, 1017, 'Incidencias', 'Gesti&oacute;n de incidencias', 0, 4);
INSERT INTO `sim_modulos` VALUES (18, 1018, 'Monitorizaci&oacute;n', 'Gesti&oacute; de monitorizaci&oacute;n', 0, '');
INSERT INTO `sim_modulos` VALUES (19, 1019, 'Contabilidad', 'Contabilidad', 0, 2);
INSERT INTO `sim_modulos` VALUES (20, 1020, 'RRHH', 'Curriculums y ofertas de empleo', 0, 2);
INSERT INTO `sim_modulos` VALUES (21, 1021, 'TPV', 'Terminal Punto de Venta', 0, 3);
INSERT INTO `sim_modulos` VALUES (22, 1022, 'Sistema', 'Acceso a la configuraci&oacute;n del programa MGestion', 1, 5);
INSERT INTO `sim_modulos` VALUES (23, 1023, 'Auxiliares', 'Gesti&oacute;n auxiliares', 0, 5);
INSERT INTO `sim_modulos` VALUES (24, 1024, 'Aplicaciones', 'Gesti&oacute;n de contraseñas de apliciones', 0, 6);
INSERT INTO `sim_modulos` VALUES (25, 1025, 'Monitorizaci&oacute;n', 'Gesti&oacute;n Monitorizaci&oacute;n', 0, 6);
INSERT INTO `sim_modulos` VALUES (26, 1026, 'Licencias', 'Gesti&oacute;n de licencias de productos', 0, 3);
INSERT INTO `sim_modulos` VALUES (1001, 2001, 'Estado Servidor', 'Permite conocer el estador del servidor o servidores del cliente', 0, 7);
INSERT INTO `sim_modulos` VALUES (1002, 2002, 'Reports', 'Permite descargar los reports del cliente', 0, 7);
INSERT INTO `sim_modulos` VALUES (1003, 2003, 'Documentos', 'Permite descargar los documentos asociados al cliente', 0, 7);

CREATE TABLE `sim_modulos_grups` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_modulos_grups` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id`;
ALTER TABLE `sim_modulos_grups` ADD `nom` varchar(30) NOT NULL default '' AFTER `visible`;
INSERT INTO `sim_modulos_grups` VALUES (1,1,'Gesti&oacute;n Comercial');
INSERT INTO `sim_modulos_grups` VALUES (2,1,'Gesti&oacute;n Direcci&oacute;n');
INSERT INTO `sim_modulos_grups` VALUES (3,1,'Gesti&oacute;n Administrativa');
INSERT INTO `sim_modulos_grups` VALUES (4,1,'Agenda');
INSERT INTO `sim_modulos_grups` VALUES (5,1,'Administraci&oacute;n');
INSERT INTO `sim_modulos_grups` VALUES (6,1,'Producci&oacute;n');

CREATE TABLE `sim_nacions` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_nacions` ADD `nacion` varchar(50) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_nacions` ADD `sigla_nacion` char(3) NOT NULL default '0' AFTER `nacion`;
CREATE TABLE `reg_acces` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `reg_acces` ADD `id_user` int(11) NOT NULL default '0' AFTER `id` ;
ALTER TABLE `reg_acces` ADD `op` int(11) NOT NULL default '0' AFTER `id_user` ;
ALTER TABLE `reg_acces` ADD `sop` int(11) NOT NULL default '0' AFTER `op` ;
ALTER TABLE `reg_acces` ADD `ssop` int(11) NOT NULL default '0' AFTER `sop` ;
ALTER TABLE `reg_acces` ADD `fecha` date NOT NULL default '0000-00-00' AFTER `ssop` ;
ALTER TABLE `reg_acces` ADD `hora` time NOT NULL default '00:00:00' AFTER `fecha` ;
ALTER TABLE `reg_acces` ADD `ip` varchar(15) NOT NULL default '' AFTER `hora` ;
ALTER TABLE `reg_acces` ADD `cliente` longtext NOT NULL AFTER `ip` ;
ALTER TABLE `reg_acces` ADD `url` longtext NOT NULL AFTER `cliente` ;
ALTER TABLE `reg_acces` ADD `url_origen` longtext NOT NULL AFTER `url` ;

CREATE TABLE `sgm_agendas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_agendas` ADD `nombre` varchar(255) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_agendas` ADD `descripcion` longtext AFTER `nombre`;
ALTER TABLE `sgm_agendas` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcion`;

CREATE TABLE `sgm_agendas_users` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_agendas_users` ADD `id_agenda` int(11) NOT NULL default '0' AFTER `id` ;
ALTER TABLE `sgm_agendas_users` ADD `id_user` int(11) NOT NULL default '0' AFTER `id_agenda` ;
ALTER TABLE `sgm_agendas_users` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_user`;
ALTER TABLE `sgm_agendas_users` ADD `escritura` tinyint(1) NOT NULL default '0' AFTER `visible`;
ALTER TABLE `sgm_agendas_users` ADD `propietario` tinyint(1) NOT NULL default '0' AFTER `escritura` ;

-- fuera de uso
/*
CREATE TABLE `sgm_analisis_costes` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_analisis_costes` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id` ;
ALTER TABLE `sgm_analisis_costes` ADD `vigente` tinyint(1) NOT NULL default '0' AFTER `visible` ;
ALTER TABLE `sgm_analisis_costes` ADD `id_linea` int(11) NOT NULL default '0' AFTER `vigente` ;
ALTER TABLE `sgm_analisis_costes` ADD `precio_material` decimal(11,3) NOT NULL default '0' AFTER `id_linea` ;
ALTER TABLE `sgm_analisis_costes` ADD `precio_unitario` decimal(11,3) NOT NULL default '0' AFTER `precio_material` ;
ALTER TABLE `sgm_analisis_costes` ADD `precio_adicional` decimal(11,3) NOT NULL default '0' AFTER `precio_unitario` ;
ALTER TABLE `sgm_analisis_costes` ADD `total_pieza` decimal(11,3) NOT NULL default '0' AFTER `precio_adicional` ;
ALTER TABLE `sgm_analisis_costes` ADD `peso` decimal(11,3) NOT NULL default '0' AFTER `total_pieza` ;
ALTER TABLE `sgm_analisis_costes` ADD `unidades` decimal(11,3) NOT NULL default '0' AFTER `peso` ;
ALTER TABLE `sgm_analisis_costes` ADD `tarifa` decimal(11,3) NOT NULL default '0' AFTER `unidades` ;
ALTER TABLE `sgm_analisis_costes` ADD `coste_transporte` decimal(11,3) NOT NULL default '0' AFTER `tarifa` ;
ALTER TABLE `sgm_analisis_costes` ADD `coste_economico` decimal(11,3) NOT NULL default '0' AFTER `coste_transporte` ;
ALTER TABLE `sgm_analisis_costes` ADD `total` decimal(11,3) NOT NULL default '0' AFTER `coste_economico` ;
ALTER TABLE `sgm_analisis_costes` ADD `total_unidad` decimal(11,3) NOT NULL default '0' AFTER `total` ;
ALTER TABLE `sgm_analisis_costes` ADD `total_coste_unidad` decimal(11,3) NOT NULL default '0' AFTER `total_unidad` ;
*/
-- fuera de uso
/*
CREATE TABLE `sgm_analisis_costes_calculo` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_analisis_costes_calculo` ADD `id_analisis_costes` int(11) NOT NULL default '0' AFTER `id` ;
ALTER TABLE `sgm_analisis_costes_calculo` ADD `total_material` int(11) NOT NULL default '0' AFTER `id_analisis_costes` ;
ALTER TABLE `sgm_analisis_costes_calculo` ADD `total_unitario` int(11) NOT NULL default '0' AFTER `total_material` ;
ALTER TABLE `sgm_analisis_costes_calculo` ADD `total_compartido` int(11) NOT NULL default '0' AFTER `total_unitario` ;
ALTER TABLE `sgm_analisis_costes_calculo` ADD `id_material` int(11) NOT NULL default '0' AFTER `total_compartido` ;
ALTER TABLE `sgm_analisis_costes_calculo` ADD `x` int(11) NOT NULL default '0' AFTER `id_material` ;
ALTER TABLE `sgm_analisis_costes_calculo` ADD `y` int(11) NOT NULL default '0' AFTER `x` ;
ALTER TABLE `sgm_analisis_costes_calculo` ADD `z` int(11) NOT NULL default '0' AFTER `y` ;
ALTER TABLE `sgm_analisis_costes_calculo` ADD `diametro` int(11) NOT NULL default '0' AFTER `z` ;
ALTER TABLE `sgm_analisis_costes_calculo` ADD `kg` int(11) NOT NULL default '0' AFTER `diametro` ;

-- fuera de uso
CREATE TABLE `sgm_analisis_costes_calculo_fase` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_analisis_costes_calculo_fase` ADD `id_analisis_calculo` int(11) NOT NULL default '0' AFTER `id` ;
ALTER TABLE `sgm_analisis_costes_calculo_fase` ADD `id_fase` int(11) NOT NULL default '0' AFTER `id_analisis_calculo` ;
ALTER TABLE `sgm_analisis_costes_calculo_fase` ADD `id_recurso` int(11) NOT NULL default '0' AFTER `id_fase` ;
ALTER TABLE `sgm_analisis_costes_calculo_fase` ADD `tiempo` int(11) NOT NULL default '0' AFTER `id_recurso` ;
ALTER TABLE `sgm_analisis_costes_calculo_fase` ADD `precio_hora` int(11) NOT NULL default '0' AFTER `tiempo` ;
ALTER TABLE `sgm_analisis_costes_calculo_fase` ADD `total` int(11) NOT NULL default '0' AFTER `precio_hora` ;
*/

CREATE TABLE `sgm_articles` ( `id` int(11) NOT NULL auto_increment,  PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_articles` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id` ;
ALTER TABLE `sgm_articles` ADD `codigo` varchar(6) NOT NULL default '0' AFTER `visible` ;
ALTER TABLE `sgm_articles` ADD `nombre` varchar(70) NOT NULL default '' AFTER `codigo` ;
ALTER TABLE `sgm_articles` ADD `id_subgrupo` int(11) NOT NULL default '0' AFTER `nombre` ;
ALTER TABLE `sgm_articles` ADD `notas` longtext AFTER `id_subgrupo` ;
ALTER TABLE `sgm_articles` ADD `descatalogat` tinyint(1) NOT NULL default '0' AFTER `notas` ;
ALTER TABLE `sgm_articles` ADD `precio` decimal(11,3) NOT NULL default '0' AFTER `descatalogat` ;
ALTER TABLE `sgm_articles` ADD `id_divisa` int(11) NOT NULL default '0' AFTER `precio` ;
ALTER TABLE `sgm_articles` ADD `codigo2` varchar(12) NOT NULL default '' AFTER `codigo` ;
ALTER TABLE `sgm_articles` ADD `id_marca` int(11) NOT NULL default '0' AFTER `id_subgrupo` ;
ALTER TABLE `sgm_articles` ADD `url` varchar(255) default NULL AFTER `id_marca` ;
ALTER TABLE `sgm_articles` ADD `img1` varchar(100) NOT NULL default '' AFTER `url` ;
ALTER TABLE `sgm_articles` ADD `img2` varchar(100) NOT NULL default '' AFTER `img1` ;
ALTER TABLE `sgm_articles` ADD `img3` varchar(100) NOT NULL default '' AFTER `img2` ;
ALTER TABLE `sgm_articles` ADD `web` tinyint(1) NOT NULL default '0' AFTER `notas` ;
ALTER TABLE `sgm_articles` ADD `escandall` tinyint(1) NOT NULL default '0' AFTER `web` ;
ALTER TABLE `sgm_articles` ADD `recalc_escandall` tinyint(1) NOT NULL default '0' AFTER `escandall` ;
ALTER TABLE `sgm_articles` ADD `fecha` date NOT NULL default '0000-00-00' AFTER `recalc_escandall` ;
ALTER TABLE `sgm_articles` ADD `notas_unicas` tinyint(1) NOT NULL default '1' AFTER `fecha` ;
ALTER TABLE `sgm_articles` ADD `nom_codif` varchar(80) default NULL AFTER `notas_unicas` ;
ALTER TABLE `sgm_articles` ADD `stock_min` int(11) NOT NULL default '0' AFTER `nom_codif` ;
ALTER TABLE `sgm_articles` ADD `stock_max` int(11) NOT NULL default '0' AFTER `stock_min` ;
ALTER TABLE `sgm_articles` ADD `codigoext` varchar(17) NOT NULL default '0' after `stock_max`;
ALTER TABLE `sgm_articles` ADD `subctacompras` varchar(11) NOT NULL default '0' after `codigoext`;
ALTER TABLE `sgm_articles` ADD `subctaventas` varchar(11) NOT NULL default '0' after `subctacompras`;
ALTER TABLE `sgm_articles` ADD `nom_etiq` varchar(80) default NULL AFTER `descatalogat` ;
ALTER TABLE `sgm_articles` ADD `plano` varchar(80) default NULL AFTER `nom_etiq` ;
ALTER TABLE `sgm_articles` ADD `porcentage` int(11) NOT NULL default '0' AFTER `precio` ;

CREATE TABLE `sim_articles` ( `id` int(11) NOT NULL auto_increment,  PRIMARY KEY  (`id`) );
ALTER TABLE `sim_articles` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id` ;
ALTER TABLE `sim_articles` ADD `codi` varchar(6) NOT NULL default '0' AFTER `visible` ;
ALTER TABLE `sim_articles` ADD `nom` varchar(70) NOT NULL default '' AFTER `codi` ;
ALTER TABLE `sim_articles` ADD `id_subgrup` int(11) NOT NULL default '0' AFTER `nom` ;
ALTER TABLE `sim_articles` ADD `notes` longtext AFTER `id_subgrup` ;
ALTER TABLE `sim_articles` ADD `descatalogat` tinyint(1) NOT NULL default '0' AFTER `notes` ;
ALTER TABLE `sim_articles` ADD `preu` decimal(11,3) NOT NULL default '0' AFTER `descatalogat` ;
ALTER TABLE `sim_articles` ADD `id_divisa` int(11) NOT NULL default '0' AFTER `preu` ;

CREATE TABLE `sgm_articles_archivos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_articles_archivos` ADD `id_articulo` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_articles_archivos` ADD `id_tipo` int(11) NOT NULL default '0' AFTER `id_articulo`;
ALTER TABLE `sgm_articles_archivos` ADD `name` varchar(100) NOT NULL default '' AFTER `id_tipo`;
ALTER TABLE `sgm_articles_archivos` ADD `type` varchar(20) NOT NULL default '' AFTER `name`;
ALTER TABLE `sgm_articles_archivos` ADD `size` int(11) NOT NULL default '0' AFTER `type`;

/*
CREATE TABLE `sgm_articles_escandall` ( `id` int(11) NOT NULL auto_increment,  PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_articles_escandall` ADD `id_escandall` int(11) NOT NULL default '0' AFTER `id` ;
ALTER TABLE `sgm_articles_escandall` ADD `id_article` int(11) NOT NULL default '0' AFTER `id_escandall` ;
ALTER TABLE `sgm_articles_escandall` ADD `unitats` decimal(11,3) NOT NULL default '0' AFTER `id_article` ;
ALTER TABLE `sgm_articles_escandall` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `unitats` ;
ALTER TABLE `sgm_articles_escandall` ADD `pvd_forzat` decimal(11,3) NOT NULL default '0' AFTER `visible` ;
ALTER TABLE `sgm_articles_escandall` ADD `pvp_forzat` decimal(11,3) NOT NULL default '0' AFTER `pvd_forzat` ;

-- fuera de uso
CREATE TABLE `sgm_articles_idiomas` ( `id` int(11) NOT NULL auto_increment,  PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_articles_idiomas` ADD `id_article` int(11) NOT NULL default '0' AFTER `id` ;
ALTER TABLE `sgm_articles_idiomas` ADD `id_idioma` int(11) NOT NULL default '0' AFTER `id_article` ;
ALTER TABLE `sgm_articles_idiomas` ADD `nombre` varchar(70) NOT NULL default '' AFTER `id_idioma` ;
ALTER TABLE `sgm_articles_idiomas` ADD `notas` longtext AFTER `nombre` ;

CREATE TABLE `sgm_articles_caracteristicas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) ) ;
ALTER TABLE `sgm_articles_caracteristicas` ADD `id_caracteristica` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_articles_caracteristicas` ADD `nombre` varchar(25) NOT NULL default '' AFTER `id_caracteristica`;
ALTER TABLE `sgm_articles_caracteristicas` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `nombre`;
ALTER TABLE `sgm_articles_caracteristicas` ADD `unidad` varchar(25) NOT NULL default '' AFTER `visible`;
ALTER TABLE `sgm_articles_caracteristicas` ADD `unidad_abr` varchar(10) NOT NULL default '' AFTER `unidad`;
ALTER TABLE `sgm_articles_caracteristicas` ADD `valor` varchar(25) NOT NULL default '' AFTER `unidad_abr`;

CREATE TABLE `sgm_articles_caracteristicas_idiomas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) ) ;
ALTER TABLE `sgm_articles_caracteristicas_idiomas` ADD `id_caracteristica` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_articles_caracteristicas_idiomas` ADD `id_idioma` int(11) NOT NULL default '0' AFTER `id_caracteristica` ;
ALTER TABLE `sgm_articles_caracteristicas_idiomas` ADD `nombre` varchar(25) NOT NULL default '' AFTER `id_idioma`;
ALTER TABLE `sgm_articles_caracteristicas_idiomas` ADD `unidad` varchar(25) NOT NULL default '' AFTER `nombre`;
ALTER TABLE `sgm_articles_caracteristicas_idiomas` ADD `unidad_abr` varchar(10) NOT NULL default '' AFTER `unidad`;
ALTER TABLE `sgm_articles_caracteristicas_idiomas` ADD `valor` varchar(25) NOT NULL default '' AFTER `unidad_abr`;

CREATE TABLE `sgm_articles_caracteristicas_tablas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) ) ;
ALTER TABLE `sgm_articles_caracteristicas_tablas` ADD `id_caracteristica` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_articles_caracteristicas_tablas` ADD `valor` varchar(25) NOT NULL default '' AFTER `id_caracteristica`;
ALTER TABLE `sgm_articles_caracteristicas_tablas` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `valor`;

CREATE TABLE `sgm_articles_clients` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) ) ;
ALTER TABLE `sgm_articles_clients` ADD `id_article` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_articles_clients` ADD `id_client` int(11) NOT NULL default '0' AFTER `id_article`;
ALTER TABLE `sgm_articles_clients` ADD `stock_min` int(11) NOT NULL default '0' AFTER `id_client`;
ALTER TABLE `sgm_articles_clients` ADD `stock_max` int(11) NOT NULL default '0' AFTER `stock_min`;
ALTER TABLE `sgm_articles_clients` ADD `preu` decimal( 11, 2 ) NOT NULL DEFAULT '0' AFTER `stock_max`;

CREATE TABLE `sgm_articles_costos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) ) ;
ALTER TABLE `sgm_articles_costos` ADD `id_article` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_articles_costos` ADD `preu_cost` decimal(11,3) NOT NULL default '0.000' AFTER `id_article`;
ALTER TABLE `sgm_articles_costos` ADD `pes_cost` decimal(11,3) NOT NULL default '0.000' AFTER `preu_cost`;
ALTER TABLE `sgm_articles_costos` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `pes_cost` ;
ALTER TABLE `sgm_articles_costos` ADD `descripcio` varchar(255) NOT NULL default '' AFTER `visible`;
ALTER TABLE `sgm_articles_costos` ADD `temps` int(11) NOT NULL default '0' AFTER `descripcio` ;
ALTER TABLE `sgm_articles_costos` ADD `fecha` date NOT NULL default '0000-00-00' AFTER `temps` ;
ALTER TABLE `sgm_articles_costos` ADD `id_cuerpo` int(11) NOT NULL default '0' AFTER `fecha`;
ALTER TABLE `sgm_articles_costos` ADD `aprovat` tinyint(1) NOT NULL default '0' AFTER `id_cuerpo` ;

CREATE TABLE `sgm_articles_fases_recursos` ( `id` int(11) NOT NULL auto_increment,  PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_articles_fases_recursos` ADD `id_fase` int(11) NOT NULL default '0' AFTER `id` ;
ALTER TABLE `sgm_articles_fases_recursos` ADD `id_grupo_recurso` int(11) NOT NULL default '0' AFTER `id_fase` ;
ALTER TABLE `sgm_articles_fases_recursos` ADD `id_coste` int(11) NOT NULL default '0' AFTER `id_grupo_recurso` ;
ALTER TABLE `sgm_articles_fases_recursos` ADD `temps` int(11) NOT NULL default '0' AFTER `id_coste` ;
ALTER TABLE `sgm_articles_fases_recursos` ADD `ordre` int(11) NOT NULL default '0' AFTER `temps` ;
ALTER TABLE `sgm_articles_fases_recursos` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `ordre` ;
ALTER TABLE `sgm_articles_fases_recursos` ADD `preu_fases` decimal(11,3) NOT NULL default '0.000' AFTER `visible`;
ALTER TABLE `sgm_articles_fases_recursos` ADD `calc_temps` int(11) NOT NULL default '0' AFTER `preu_fases`;

CREATE TABLE `sgm_articles_recursos` ( `id` int(11) NOT NULL auto_increment,  PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_articles_recursos` ADD `id_articles_fases_recursos` int(11) NOT NULL default '0' AFTER `id` ;
ALTER TABLE `sgm_articles_recursos` ADD `id_recurso` int(11) NOT NULL default '0' AFTER `id_articles_fases_recursos` ;

CREATE TABLE `sgm_articles_estacada` ( `id` int(11) NOT NULL auto_increment,  PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_articles_estacada` ADD `id_fase_recurso` int(11) NOT NULL default '0' AFTER `id` ;
ALTER TABLE `sgm_articles_estacada` ADD `orden` int(11) NOT NULL default '0' AFTER `id_fase_recurso` ;
ALTER TABLE `sgm_articles_estacada` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `orden` ;
ALTER TABLE `sgm_articles_estacada` ADD `descripcio` varchar(255) NOT NULL default '' AFTER `visible`;

CREATE TABLE `sgm_articles_operaciones` ( `id` int(11) NOT NULL auto_increment,  PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_articles_operaciones` ADD `id_operacion` int(11) NOT NULL default '0' AFTER `id` ;
ALTER TABLE `sgm_articles_operaciones` ADD `id_estacada` int(11) NOT NULL default '0' AFTER `id_operacion` ;
ALTER TABLE `sgm_articles_operaciones` ADD `temps` int(11) NOT NULL default '0' AFTER `id_estacada` ;
ALTER TABLE `sgm_articles_operaciones` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `temps` ;
ALTER TABLE `sgm_articles_operaciones` ADD `descripcio` varchar(255) NOT NULL default '' AFTER `visible`;
*/
CREATE TABLE `sgm_articles_grupos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_articles_grupos` ADD `codigo` varchar(5) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_articles_grupos` ADD `grupo` varchar(30) NOT NULL default '' AFTER `codigo`;

CREATE TABLE `sim_articles_grups` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_articles_grups` ADD `codi` varchar(5) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_articles_grups` ADD `grup` varchar(30) NOT NULL default '' AFTER `codi`;

CREATE TABLE `sgm_articles_grupos_idiomas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_articles_grupos_idiomas` ADD `id_grupo` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_articles_grupos_idiomas` ADD `id_idioma` int(11) NOT NULL default '0' AFTER `id_grupo` ;
ALTER TABLE `sgm_articles_grupos_idiomas` ADD `grupo` varchar(30) NOT NULL default '' AFTER `id_idioma`;
/*
CREATE TABLE `sgm_articles_marcas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_articles_marcas` ADD `marca` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_articles_marcas` ADD `logo` varchar(30) NOT NULL default '' AFTER `marca`;
ALTER TABLE `sgm_articles_marcas` ADD `web` varchar(50) NOT NULL default ''AFTER `logo`;

-- fuera de uso
CREATE TABLE `sgm_articles_material` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_articles_material` ADD `id_material` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_articles_material` ADD `id_coste` int(11) NOT NULL default '0' AFTER `id_material`;
ALTER TABLE `sgm_articles_material` ADD `x` decimal(11,3) NOT NULL default '0.000' AFTER `id_coste`;
ALTER TABLE `sgm_articles_material` ADD `y` decimal(11,3) NOT NULL default '0.000' AFTER `x`;
ALTER TABLE `sgm_articles_material` ADD `z` decimal(11,3) NOT NULL default '0.000' AFTER `y`;
ALTER TABLE `sgm_articles_material` ADD `diametro` decimal(11,3) NOT NULL default '0.000' AFTER `z`;
ALTER TABLE `sgm_articles_material` ADD `especifico` tinyint(1) NOT NULL default '1' AFTER `diametro` ;
ALTER TABLE `sgm_articles_material` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `especifico` ;
ALTER TABLE `sgm_articles_material` ADD `preu_mat` decimal(11,10) NOT NULL default '0.000' AFTER `visible`;

CREATE TABLE `sgm_articles_rel_caracteristicas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_articles_rel_caracteristicas` ADD `id_articulo` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_articles_rel_caracteristicas` ADD `id_valor` int(11) NOT NULL default '0' AFTER `id_articulo`;
ALTER TABLE `sgm_articles_rel_caracteristicas` ADD `valor` varchar(50) NOT NULL default '' AFTER `id_valor`;
  
-- fuera de uso
CREATE TABLE `sgm_articles_rel_clientes` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_articles_rel_clientes` ADD `id_articulo` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_articles_rel_clientes` ADD `id_cliente` int(11) NOT NULL default '0' AFTER `id_articulo`;

-- fuera de uso
CREATE TABLE `sgm_articles_rel_marcas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_articles_rel_marcas` ADD `id_articulo` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_articles_rel_marcas` ADD `id_marca` int(11) NOT NULL default '0' AFTER `id_articulo`;

CREATE TABLE `sgm_articles_rel_proveedores` ( `id` int(11) NOT NULL auto_increment,  PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_articles_rel_proveedores` ADD `id_articulo` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_articles_rel_proveedores` ADD `id_proveedor` int(11) NOT NULL default '0' AFTER `id_articulo`;
ALTER TABLE `sgm_articles_rel_proveedores` ADD `codigo_proveedor` varchar(30) NOT NULL default '' AFTER `id_proveedor`;
ALTER TABLE `sgm_articles_rel_proveedores` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `codigo_proveedor`;
*/
CREATE TABLE `sgm_articles_subgrupos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_articles_subgrupos` ADD `id_grupo` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_articles_subgrupos` ADD `codigo` varchar(5) NOT NULL default '' AFTER `id_grupo`;
ALTER TABLE `sgm_articles_subgrupos` ADD `subgrupo` varchar(30) NOT NULL default '' AFTER `codigo`;
ALTER TABLE `sgm_articles_subgrupos` ADD `contador` int(11) NOT NULL default '0' AFTER `subgrupo`;

CREATE TABLE `sim_articles_subgrups` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_articles_subgrups` ADD `id_grup` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_articles_subgrups` ADD `codi` varchar(5) NOT NULL default '' AFTER `id_grup`;
ALTER TABLE `sim_articles_subgrups` ADD `subgrup` varchar(30) NOT NULL default '' AFTER `codi`;
ALTER TABLE `sim_articles_subgrups` ADD `contador` int(11) NOT NULL default '0' AFTER `subgrup`;

CREATE TABLE `sgm_articles_subgrupos_idiomas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_articles_subgrupos_idiomas` ADD `id_subgrupo` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_articles_subgrupos_idiomas` ADD `id_idioma` int(11) NOT NULL default '0' AFTER `id_subgrupo` ;
ALTER TABLE `sgm_articles_subgrupos_idiomas` ADD `subgrupo` varchar(30) NOT NULL default '' AFTER `id_idioma`;

CREATE TABLE `sgm_articles_subgrupos_caracteristicas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_articles_subgrupos_caracteristicas` ADD `id_subgrupo` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_articles_subgrupos_caracteristicas` ADD `id_caracteristica` int(11) NOT NULL default '0' AFTER `id_subgrupo` ;
/*
CREATE TABLE `sgm_articles_seccions` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_articles_seccions` ADD `id_article` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_articles_seccions` ADD `id_seccion` int(11) NOT NULL default '0' AFTER `id_article` ;
ALTER TABLE `sgm_articles_seccions` ADD `id_estanteria` int(11) NOT NULL default '0' AFTER `id_seccion`;
ALTER TABLE `sgm_articles_seccions` ADD `id_pasillo` int(11) NOT NULL default '0' AFTER `id_estanteria` ;
ALTER TABLE `sgm_articles_seccions` ADD `id_almacen` int(11) NOT NULL default '0' AFTER `id_pasillo`;
ALTER TABLE `sgm_articles_seccions` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_almacen`;
*/

CREATE TABLE `sgm_cabezera` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_cabezera` ADD `id_origen` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_cabezera` ADD `numero` int(11) NOT NULL default '0' AFTER `id_origen`;
ALTER TABLE `sgm_cabezera` ADD `version` int(11) NOT NULL default '0' AFTER `numero`;
ALTER TABLE `sgm_cabezera` ADD `numero_cliente` varchar(20) default NULL AFTER `version`;
ALTER TABLE `sgm_cabezera` ADD `fecha` date NOT NULL default '0000-00-00' AFTER `numero_cliente`;
ALTER TABLE `sgm_cabezera` ADD `fecha_prevision` date NOT NULL default '0000-00-00' AFTER `fecha`;
ALTER TABLE `sgm_cabezera` ADD `fecha_entrega` date NOT NULL default '0000-00-00' AFTER `fecha_prevision`;
ALTER TABLE `sgm_cabezera` ADD `fecha_vencimiento` date NOT NULL default '0000-00-00' AFTER `fecha_entrega`;
ALTER TABLE `sgm_cabezera` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `fecha_vencimiento`;
ALTER TABLE `sgm_cabezera` ADD `tipo` int(11) NOT NULL default '1' AFTER `visible`;
ALTER TABLE `sgm_cabezera` ADD `subtipo` int(11) NOT NULL default '0' AFTER `tipo`;
ALTER TABLE `sgm_cabezera` ADD `nombre` varchar(255) default NULL AFTER `subtipo`;
ALTER TABLE `sgm_cabezera` ADD `nif` varchar(15) default NULL AFTER `nombre`;
ALTER TABLE `sgm_cabezera` ADD `direccion` varchar(150) default NULL AFTER `nif`;
ALTER TABLE `sgm_cabezera` ADD `poblacion` varchar(50) default NULL AFTER `direccion`;
ALTER TABLE `sgm_cabezera` ADD `cp` varchar(5) default NULL AFTER `poblacion`;
ALTER TABLE `sgm_cabezera` ADD `provincia` varchar(15) default NULL AFTER `cp`;
ALTER TABLE `sgm_cabezera` ADD `id_pais` int(11) NOT NULL default '0' AFTER `provincia`;
ALTER TABLE `sgm_cabezera` ADD `mail` varchar(50) default NULL AFTER `id_pais`;
ALTER TABLE `sgm_cabezera` ADD `telefono` varchar(15) default NULL AFTER `mail`;
ALTER TABLE `sgm_cabezera` ADD `onombre` varchar(255) default NULL AFTER `telefono`;
ALTER TABLE `sgm_cabezera` ADD `onif` varchar(15) default NULL AFTER `onombre`;
ALTER TABLE `sgm_cabezera` ADD `odireccion` varchar(150) default NULL AFTER `onif`;
ALTER TABLE `sgm_cabezera` ADD `opoblacion` varchar(50) default NULL AFTER `odireccion`;
ALTER TABLE `sgm_cabezera` ADD `ocp` varchar(5) default NULL AFTER `opoblacion`;
ALTER TABLE `sgm_cabezera` ADD `oprovincia` varchar(15) default NULL AFTER `ocp`;
ALTER TABLE `sgm_cabezera` ADD `omail` varchar(50) default NULL AFTER `oprovincia`;
ALTER TABLE `sgm_cabezera` ADD `otelefono` varchar(15) default NULL AFTER `omail`;
ALTER TABLE `sgm_cabezera` ADD `enombre` varchar(255) NOT NULL default '' AFTER `otelefono`;
ALTER TABLE `sgm_cabezera` ADD `edireccion` varchar(150) NOT NULL default '' AFTER `enombre`;
ALTER TABLE `sgm_cabezera` ADD `epoblacion` varchar(150) NOT NULL default '' AFTER `edireccion`;
ALTER TABLE `sgm_cabezera` ADD `ecp` varchar(5) NOT NULL default '' AFTER `epoblacion`;
ALTER TABLE `sgm_cabezera` ADD `eprovincia` varchar(15) NOT NULL default '' AFTER `ecp`;
ALTER TABLE `sgm_cabezera` ADD `eid_pais` int(11) NOT NULL default '0' AFTER `eprovincia`;
ALTER TABLE `sgm_cabezera` ADD `notas` longtext AFTER `eid_pais`;
ALTER TABLE `sgm_cabezera` ADD `subtotal` decimal(11,3) NOT NULL default '0.000' AFTER `notas`;
ALTER TABLE `sgm_cabezera` ADD `descuento` decimal(11,3) NOT NULL default '0.000' AFTER `subtotal`;
ALTER TABLE `sgm_cabezera` ADD `descuento_absoluto` decimal(11,3) NOT NULL default '0.000' AFTER `descuento`;
ALTER TABLE `sgm_cabezera` ADD `subtotaldescuento` decimal(11,3) NOT NULL default '0.000' AFTER `descuento_absoluto`;
ALTER TABLE `sgm_cabezera` ADD `iva` decimal(11,3) NOT NULL default '16.000' AFTER `subtotaldescuento`;
ALTER TABLE `sgm_cabezera` ADD `total` decimal(11,3) NOT NULL default '0.000' AFTER `iva`;
ALTER TABLE `sgm_cabezera` ADD `total_forzado` TINYINT( 1 ) NOT NULL DEFAULT '0' AFTER `total` ;
ALTER TABLE `sgm_cabezera` ADD `id_cliente` int(5) NOT NULL default '0' AFTER `total_forzado`;
ALTER TABLE `sgm_cabezera` ADD `id_user` int(5) NOT NULL default '0' AFTER `id_cliente`;
ALTER TABLE `sgm_cabezera` ADD `recibos` tinyint(1) NOT NULL default '0' AFTER `id_user`;
ALTER TABLE `sgm_cabezera` ADD `cobrada` tinyint(1) NOT NULL default '0' AFTER `recibos`;
ALTER TABLE `sgm_cabezera` ADD `id_tipo_pago` int(11) NOT NULL default '0' AFTER `cobrada`;
ALTER TABLE `sgm_cabezera` ADD `file` varchar(50) NOT NULL default '' AFTER `id_tipo_pago`;
ALTER TABLE `sgm_cabezera` ADD `cerrada` tinyint(1) NOT NULL default '0' AFTER `file`;
ALTER TABLE `sgm_cabezera` ADD `controlcalidad` int(11) NOT NULL default '0' AFTER `cerrada`;
ALTER TABLE `sgm_cabezera` ADD `print` int(11) NOT NULL default '0' AFTER `controlcalidad`;
ALTER TABLE `sgm_cabezera` ADD `bultos` int(11) NOT NULL default '0' AFTER `print`;
ALTER TABLE `sgm_cabezera` ADD `peso` int(11) NOT NULL default '0' AFTER `bultos`;
ALTER TABLE `sgm_cabezera` ADD `nombre_contacto` varchar(20) default NULL AFTER `peso`;
ALTER TABLE `sgm_cabezera` ADD `confirmada` TINYINT( 1 ) NOT NULL DEFAULT '0' AFTER `nombre_contacto` ;
ALTER TABLE `sgm_cabezera` ADD `confirmada_cliente` TINYINT( 1 ) NOT NULL DEFAULT '0' AFTER `confirmada` ;
ALTER TABLE `sgm_cabezera` ADD `id_divisa` int(11) NOT NULL default '0' AFTER `confirmada_cliente`;
ALTER TABLE `sgm_cabezera` ADD `div_canvi` decimal(11,3) NOT NULL default '0.000' AFTER `id_divisa`;
ALTER TABLE `sgm_cabezera` ADD `imp_exp` TINYINT( 1 ) NOT NULL DEFAULT '0' AFTER `div_canvi` ;
ALTER TABLE `sgm_cabezera` ADD `trz` int(11) NOT NULL default '0' AFTER `imp_exp`;
ALTER TABLE `sgm_cabezera` ADD `cnombre` varchar(55) NOT NULL default '' AFTER `trz`;
ALTER TABLE `sgm_cabezera` ADD `ctelefono` varchar(55) NOT NULL default '' AFTER `cnombre`;
ALTER TABLE `sgm_cabezera` ADD `cmail` varchar(55) NOT NULL default '' AFTER `ctelefono`;
ALTER TABLE `sgm_cabezera` ADD `numero_rfq` varchar(55) NOT NULL default '' AFTER `cmail`;
ALTER TABLE `sgm_cabezera` ADD `cuenta` int(30) NOT NULL default '0' AFTER `numero_rfq`;
ALTER TABLE `sgm_cabezera` ADD `aprovado` tinyint(1) NOT NULL default '0' AFTER `cuenta`;
ALTER TABLE `sgm_cabezera` ADD `id_contrato` int(11) NOT NULL default '0' AFTER `aprovado`;
ALTER TABLE `sgm_cabezera` ADD `id_licencia` int(11) NOT NULL default '0' AFTER `id_contrato`;
ALTER TABLE `sgm_cabezera` ADD `id_pagador` int(11) NOT NULL default '0' AFTER `id_licencia`;
ALTER TABLE `sgm_cabezera` ADD `id_dades_origen_factura_iban` int(11) NOT NULL default '0' AFTER `id_pagador`;
ALTER TABLE `sgm_cabezera` ADD `fecha2` int(15) NOT NULL default '0' AFTER `numero_cliente`;
ALTER TABLE `sgm_cabezera` ADD `fecha_prevision2` int(15) NOT NULL default '0' AFTER `fecha2`;
ALTER TABLE `sgm_cabezera` ADD `fecha_entrega2` int(15) NOT NULL default '0' AFTER `fecha_prevision2`;
ALTER TABLE `sgm_cabezera` ADD `fecha_vencimiento2` int(15) NOT NULL default '0' AFTER `fecha_entrega2`;


CREATE TABLE `sim_factura` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_factura` ADD `id_origen` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_factura` ADD `id_user` int(5) NOT NULL default '0' AFTER `id_origen`;
ALTER TABLE `sim_factura` ADD `numero` int(11) NOT NULL default '0' AFTER `id_user`;
ALTER TABLE `sim_factura` ADD `versio` int(11) NOT NULL default '0' AFTER `numero`;
ALTER TABLE `sim_factura` ADD `numero_comanda_client` varchar(20) default NULL AFTER `versio`;
ALTER TABLE `sim_factura` ADD `data` date NOT NULL default '0000-00-00' AFTER `numero_comanda_client`;
ALTER TABLE `sim_factura` ADD `data_previsio` date NOT NULL default '0000-00-00' AFTER `data`;
ALTER TABLE `sim_factura` ADD `data_entrega` date NOT NULL default '0000-00-00' AFTER `data_previsio`;
ALTER TABLE `sim_factura` ADD `data_venciment` date NOT NULL default '0000-00-00' AFTER `data_entrega`;
ALTER TABLE `sim_factura` ADD `data_int` int(15) NOT NULL default '0' AFTER `data_venciment`;
ALTER TABLE `sim_factura` ADD `data_previsio_int` int(15) NOT NULL default '0' AFTER `data_int`;
ALTER TABLE `sim_factura` ADD `data_entrega_int` int(15) NOT NULL default '0' AFTER `data_previsio_int`;
ALTER TABLE `sim_factura` ADD `data_venciment_int` int(15) NOT NULL default '0' AFTER `data_entrega_int`;
ALTER TABLE `sim_factura` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `data_venciment_int`;
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
ALTER TABLE `sim_factura` ADD `id_contracte` int(11) NOT NULL default '0' AFTER `divisa_canvi`;
ALTER TABLE `sim_factura` ADD `id_llicencia` int(11) NOT NULL default '0' AFTER `id_contracte`;
ALTER TABLE `sim_factura` ADD `id_user_pagador` int(11) NOT NULL default '0' AFTER `id_llicencia`;
ALTER TABLE `sim_factura` ADD `id_dades_origen_factura_iban` int(11) NOT NULL default '0' AFTER `id_user_pagador`;
ALTER TABLE `sim_factura` ADD `subtotal` decimal(11,3) NOT NULL default '0.000' AFTER `id_dades_origen_factura_iban`;
ALTER TABLE `sim_factura` ADD `descompte` decimal(11,3) NOT NULL default '0.000' AFTER `subtotal`;
ALTER TABLE `sim_factura` ADD `descompte_absoluto` decimal(11,3) NOT NULL default '0.000' AFTER `descompte`;
ALTER TABLE `sim_factura` ADD `subtotal_descompte` decimal(11,3) NOT NULL default '0.000' AFTER `descompte_absoluto`;
ALTER TABLE `sim_factura` ADD `iva` decimal(11,3) NOT NULL default '16.000' AFTER `subtotal_descompte`;
ALTER TABLE `sim_factura` ADD `total` decimal(11,3) NOT NULL default '0.000' AFTER `iva`;
ALTER TABLE `sim_factura` ADD `total_forzat` TINYINT( 1 ) NOT NULL DEFAULT '0' AFTER `total` ;
ALTER TABLE `sim_factura` ADD `rebuts` tinyint(1) NOT NULL default '0' AFTER `total_forzat`;
ALTER TABLE `sim_factura` ADD `cobrada` tinyint(1) NOT NULL default '0' AFTER `rebuts`;
ALTER TABLE `sim_factura` ADD `tancada` tinyint(1) NOT NULL default '0' AFTER `cobrada`;


/*
CREATE TABLE `sgm_cabezeras_notas_prod` ( `id` int(11) NOT NULL auto_increment,  PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_cabezeras_notas_prod` ADD `notas` longtext AFTER `id`;
ALTER TABLE `sgm_cabezeras_notas_prod` ADD `fecha` date NOT NULL default '0000-00-00' AFTER `notas`;
ALTER TABLE `sgm_cabezeras_notas_prod` ADD `hora` time NOT NULL default '00:00' AFTER `fecha`;
ALTER TABLE `sgm_cabezeras_notas_prod` ADD `id_usuario` int(11) NOT NULL default '0' AFTER `hora` ;
ALTER TABLE `sgm_cabezeras_notas_prod` ADD `id_cabezera` int(11) NOT NULL default '0' AFTER `id_usuario` ;

CREATE TABLE `sgm_cabezeras_fases_recursos` ( `id` int(11) NOT NULL auto_increment,  PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_cabezeras_fases_recursos` ADD `id_fase` int(11) NOT NULL default '0' AFTER `id` ;
ALTER TABLE `sgm_cabezeras_fases_recursos` ADD `id_recurso` int(11) NOT NULL default '0' AFTER `id_fase` ;
ALTER TABLE `sgm_cabezeras_fases_recursos` ADD `id_cabezera` int(11) NOT NULL default '0' AFTER `id_recurso` ;
ALTER TABLE `sgm_cabezeras_fases_recursos` ADD `temps` int(11) NOT NULL default '0' AFTER `id_cabezera` ;
ALTER TABLE `sgm_cabezeras_fases_recursos` ADD `ordre` int(11) NOT NULL default '0' AFTER `temps` ;
ALTER TABLE `sgm_cabezeras_fases_recursos` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `ordre` ;
ALTER TABLE `sgm_cabezeras_fases_recursos` ADD `preu_fases` decimal(11,3) NOT NULL default '0.000' AFTER `visible`;
ALTER TABLE `sgm_cabezeras_fases_recursos` ADD `calc_temps` int(11) NOT NULL default '0' AFTER `preu_fases`;

CREATE TABLE `sgm_cabezeras_operaciones` ( `id` int(11) NOT NULL auto_increment,  PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_cabezeras_operaciones` ADD `id_operacion` int(11) NOT NULL default '0' AFTER `id` ;
ALTER TABLE `sgm_cabezeras_operaciones` ADD `id_fase_recurso` int(11) NOT NULL default '0' AFTER `id_operacion` ;
ALTER TABLE `sgm_cabezeras_operaciones` ADD `temps` int(11) NOT NULL default '0' AFTER `id_fase_recurso` ;
ALTER TABLE `sgm_cabezeras_operaciones` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `temps` ;
ALTER TABLE `sgm_cabezeras_operaciones` ADD `descripcio` varchar(255) NOT NULL default '' AFTER `visible`;
*/

CREATE TABLE `sgm_calendario` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_calendario` ADD `dia` int(11) NOT NULL default '0' AFTER `id` ;
ALTER TABLE `sgm_calendario` ADD `mes` int(11) NOT NULL default '0' AFTER `dia` ;
ALTER TABLE `sgm_calendario` ADD `descripcio` varchar(255) NOT NULL default '' AFTER `mes`;

CREATE TABLE `sim_calendari` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_calendari` ADD `dia` int(11) NOT NULL default '0' AFTER `id` ;
ALTER TABLE `sim_calendari` ADD `mes` int(11) NOT NULL default '0' AFTER `dia` ;
ALTER TABLE `sim_calendari` ADD `descripcio` varchar(255) NOT NULL default '' AFTER `mes`;

CREATE TABLE `sgm_calendario_horario` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_calendario_horario` ADD `dia` varchar(55) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_calendario_horario` ADD `hora_inicio` int(11) NOT NULL default '0' AFTER `dia` ;
ALTER TABLE `sgm_calendario_horario` ADD `hora_fin` int(11) NOT NULL default '0' AFTER `hora_inicio` ;
ALTER TABLE `sgm_calendario_horario` ADD `total_horas` int(11) NOT NULL default '0' AFTER `hora_fin` ;

CREATE TABLE `sim_calendari_horari` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_calendari_horari` ADD `dia` varchar(55) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_calendari_horari` ADD `hora_inici` int(11) NOT NULL default '0' AFTER `dia` ;
ALTER TABLE `sim_calendari_horari` ADD `hora_fi` int(11) NOT NULL default '0' AFTER `hora_inici` ;
ALTER TABLE `sim_calendari_horari` ADD `total_hores` int(11) NOT NULL default '0' AFTER `hora_fi` ;

CREATE TABLE `sgm_cartas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_cartas` ADD `asunto` varchar(255) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_cartas` ADD `cuerpo` longtext NOT NULL AFTER `asunto`;
ALTER TABLE `sgm_cartas` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `cuerpo`;
ALTER TABLE `sgm_cartas` ADD `carta` tinyint(1) NOT NULL default '1' AFTER `visible`;

CREATE TABLE `sgm_cartas_adjuntos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_cartas_adjuntos` ADD `id_carta` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_cartas_adjuntos` ADD `contenido` LONGBLOB NULL default '' AFTER `id_carta` ;
ALTER TABLE `sgm_cartas_adjuntos` ADD `tamany` INTEGER UNSIGNED NULL default '0' AFTER `contenido` ;
ALTER TABLE `sgm_cartas_adjuntos` ADD `tipo` VARCHAR(150) NULL default '' AFTER `tamany` ;
ALTER TABLE `sgm_cartas_adjuntos` ADD `nombre_archivo` VARCHAR(255) NULL default '' AFTER `tipo` ;
ALTER TABLE `sgm_cartas_adjuntos` ADD `id_user` int(11) NOT NULL default '0' AFTER `nombre_archivo`;

CREATE TABLE `sgm_cartas_enviadas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_cartas_enviadas` ADD `id_carta` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_cartas_enviadas` ADD `id_client` int(11) NOT NULL default '0' AFTER `id_carta`;
ALTER TABLE `sgm_cartas_enviadas` ADD `fecha` date NOT NULL default '0000-00-00' AFTER `id_client`;
ALTER TABLE `sgm_cartas_enviadas` ADD `id_user` int(11) NOT NULL default '0' AFTER `fecha`;
ALTER TABLE `sgm_cartas_enviadas` ADD `id_fact` int(11) NOT NULL default '0' AFTER `id_user`;

CREATE TABLE `sgm_cartas_firmas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_cartas_firmas` ADD `firma` longtext NOT NULL AFTER `id`;
ALTER TABLE `sgm_cartas_firmas` ADD `id_user` int(11) NOT NULL default '0' AFTER `firma`;

CREATE TABLE `sgm_cerques` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_cerques` ADD `nombre` varchar(20) default NULL AFTER `id`;
ALTER TABLE `sgm_cerques` ADD `lletres` varchar(30) default NULL AFTER `nombre`;
ALTER TABLE `sgm_cerques` ADD `id_tipo` varchar(50) NOT NULL default '' AFTER `lletres` ;
ALTER TABLE `sgm_cerques` ADD `id_grupo` varchar(50) NOT NULL default '' AFTER `id_tipo`;
ALTER TABLE `sgm_cerques` ADD `id_sector` varchar(50) NOT NULL default '' AFTER `id_grupo` ;
ALTER TABLE `sgm_cerques` ADD `id_ubicacion` varchar(50) NOT NULL default '' AFTER `id_sector`;
ALTER TABLE `sgm_cerques` ADD `id_classificacio` varchar(50) NOT NULL default '' AFTER `id_ubicacion`;
ALTER TABLE `sgm_cerques` ADD `id_servicio` varchar(50) NOT NULL default '' AFTER `id_classificacio`;
ALTER TABLE `sgm_cerques` ADD `id_sestado` varchar(50) NOT NULL default '' AFTER `id_servicio` ;
ALTER TABLE `sgm_cerques` ADD `id_proveedor` varchar(50) NOT NULL default '' AFTER `id_sestado`;
ALTER TABLE `sgm_cerques` ADD `id_certificado` varchar(50) NOT NULL default '' AFTER `id_proveedor` ;
ALTER TABLE `sgm_cerques` ADD `id_cestado` varchar(50) NOT NULL default '' AFTER `id_certificado`;
ALTER TABLE `sgm_cerques` ADD `contactes` tinyint(1) NOT NULL default '0' AFTER `id_cestado`;
ALTER TABLE `sgm_cerques` ADD `likenombre` varchar(20) default NULL AFTER `contactes`;
ALTER TABLE `sgm_cerques` ADD `incidencies` tinyint(1) NOT NULL default '0' AFTER `likenombre`;
ALTER TABLE `sgm_cerques` ADD `desde` date NOT NULL default '0000-00-00' AFTER `incidencies`;
ALTER TABLE `sgm_cerques` ADD `hasta` date NOT NULL default '0000-00-00' AFTER `desde`;
ALTER TABLE `sgm_cerques` ADD `id_user` int(11) NOT NULL default '0' AFTER `hasta`;
ALTER TABLE `sgm_cerques` ADD `id_client` int(11) NOT NULL default '0' AFTER `id_user`;

CREATE TABLE `sgm_clients` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients` ADD `id_origen` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_clients` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_origen`;
ALTER TABLE `sgm_clients` ADD `nombre` varchar(255) NOT NULL default '' AFTER `visible`;
ALTER TABLE `sgm_clients` ADD `nif` varchar(15) NOT NULL default '' AFTER `nombre`;
ALTER TABLE `sgm_clients` ADD `cvia` char(2) NOT NULL default '' AFTER `nif`;
ALTER TABLE `sgm_clients` ADD `direccion` varchar(50) NOT NULL default '' AFTER `cvia`;
ALTER TABLE `sgm_clients` ADD `poblacion` varchar(50) NOT NULL default '' AFTER `direccion`;
ALTER TABLE `sgm_clients` ADD `cp` varchar(5) NOT NULL default '' AFTER `poblacion`;
ALTER TABLE `sgm_clients` ADD `cpoblacion` int(11) NOT NULL default '0' AFTER `cp`;
ALTER TABLE `sgm_clients` ADD `cprovincia` int(11) NOT NULL default '0' AFTER `cpoblacion`;
ALTER TABLE `sgm_clients` ADD `cautonomia` int(11) NOT NULL default '0' AFTER `cprovincia`;
ALTER TABLE `sgm_clients` ADD `cpais` int(11) NOT NULL default '0' AFTER `cautonomia`;
ALTER TABLE `sgm_clients` ADD `provincia` varchar(15) NOT NULL default '' AFTER `cpais`;
ALTER TABLE `sgm_clients` ADD `mail` varchar(50) NOT NULL default '' AFTER `provincia`;
ALTER TABLE `sgm_clients` ADD `telefono` varchar(15) NOT NULL default '' AFTER `mail`;
ALTER TABLE `sgm_clients` ADD `fax` varchar(15) NOT NULL default '' AFTER `telefono`;
ALTER TABLE `sgm_clients` ADD `notas` longtext AFTER `fax`;
ALTER TABLE `sgm_clients` ADD `web` varchar(150) default NULL AFTER `notas`;
ALTER TABLE `sgm_clients` ADD `client` tinyint(1) NOT NULL default '0' AFTER `web`;
ALTER TABLE `sgm_clients` ADD `clienttipus` tinyint(1) NOT NULL default '0' AFTER `client`;
ALTER TABLE `sgm_clients` ADD `clientvip` tinyint(1) NOT NULL default '0' AFTER `clienttipus`;
ALTER TABLE `sgm_clients` ADD `cuentabancaria` varchar(30) default NULL AFTER `clientvip`;
ALTER TABLE `sgm_clients` ADD `entidadbancaria` varchar(100) NOT NULL default '' AFTER `cuentabancaria`;
ALTER TABLE `sgm_clients` ADD `domiciliobancario` varchar(255) NOT NULL default '' AFTER `entidadbancaria`;
ALTER TABLE `sgm_clients` ADD `dias_vencimiento` int(11) NOT NULL default '0' AFTER `domiciliobancario`;
ALTER TABLE `sgm_clients` ADD `dias` tinyint(1) NOT NULL default '1' AFTER `dias_vencimiento`;
ALTER TABLE `sgm_clients` ADD `cuentacontable` varchar(20) NOT NULL default '' AFTER `dias`;
ALTER TABLE `sgm_clients` ADD `formas_pago` varchar(15) NOT NULL default '' AFTER `cuentacontable`;
ALTER TABLE `sgm_clients` ADD `sector` int(11) NOT NULL default '0' AFTER `formas_pago`;
ALTER TABLE `sgm_clients` ADD `id_trato` int(11) NOT NULL default '0' AFTER `sector`;
ALTER TABLE `sgm_clients` ADD `propaganda` tinyint(1) NOT NULL default '0' AFTER `id_trato`;
ALTER TABLE `sgm_clients` ADD `notas_comerciales` longtext AFTER `propaganda`;
ALTER TABLE `sgm_clients` ADD `id_tipo` int(11) NOT NULL default '0' AFTER `notas_comerciales`;
ALTER TABLE `sgm_clients` ADD `id_direccion_envio` int(11) NOT NULL default '0' AFTER `id_tipo`;
ALTER TABLE `sgm_clients` ADD `onweb` tinyint(1) NOT NULL default '0' AFTER `id_direccion_envio`;
ALTER TABLE `sgm_clients` ADD `logo` varchar(255) NOT NULL default '' AFTER `onweb`;
ALTER TABLE `sgm_clients` ADD `id_ubicacion` int(11) NOT NULL default '0' AFTER `logo`;
ALTER TABLE `sgm_clients` ADD `id_grupo` int(11) NOT NULL default '0' AFTER `id_ubicacion`;
ALTER TABLE `sgm_clients` ADD `general` tinyint(1) NOT NULL default '0' AFTER `id_grupo`;
ALTER TABLE `sgm_clients` ADD `servicio` tinyint(1) NOT NULL default '0' AFTER `general`;
ALTER TABLE `sgm_clients` ADD `coste_ekl` decimal(11,3) NOT NULL default '0.000' AFTER `servicio`;
ALTER TABLE `sgm_clients` ADD `coste_em3` decimal(11,3) NOT NULL default '0.000' AFTER `coste_ekl`;
ALTER TABLE `sgm_clients` ADD `coste_miledia` decimal(11,3) NOT NULL default '0.000' AFTER `coste_em3`;
ALTER TABLE `sgm_clients` ADD `telefono2` varchar(15) NOT NULL default '' AFTER `coste_miledia`;
ALTER TABLE `sgm_clients` ADD `fax2` varchar(15) NOT NULL default '' AFTER `telefono2`;
ALTER TABLE `sgm_clients` ADD `dades_adicionals` longtext AFTER `fax2`;
ALTER TABLE `sgm_clients` ADD `text_lliure` longtext AFTER `dades_adicionals`;
ALTER TABLE `sgm_clients` ADD `num_treballadors` int(11) NOT NULL default '0' AFTER `text_lliure`;
ALTER TABLE `sgm_clients` ADD `id_agrupacio` int(11) NOT NULL default '0' AFTER `num_treballadors`;
ALTER TABLE `sgm_clients` ADD `id_pais` int(11) NOT NULL default '0' AFTER `id_agrupacio`;
ALTER TABLE `sgm_clients` ADD `id_idioma` int(11) NOT NULL default '0' AFTER `id_pais`;
ALTER TABLE `sgm_clients` ADD `cognom1` varchar(55) NOT NULL default '' AFTER `id_idioma`;
ALTER TABLE `sgm_clients` ADD `cognom2` varchar(55) NOT NULL default '' AFTER `cognom1`;
ALTER TABLE `sgm_clients` ADD `codcliente` varchar(11) NOT NULL default '' AFTER `cognom2`;
ALTER TABLE `sgm_clients` ADD `fecha_contrac` date NOT NULL default '0000-00-00' AFTER `codcliente`;
ALTER TABLE `sgm_clients` ADD `id_tipo_carrer` int(11) NOT NULL default '0' AFTER `fecha_contrac`;
ALTER TABLE `sgm_clients` ADD `id_carrer` int(11) NOT NULL default '0' AFTER `id_tipo_carrer`;
ALTER TABLE `sgm_clients` ADD `numero` varchar(11) NOT NULL default '0' AFTER `id_carrer`;
ALTER TABLE `sgm_clients` ADD `id_sector_zf` int(11) NOT NULL default '0' AFTER `numero`;
ALTER TABLE `sgm_clients` ADD `alias` varchar(11) NOT NULL default '' AFTER `id_sector_zf`;
ALTER TABLE `sgm_clients` ADD `tipo_identificador` tinyint(1) NOT NULL default '1' AFTER `alias`;
/*tipo_identificador: 1 nif; 2 VAT; 3 extrangero; 4 sin numero*/
ALTER TABLE `sgm_clients` ADD `tipo_persona` tinyint(1) NOT NULL default '0' AFTER `tipo_identificador`;
/*tipo_persona: 0 juridica; 1 física*/
ALTER TABLE `sgm_clients` ADD `tipo_residencia` int(11) NOT NULL default '0' AFTER `tipo_persona`;
/*tipo_residencia: 0 residente; 1 residente UE; 2 extrangero*/
/*DIR3 per factura electronica*/
ALTER TABLE `sgm_clients` ADD `dir3_oficina_contable` varchar(15) NOT NULL default '' AFTER `tipo_persona`;
ALTER TABLE `sgm_clients` ADD `dir3_organo_gestor` varchar(15) NOT NULL default '' AFTER `dir3_oficina_contable`;
ALTER TABLE `sgm_clients` ADD `dir3_unidad_tramitadora` varchar(15) NOT NULL default '' AFTER `dir3_organo_gestor`;

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
ALTER TABLE `sim_clients` ADD `id_origen` int(11) NOT NULL default '0' AFTER `alias`;
ALTER TABLE `sim_clients` ADD `id_agrupacio` int(11) NOT NULL default '0' AFTER `id_origen`;
ALTER TABLE `sim_clients` ADD `id_tipus` int(11) NOT NULL default '0' AFTER `id_agrupacio`;
ALTER TABLE `sim_clients` ADD `id_grup` int(11) NOT NULL default '0' AFTER `id_tipus`;
ALTER TABLE `sim_clients` ADD `id_sector` int(11) NOT NULL default '0' AFTER `id_grup`;
ALTER TABLE `sim_clients` ADD `id_ubicacio` int(11) NOT NULL default '0' AFTER `id_sector`;
ALTER TABLE `sim_clients` ADD `iban` varchar(24) default NULL AFTER `id_ubicacio`;/*codi internacional de compte bancari*/
ALTER TABLE `sim_clients` ADD `bic_swift` varchar(11) NOT NULL default '' AFTER `iban`;/*codi identificador del banc*/
ALTER TABLE `sim_clients` ADD `dies_venciment` int(11) NOT NULL default '0' AFTER `bic_swift`;/*Numero de dies pel venciment de la factura*/
ALTER TABLE `sim_clients` ADD `dia_venciment` int(11) NOT NULL default '0' AFTER `dies_venciment`;/*Dia del mes pel venciment de la factura*/

CREATE TABLE `sgm_clients_bases_dades` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_bases_dades` ADD `id_client` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_clients_bases_dades` ADD `base` varchar(50) NOT NULL default '' AFTER `id_client`;
ALTER TABLE `sgm_clients_bases_dades` ADD `ip` varchar(50) NOT NULL default '' AFTER `base`;
ALTER TABLE `sgm_clients_bases_dades` ADD `usuario` varchar(50) NOT NULL default '' AFTER `ip`;
ALTER TABLE `sgm_clients_bases_dades` ADD `pass` varchar(50) NOT NULL default '' AFTER `usuario`;
ALTER TABLE `sgm_clients_bases_dades` ADD `descripcion` varchar(255) NOT NULL default '' AFTER `pass`;
ALTER TABLE `sgm_clients_bases_dades` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcion`;

/*
CREATE TABLE `sgm_clients_carrer` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_carrer` ADD `nombre` varchar(30) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_clients_carrer` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `nombre`;

CREATE TABLE `sgm_clients_carrer_tipo` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_carrer_tipo` ADD `nombre` varchar(30) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_clients_carrer_tipo` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `nombre`;

CREATE TABLE `sgm_clients_camps_dades_adicionals` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_camps_dades_adicionals` ADD `nom_camp` varchar(255) NOT NULL default '' AFTER `id`;
*/

CREATE TABLE `sgm_clients_contactos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_contactos` ADD `id_client` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_clients_contactos` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_client`;
/*ALTER TABLE `sgm_clients_contactos` ADD `interlocutor` varchar(255) NOT NULL default '' AFTER `visible`;*/
ALTER TABLE `sgm_clients_contactos` ADD `notas` longtext AFTER `interlocutor`;
ALTER TABLE `sgm_clients_contactos` ADD `nombre` varchar(255) NOT NULL default '' AFTER `notas`;
ALTER TABLE `sgm_clients_contactos` ADD `carrec` varchar(255) NOT NULL default '' AFTER `nombre`;
ALTER TABLE `sgm_clients_contactos` ADD `departament` varchar(255) NOT NULL default '' AFTER `carrec`;
ALTER TABLE `sgm_clients_contactos` ADD `telefono` varchar(15) NOT NULL default '' AFTER `departament`;
ALTER TABLE `sgm_clients_contactos` ADD `fax` varchar(15) NOT NULL default '' AFTER `telefono`;
ALTER TABLE `sgm_clients_contactos` ADD `mail` varchar(50) NOT NULL default '' AFTER `fax`;
ALTER TABLE `sgm_clients_contactos` ADD `movil` varchar(15) NOT NULL default '' AFTER `mail`;
/*ALTER TABLE `sgm_clients_contactos` ADD `secretari` varchar(255) NOT NULL default '' AFTER `movil`;*/
ALTER TABLE `sgm_clients_contactos` ADD `id_trato` int(11) NOT NULL default '0' AFTER `secretari`;
ALTER TABLE `sgm_clients_contactos` ADD `id_idioma` int(11) NOT NULL default '0' AFTER `id_trato`;
ALTER TABLE `sgm_clients_contactos` ADD `pred` tinyint(1) NOT NULL default '0' AFTER `id_idioma`;
ALTER TABLE `sgm_clients_contactos` ADD `apellido1` varchar(255) NOT NULL default '' AFTER `pred`;
ALTER TABLE `sgm_clients_contactos` ADD `apellido2` varchar(255) NOT NULL default '' AFTER `apellido1`;

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
ALTER TABLE `sim_clients_contactes` ADD `notas` longtext AFTER `predeterminat`;

CREATE TABLE `sgm_clients_classificacio_tipus` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_classificacio_tipus` ADD `id_origen` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_clients_classificacio_tipus` ADD `nom` varchar(255) NOT NULL default '' AFTER `id_origen`;
ALTER TABLE `sgm_clients_classificacio_tipus` ADD `color` varchar(12) NOT NULL default '' AFTER `nom`;
ALTER TABLE `sgm_clients_classificacio_tipus` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `color`;
ALTER TABLE `sgm_clients_classificacio_tipus` ADD `color_lletra` varchar(12) NOT NULL default '' AFTER `visible`;

CREATE TABLE `sim_clients_classificacio_tipus` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_clients_classificacio_tipus` ADD `id_origen` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_clients_classificacio_tipus` ADD `nom` varchar(255) NOT NULL default '' AFTER `id_origen`;
ALTER TABLE `sim_clients_classificacio_tipus` ADD `color` varchar(12) NOT NULL default '' AFTER `nom`;
ALTER TABLE `sim_clients_classificacio_tipus` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `color`;
ALTER TABLE `sim_clients_classificacio_tipus` ADD `color_lletra` varchar(12) NOT NULL default '' AFTER `visible`;

CREATE TABLE `sgm_clients_classificacio` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_classificacio` ADD `id_client` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_clients_classificacio` ADD `id_clasificacio_tipus` int(11) NOT NULL default '0' AFTER `id_client`;
ALTER TABLE `sgm_clients_classificacio` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_clasificacio_tipus`;
ALTER TABLE `sgm_clients_classificacio` ADD `predeterminado` tinyint(1) NOT NULL default '0' AFTER `visible`;

CREATE TABLE `sim_clients_classificacio` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_clients_classificacio` ADD `id_client` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_clients_classificacio` ADD `id_clasificacio_tipus` int(11) NOT NULL default '0' AFTER `id_client`;
ALTER TABLE `sim_clients_classificacio` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_clasificacio_tipus`;
ALTER TABLE `sim_clients_classificacio` ADD `predeterminat` tinyint(1) NOT NULL default '0' AFTER `visible`;

CREATE TABLE `sgm_clients_classificacio_neg` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_classificacio_neg` ADD `id_clasificacio_tipus` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_clients_classificacio_neg` ADD `id_clasificacio_tipus_neg` int(11) NOT NULL default '0' AFTER `id_clasificacio_tipus`;
ALTER TABLE `sgm_clients_classificacio_neg` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_clasificacio_tipus_neg`;

CREATE TABLE `sim_clients_classificacio_neg` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_clients_classificacio_neg` ADD `id_clasificacio_tipus` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_clients_classificacio_neg` ADD `id_clasificacio_tipus_neg` int(11) NOT NULL default '0' AFTER `id_clasificacio_tipus`;
ALTER TABLE `sim_clients_classificacio_neg` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_clasificacio_tipus_neg`;

/*
CREATE TABLE `sgm_clients_certificaciones` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_certificaciones` ADD `nombre` varchar(30) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_clients_certificaciones` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `nombre`;

CREATE TABLE `sgm_clients_certificaciones_docu` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_certificaciones_docu` ADD `id_certificado` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_clients_certificaciones_docu` ADD `docu` varchar(30) NOT NULL default '' AFTER `id_certificado`;
ALTER TABLE `sgm_clients_certificaciones_docu` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `docu`;

CREATE TABLE `sgm_clients_certificaciones_docu_client` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_certificaciones_docu_client` ADD `id_certificado` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_clients_certificaciones_docu_client` ADD `id_docu` int(11) NOT NULL default '0' AFTER `id_certificado`;
ALTER TABLE `sgm_clients_certificaciones_docu_client` ADD `id_cliente` int(11) NOT NULL default '0' AFTER `id_docu`;
ALTER TABLE `sgm_clients_certificaciones_docu_client` ADD `id_estado` int(11) NOT NULL default '0' AFTER `id_cliente`;
ALTER TABLE `sgm_clients_certificaciones_docu_client` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_estado`;

CREATE TABLE `sgm_clients_certificaciones_estados` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_certificaciones_estados` ADD `nombre` varchar(30) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_clients_certificaciones_estados` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `nombre`;

CREATE TABLE `sgm_clients_certificaciones_cliente` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_certificaciones_cliente` ADD `id_cliente` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_clients_certificaciones_cliente` ADD `id_certificado` int(11) NOT NULL default '0' AFTER `id_cliente`;
ALTER TABLE `sgm_clients_certificaciones_cliente` ADD `id_estado` int(11) NOT NULL default '0' AFTER `id_certificado`;

CREATE TABLE `sgm_clients_dades_adicionals` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_dades_adicionals` ADD `id_client` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_clients_dades_adicionals` ADD `id_camp` int(11) NOT NULL default '0' AFTER `id_client`;
ALTER TABLE `sgm_clients_dades_adicionals` ADD `existe` tinyint(1) NOT NULL default '0' AFTER `id_camp`;
ALTER TABLE `sgm_clients_dades_adicionals` ADD `observacions` longtext AFTER `existe`;
*/

CREATE TABLE `sgm_clients_dias_facturacion` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_dias_facturacion` ADD `dia` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_clients_dias_facturacion` ADD `id_cliente` int(11) NOT NULL default '0' AFTER `dia`;

CREATE TABLE `sgm_clients_dias_recibos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_dias_recibos` ADD `dia` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_clients_dias_recibos` ADD `id_cliente` int(11) NOT NULL default '0' AFTER `dia`;

/*
CREATE TABLE `sgm_clients_envios` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_envios` ADD `id_client` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_clients_envios` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_client`;
ALTER TABLE `sgm_clients_envios` ADD `nombre` varchar(255) NOT NULL default '' AFTER `visible`;
ALTER TABLE `sgm_clients_envios` ADD `direccion` varchar(50) NOT NULL default '' AFTER `nombre`;
ALTER TABLE `sgm_clients_envios` ADD `poblacion` varchar(50) NOT NULL default '' AFTER `direccion`;
ALTER TABLE `sgm_clients_envios` ADD `cp` varchar(5) NOT NULL default '' AFTER `poblacion`;
ALTER TABLE `sgm_clients_envios` ADD `provincia` varchar(15) NOT NULL default '' AFTER `cp`;
ALTER TABLE `sgm_clients_envios` ADD `id_pais` int(11) NOT NULL default '0' AFTER `provincia` ;
ALTER TABLE `sgm_clients_envios` ADD `predefinido` tinyint(1) NOT NULL default '0' AFTER `id_pais`;

CREATE TABLE `sgm_clients_grupos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_grupos` ADD `grupo` varchar(30) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_clients_grupos` ADD `predeterminado` tinyint(1) NOT NULL default '0' AFTER `grupo`;

CREATE TABLE `sgm_clients_material` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_material` ADD `id_cliente` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_clients_material` ADD `id_material` int(11) NOT NULL default '0' AFTER `id_cliente`;
ALTER TABLE `sgm_clients_material` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_material`;

CREATE TABLE `sgm_clients_sectors` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_sectors` ADD `sector` varchar(30) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_clients_sectors` ADD `predeterminado` tinyint(1) NOT NULL default '0' AFTER `sector`;

CREATE TABLE `sgm_clients_sector_zf` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_sector_zf` ADD `nombre` varchar(30) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_clients_sector_zf` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `nombre`;

CREATE TABLE `sgm_clients_instalacions` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_instalacions` ADD `id_client` int(11) NOT NULL AFTER `id`;
ALTER TABLE `sgm_clients_instalacions` ADD `instalacion` int(11) NOT NULL AFTER `id_client`;
ALTER TABLE `sgm_clients_instalacions` ADD `descripcion` varchar(255) NOT NULL default '' AFTER `instalacion`;
ALTER TABLE `sgm_clients_instalacions` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcion`;
ALTER TABLE `sgm_clients_instalacions` ADD `id_app` int(11) NOT NULL AFTER `visible`;
ALTER TABLE `sgm_clients_instalacions` ADD `frecuencia` int(11) NOT NULL AFTER `id_app`;

CREATE TABLE `sgm_clients_instalacions_aplicacions` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_instalacions_aplicacions` ADD `nombre` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_clients_instalacions_aplicacions` ADD `descripcion` varchar(255) NOT NULL default '' AFTER `nombre`;
ALTER TABLE `sgm_clients_instalacions_aplicacions` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcion`;

CREATE TABLE `sgm_clients_instalacions_errors` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_instalacions_errors` ADD `nombre` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_clients_instalacions_errors` ADD `descripcion` varchar(255) NOT NULL default '' AFTER `nombre`;
ALTER TABLE `sgm_clients_instalacions_errors` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcion`;
ALTER TABLE `sgm_clients_instalacions_errors` ADD `valor_defecto` int(11) NOT NULL AFTER `visible`;
ALTER TABLE `sgm_clients_instalacions_errors` ADD `tipo` tinyint(1) NOT NULL default '0' AFTER `valor_defecto`;

CREATE TABLE `sgm_clients_instalacions_app_rel_errors` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_instalacions_app_rel_errors` ADD `id_app` int(11) NOT NULL AFTER `id`;
ALTER TABLE `sgm_clients_instalacions_app_rel_errors` ADD `id_error` int(11) NOT NULL AFTER `id_app`;
*/

CREATE TABLE `sgm_clients_servidors_alertes` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_servidors_alertes` ADD `id_servidor` int(11) NOT NULL AFTER `id`;
ALTER TABLE `sgm_clients_servidors_alertes` ADD `fecha_caida` int(11) NOT NULL AFTER `id_servidor`;
ALTER TABLE `sgm_clients_servidors_alertes` ADD `fecha_subida` int(11) AFTER `fecha_caida`;
ALTER TABLE `sgm_clients_servidors_alertes` ADD `tiempo` int(11) NOT NULL default '0' AFTER `fecha_subida`;
ALTER TABLE `sgm_clients_servidors_alertes` ADD `id_error` int(11) NOT NULL AFTER `tiempo`;

/*
CREATE TABLE `sgm_clients_servidors_indice` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_servidors_indice` ADD `id_servidor` int(11) NOT NULL AFTER `id`;
ALTER TABLE `sgm_clients_servidors_indice` ADD `indice` int(11) NOT NULL AFTER `id_servidor`;
*/

CREATE TABLE `sgm_clients_servidors_param` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_servidors_param` ADD `cpu` int(11) NOT NULL AFTER `id`;
ALTER TABLE `sgm_clients_servidors_param` ADD `mem` int(11) NOT NULL AFTER `cpu`;
ALTER TABLE `sgm_clients_servidors_param` ADD `memswap` int(11) NOT NULL AFTER `mem`;
ALTER TABLE `sgm_clients_servidors_param` ADD `hd` int(11) NOT NULL AFTER `memswap`;

/*
CREATE TABLE `sgm_clients_tipos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_tipos` ADD `tipo` varchar(30) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_clients_tipos` ADD `predeterminado` tinyint(1) NOT NULL default '0' AFTER `tipo`;

CREATE TABLE `sgm_clients_tipo_cliente` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_tipo_cliente` ADD `tipo_cliente` varchar(60) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_clients_tipo_cliente` ADD `predeterminado` tinyint(1) NOT NULL default '0' AFTER `tipo_cliente`;

CREATE TABLE `sgm_clients_tipo_proveedor` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_tipo_proveedor` ADD `tipo_proveedor` varchar(60) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_clients_tipo_proveedor` ADD `predeterminado` tinyint(1) NOT NULL default '0' AFTER `tipo_proveedor`;

CREATE TABLE `sgm_clients_tipo_impacto` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_tipo_impacto` ADD `tipo_impacto` varchar(60) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_clients_tipo_impacto` ADD `predeterminado` tinyint(1) NOT NULL default '0' AFTER `tipo_impacto`;
*/

CREATE TABLE `sgm_clients_tratos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_tratos` ADD `trato` varchar(30) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_clients_tratos` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `trato`;
INSERT INTO `sgm_clients_tratos` VALUES (1, 'Sr.',1);
INSERT INTO `sgm_clients_tratos` VALUES (2, 'Sra.',1);
INSERT INTO `sgm_clients_tratos` VALUES (3, 'Mr.',1);
INSERT INTO `sgm_clients_tratos` VALUES (4, 'Ms.',1);
INSERT INTO `sgm_clients_tratos` VALUES (5, 'M.',1);
INSERT INTO `sgm_clients_tratos` VALUES (6, 'Mme.',1);
INSERT INTO `sgm_clients_tratos` VALUES (7, 'Mlle',1);
INSERT INTO `sgm_clients_tratos` VALUES (8, 'Hr.',1);
INSERT INTO `sgm_clients_tratos` VALUES (9, 'Fr.',1);
INSERT INTO `sgm_clients_tratos` VALUES (10, 'Illo.',1);
INSERT INTO `sgm_clients_tratos` VALUES (11, 'Illa.',1);
ALTER TABLE `sgm_clients_tratos` ADD `predeterminado` tinyint(1) NOT NULL default '0' AFTER `visible`;

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

CREATE TABLE `sgm_comercial_oferta` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_comercial_oferta` ADD `id_client` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_comercial_oferta` ADD `id_client_final` int(11) NOT NULL default '0' AFTER `id_client`;
ALTER TABLE `sgm_comercial_oferta` ADD `numero` int(11) NOT NULL default '0' AFTER `id_client_final`;
ALTER TABLE `sgm_comercial_oferta` ADD `versio` int(11) NOT NULL default '0' AFTER `numero`;
ALTER TABLE `sgm_comercial_oferta` ADD `data` date NOT NULL default '0000-00-00' AFTER `versio`;
ALTER TABLE `sgm_comercial_oferta` ADD `num_host` int(11) NOT NULL default '0' AFTER `data`;
ALTER TABLE `sgm_comercial_oferta` ADD `pvp_total` int(11) NOT NULL default '0' AFTER `num_host`;
ALTER TABLE `sgm_comercial_oferta` ADD `id_idioma` int(11) NOT NULL default '0' AFTER `pvp_total`;
ALTER TABLE `sgm_comercial_oferta` ADD `descripcio` varchar(255) NOT NULL default '' AFTER `id_idioma`;
ALTER TABLE `sgm_comercial_oferta` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcio`;

CREATE TABLE `sgm_comercial_oferta_contingut` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_comercial_oferta_contingut` ADD `id_comercial_oferta` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_comercial_oferta_contingut` ADD `id_comercial_contingut` int(11) NOT NULL default '0' AFTER `id_comercial_oferta`;
ALTER TABLE `sgm_comercial_oferta_contingut` ADD `ordre` varchar(10) NOT NULL default '' AFTER `id_comercial_contingut`;

CREATE TABLE `sgm_comercial_contingut` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_comercial_contingut` ADD `id_comercial_contingut` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_comercial_contingut` ADD `titol` varchar(100) NOT NULL default '' AFTER `id_comercial_contingut`;
ALTER TABLE `sgm_comercial_contingut` ADD `contingut` longtext AFTER `titol`;
ALTER TABLE `sgm_comercial_contingut` ADD `contingut_estes` longtext AFTER `contingut`;
ALTER TABLE `sgm_comercial_contingut` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `contingut_estes`;
ALTER TABLE `sgm_comercial_contingut` ADD `id_idioma` int(11) NOT NULL default '0' AFTER `visible`;
ALTER TABLE `sgm_comercial_contingut` ADD `obligatori` int(11) NOT NULL default '0' AFTER `id_idioma`;
ALTER TABLE `sgm_comercial_contingut` ADD `id_servicio` int(11) NOT NULL default '0' AFTER `obligatori`;

CREATE TABLE `sgm_comercial_oferta_valors` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_comercial_oferta_valors` ADD `id_comercial_oferta` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_comercial_oferta_valors` ADD `id_comercial_camps` int(11) NOT NULL default '0' AFTER `id_comercial_oferta`;
ALTER TABLE `sgm_comercial_oferta_valors` ADD `id_comercial_camps_valor` int(11) NOT NULL default '0' AFTER `id_comercial_camps`;

CREATE TABLE `sgm_comercial_oferta_camps` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_comercial_oferta_camps` ADD `id_article` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_comercial_oferta_camps` ADD `camp` varchar(100) NOT NULL default '' AFTER `id_article`;
ALTER TABLE `sgm_comercial_oferta_camps` ADD `obligatori` tinyint(1) NOT NULL default '1' AFTER `camp`;
ALTER TABLE `sgm_comercial_oferta_camps` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `obligatori`;
ALTER TABLE `sgm_comercial_oferta_camps` ADD `id_idioma` tinyint(1) NOT NULL default '1' AFTER `visible`;

CREATE TABLE `sgm_comercial_oferta_camps_valors` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_comercial_oferta_camps_valors` ADD `id_comercial_oferta_camps` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_comercial_oferta_camps_valors` ADD `valor_camp` varchar(100) NOT NULL default '' AFTER `id_comercial_oferta_camps`;
ALTER TABLE `sgm_comercial_oferta_camps_valors` ADD `id_idioma` tinyint(1) NOT NULL default '1' AFTER `valor_camp`;
ALTER TABLE `sgm_comercial_oferta_camps_valors` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_idioma`;

CREATE TABLE `sgm_comercial_articles_grups` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_comercial_articles_grups` ADD `id_grup` int(11) NOT NULL default '0' AFTER `id`;

/*
CREATE TABLE `sgm_clients_ubicacion` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_clients_ubicacion` ADD `ubicacion` varchar(60) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_clients_ubicacion` ADD `predeterminado` tinyint(1) NOT NULL default '0' AFTER `ubicacion`;

CREATE TABLE `sgm_comercial_visitas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_comercial_visitas` ADD `id_origen` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_comercial_visitas` ADD `id_client` int(11) NOT NULL default '0' AFTER `id_origen`;
ALTER TABLE `sgm_comercial_visitas` ADD `id_user` int(11) NOT NULL default '0' AFTER `id_client`;
ALTER TABLE `sgm_comercial_visitas` ADD `id_visita_tipo` int(11) NOT NULL default '0' AFTER `id_user`;
ALTER TABLE `sgm_comercial_visitas` ADD `fecha` date NOT NULL default '0000-00-00' AFTER `id_visita_tipo`;
ALTER TABLE `sgm_comercial_visitas` ADD `hora` time NOT NULL default '00:00' AFTER `fecha`;
ALTER TABLE `sgm_comercial_visitas` ADD `motivo` longtext AFTER `hora`;
ALTER TABLE `sgm_comercial_visitas` ADD `conclusion` longtext AFTER `motivo`;
ALTER TABLE `sgm_comercial_visitas` ADD `id_lugar_visita` int(11) NOT NULL default '0' AFTER `conclusion`;
ALTER TABLE `sgm_comercial_visitas` ADD `lugar_visita` longtext AFTER `id_lugar_visita`;

CREATE TABLE `sgm_comercial_visitas_tipo` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_comercial_visitas_tipo` ADD `tipo_visita` varchar(70) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_comercial_visitas_tipo` ADD `descripcion` longtext AFTER `tipo_visita`;
ALTER TABLE `sgm_comercial_visitas_tipo` ADD `protocolo` longtext AFTER `descripcion`;

CREATE TABLE `sgm_compte_plan` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_compte_plan` ADD `id_origen` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_compte_plan` ADD `codigo` varchar(15) NOT NULL default '' AFTER `id_origen`;
ALTER TABLE `sgm_compte_plan` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `codigo`;
ALTER TABLE `sgm_compte_plan` ADD `nombre` varchar(255) NOT NULL default '' AFTER `visible`;
ALTER TABLE `sgm_compte_plan` ADD `activo` tinyint(1) NOT NULL default '1' AFTER `nombre`;

CREATE TABLE `sgm_compte_entradas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_compte_entradas` ADD `num_factura` varchar(50) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_compte_entradas` ADD `fecha_fact` date NOT NULL default '0000-00-00' AFTER `num_factura`;
ALTER TABLE `sgm_compte_entradas` ADD `fecha_reg` date NOT NULL default '0000-00-00' AFTER `fecha_fact`;
ALTER TABLE `sgm_compte_entradas` ADD `base_imponible` decimal(11,2) NOT NULL default '0.00' AFTER `fecha_reg`;
ALTER TABLE `sgm_compte_entradas` ADD `iva` decimal(11,2) NOT NULL default '0.00' AFTER `base_imponible`;
ALTER TABLE `sgm_compte_entradas` ADD `total` decimal(11,2) NOT NULL default '0.00' AFTER `iva`;
ALTER TABLE `sgm_compte_entradas` ADD `id_proveedor` int(11) NOT NULL default '0' AFTER `total`;
ALTER TABLE `sgm_compte_entradas` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_proveedor`;
ALTER TABLE `sgm_compte_entradas` ADD `anulacion` tinyint(1) NOT NULL default '0' AFTER `visible`;
ALTER TABLE `sgm_compte_entradas` ADD `notas` longtext AFTER `anulacion`;
*/

CREATE TABLE `sgm_contratos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_contratos` ADD `id_contrato_tipo` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_contratos` ADD `id_cliente` int(11) NOT NULL default '0' AFTER `id_contrato_tipo`;
ALTER TABLE `sgm_contratos` ADD `id_cliente_final` int(11) NOT NULL default '0' AFTER `id_cliente`;
ALTER TABLE `sgm_contratos` ADD `num_contrato` int(11) NOT NULL default '0' AFTER `id_cliente_final`;
ALTER TABLE `sgm_contratos` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `num_contrato`;
ALTER TABLE `sgm_contratos` ADD `fecha_ini` date NOT NULL default '0000-00-00' AFTER `visible`;
ALTER TABLE `sgm_contratos` ADD `fecha_fin` date NOT NULL default '0000-00-00' AFTER `fecha_ini`;
ALTER TABLE `sgm_contratos` ADD `activo` tinyint(1) NOT NULL default '1' AFTER `fecha_fin`;
ALTER TABLE `sgm_contratos` ADD `descripcion` longtext AFTER `activo`;
ALTER TABLE `sgm_contratos` ADD `id_responsable` int(11) NOT NULL default '0' AFTER `descripcion`;
ALTER TABLE `sgm_contratos` ADD `id_tecnico` int(11) NOT NULL default '0' AFTER `id_responsable`;
ALTER TABLE `sgm_contratos` ADD `renovado` tinyint(1) NOT NULL default '0' AFTER `id_tecnico`;

CREATE TABLE `sim_contractes` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_contractes` ADD `id_contracte_tipus` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_contractes` ADD `id_cliente` int(11) NOT NULL default '0' AFTER `id_contracte_tipus`;
ALTER TABLE `sim_contractes` ADD `id_cliente_final` int(11) NOT NULL default '0' AFTER `id_cliente`;
ALTER TABLE `sim_contractes` ADD `num_contracte` int(11) NOT NULL default '0' AFTER `id_cliente_final`;
ALTER TABLE `sim_contractes` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `num_contracte`;
ALTER TABLE `sim_contractes` ADD `data_inici` date NOT NULL default '0000-00-00' AFTER `visible`;
ALTER TABLE `sim_contractes` ADD `data_fi` date NOT NULL default '0000-00-00' AFTER `data_inici`;
ALTER TABLE `sim_contractes` ADD `actiu` tinyint(1) NOT NULL default '1' AFTER `data_fi`;
ALTER TABLE `sim_contractes` ADD `descripcio` longtext AFTER `actiu`;
ALTER TABLE `sim_contractes` ADD `id_responsable` int(11) NOT NULL default '0' AFTER `descripcio`;
ALTER TABLE `sim_contractes` ADD `id_tecnic` int(11) NOT NULL default '0' AFTER `id_responsable`;
ALTER TABLE `sim_contractes` ADD `renovat` tinyint(1) NOT NULL default '0' AFTER `id_tecnic`;

-- fuera de uso --
/*
CREATE TABLE `sgm_contratos_cliente_incidencia` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_contratos_cliente_incidencia` ADD `id_contrato_cliente` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_contratos_cliente_incidencia` ADD `id_contrato_incidencia` int(11) NOT NULL default '0' AFTER `id_contrato_cliente`;
ALTER TABLE `sgm_contratos_cliente_incidencia` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_contrato_incidencia`;

CREATE TABLE `sgm_contratos_incidencias` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_contratos_incidencias` ADD `nombre` varchar(255) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_contratos_incidencias` ADD `descripcion` longtext AFTER `nombre`;
ALTER TABLE `sgm_contratos_incidencias` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcion`;
ALTER TABLE `sgm_contratos_incidencias` ADD `id_contrato` int(11) NOT NULL default '0' AFTER `visible`;
ALTER TABLE `sgm_contratos_incidencias` ADD `dias` int(11) NOT NULL default '0' AFTER `id_contrato`;
ALTER TABLE `sgm_contratos_incidencias` ADD `id_tipo` int(11) NOT NULL default '0' AFTER `dias`;

CREATE TABLE `sgm_contratos_incidencias_tipo` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_contratos_incidencias_tipo` ADD `tipo` varchar(255) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_contratos_incidencias_tipo` ADD `descripcion` longtext AFTER `tipo`;
ALTER TABLE `sgm_contratos_incidencias_tipo` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcion`;
*/

CREATE TABLE `sgm_contratos_cobertura` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_contratos_cobertura` ADD `nombre` varchar(55) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_contratos_cobertura` ADD `descripcion` longtext AFTER `nombre`;
ALTER TABLE `sgm_contratos_cobertura` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcion`;

CREATE TABLE `sim_contractes_cobertura` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_contractes_cobertura` ADD `nom_cobertura` varchar(55) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_contractes_cobertura` ADD `descripcio` longtext AFTER `nom_cobertura`;
ALTER TABLE `sim_contractes_cobertura` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcio`;

CREATE TABLE `sgm_contratos_facturas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_contratos_facturas` ADD `fecha` date NOT NULL default '0000-00-00' AFTER `id`;
ALTER TABLE `sgm_contratos_facturas` ADD `concepto` varchar(255) NOT NULL default '' AFTER `fecha`;
ALTER TABLE `sgm_contratos_facturas` ADD `cantidad` decimal(11,2) NOT NULL default '0.00' AFTER `concepto`;

/*
CREATE TABLE `sgm_contratos_rel_servicios` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_contratos_rel_servicios` ADD `id_contrato` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_contratos_rel_servicios` ADD `id_servicio` int(11) NOT NULL default '0' AFTER `id_contrato`;
ALTER TABLE `sgm_contratos_rel_servicios` ADD `id_cobertura` int(11) NOT NULL default '0' AFTER `servicio`;
ALTER TABLE `sgm_contratos_rel_servicios` ADD `temps_resposta` int(11) NOT NULL default '0' AFTER `id_cobertura`;
ALTER TABLE `sgm_contratos_rel_servicios` ADD `nbd` tinyint(1) NOT NULL default '1' AFTER `temps_resposta`;
ALTER TABLE `sgm_contratos_rel_servicios` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `nbd`;
ALTER TABLE `sgm_contratos_rel_servicios` ADD `extranet` tinyint(1) NOT NULL default '1' AFTER `visible`;
ALTER TABLE `sgm_contratos_rel_servicios` ADD `incidencias` tinyint(1) NOT NULL default '1' AFTER `extranet`;
ALTER TABLE `sgm_contratos_rel_servicios` ADD `sla` int(11) NOT NULL default '0' AFTER `incidencias`;
ALTER TABLE `sgm_contratos_rel_servicios` ADD `obligatorio` tinyint(1) NOT NULL default '1' AFTER `sla`;

CREATE TABLE `sgm_contratos_servicios` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_contratos_servicios` ADD `nombre` varchar(255) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_contratos_servicios` ADD `descripcion` longtext AFTER `nombre`;
ALTER TABLE `sgm_contratos_servicios` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcion`;
*/

CREATE TABLE `sgm_contratos_tipos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_contratos_tipos` ADD `nombre` varchar(255) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_contratos_tipos` ADD `descripcion` longtext AFTER `nombre`;
ALTER TABLE `sgm_contratos_tipos` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcion`;

CREATE TABLE `sim_contractes_tipus` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_contractes_tipus` ADD `nom` varchar(255) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_contractes_tipus` ADD `descripcio` longtext AFTER `nom`;
ALTER TABLE `sim_contractes_tipus` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcio`;

CREATE TABLE `sgm_contratos_servicio` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_contratos_servicio` ADD `id_contrato` int(11) NOT NULL default '0' AFTER `id`;
--ALTER TABLE `sgm_contratos_servicio` ADD `id_servicio` int(11) NOT NULL default '0' AFTER `id_contrato`;
ALTER TABLE `sgm_contratos_servicio` ADD `servicio` varchar(55) NOT NULL default '' AFTER `id_servicio`;
ALTER TABLE `sgm_contratos_servicio` ADD `id_cobertura` int(11) NOT NULL default '0' AFTER `servicio`;
ALTER TABLE `sgm_contratos_servicio` ADD `temps_resposta` int(11) NOT NULL default '0' AFTER `id_cobertura`;
ALTER TABLE `sgm_contratos_servicio` ADD `nbd` tinyint(1) NOT NULL default '1' AFTER `temps_resposta`;
ALTER TABLE `sgm_contratos_servicio` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `nbd`;
ALTER TABLE `sgm_contratos_servicio` ADD `extranet` tinyint(1) NOT NULL default '1' AFTER `visible`;
ALTER TABLE `sgm_contratos_servicio` ADD `obligatorio` tinyint(1) NOT NULL default '1' AFTER `extranet`;
ALTER TABLE `sgm_contratos_servicio` ADD `incidencias` tinyint(1) NOT NULL default '1' AFTER `obligatorio`;
ALTER TABLE `sgm_contratos_servicio` ADD `sla` int(11) NOT NULL default '0' AFTER `incidencias`;
ALTER TABLE `sgm_contratos_servicio` ADD `duracion` int(11) NOT NULL default '0' AFTER `sla`;
ALTER TABLE `sgm_contratos_servicio` ADD `precio_hora` int(11) NOT NULL default '0' AFTER `duracion`;
INSERT INTO `sgm_contratos_servicio` VALUES (-1,0,'Instal&middot;laci&oacute; de Plataforma',0,0,0,1,0,0,0,0,0,0);
INSERT INTO `sgm_contratos_servicio` VALUES (-2,0,'Manteniment  Plataforma',0,0,0,1,0,0,0,0,0,0);
INSERT INTO `sgm_contratos_servicio` VALUES (-3,0,'Monitoritzaci&oacute; Plataforma',1,0,0,1,1,0,0,0,0,0);
INSERT INTO `sgm_contratos_servicio` VALUES (-4,0,'Gesti&oacute; d&#39;Incid&egrave;ncies',1,4,0,1,1,0,1,95,0,0);
INSERT INTO `sgm_contratos_servicio` VALUES (-5,0,'Gesti&oacute; de Canvis',2,8,1,1,1,0,1,95,0,0);
INSERT INTO `sgm_contratos_servicio` VALUES (-6,0,'Gesti&oacute; d&#39;Alertes',1,4,0,1,1,0,0,95,0,0);
INSERT INTO `sgm_contratos_servicio` VALUES (-7,0,'Auditoria de servei i plataforma',2,8,1,1,1,0,1,95,0,0);
INSERT INTO `sgm_contratos_servicio` VALUES (-8,0,'Servei de Consultoria',2,0,0,1,1,0,1,0,0,0);
INSERT INTO `sgm_contratos_servicio` VALUES (-9,0,'Servei de Formaci&oacute;',2,8,1,1,1,0,1,95,0,0);
INSERT INTO `sgm_contratos_servicio` VALUES (-10,0,'Servei de Backups',2,8,1,1,1,0,1,95,0,0);
INSERT INTO `sgm_contratos_servicio` VALUES (-11,0,'Gesti&oacute; Comercial',2,8,1,1,1,1,1,95,0,0);
INSERT INTO `sgm_contratos_servicio` VALUES (-12,0,'Gesti&oacute; Administrativa',2,8,1,1,1,1,1,95,0,0);

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

CREATE TABLE `sgm_contrasenyes` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_contrasenyes` ADD `id_client` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_contrasenyes` ADD `id_aplicacion` int(11) NOT NULL default '0' AFTER `id_client`;
ALTER TABLE `sgm_contrasenyes` ADD `acceso` varchar(50) NOT NULL default '' AFTER `id_aplicacion`;
ALTER TABLE `sgm_contrasenyes` ADD `usuario` varchar(50) NOT NULL default '' AFTER `acceso`;
ALTER TABLE `sgm_contrasenyes` ADD `pass` varchar(50) NOT NULL default '' AFTER `usuario`;
ALTER TABLE `sgm_contrasenyes` ADD `descripcion` varchar(255) NOT NULL default '' AFTER `pass`;
ALTER TABLE `sgm_contrasenyes` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcion`;
ALTER TABLE `sgm_contrasenyes` ADD `id_contrato` int(11) NOT NULL default '0' AFTER `visible`;

CREATE TABLE `sim_contrasenyes` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_contrasenyes` ADD `id_client` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_contrasenyes` ADD `id_aplicacio` int(11) NOT NULL default '0' AFTER `id_client`;
ALTER TABLE `sim_contrasenyes` ADD `acces` varchar(50) NOT NULL default '' AFTER `id_aplicacio`;
ALTER TABLE `sim_contrasenyes` ADD `usuari` varchar(50) NOT NULL default '' AFTER `acces`;
ALTER TABLE `sim_contrasenyes` ADD `pass` varchar(50) NOT NULL default '' AFTER `usuari`;
ALTER TABLE `sim_contrasenyes` ADD `descripcio` varchar(255) NOT NULL default '' AFTER `pass`;
ALTER TABLE `sim_contrasenyes` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcio`;
ALTER TABLE `sim_contrasenyes` ADD `id_contracte` int(11) NOT NULL default '0' AFTER `visible`;

CREATE TABLE `sgm_contrasenyes_apliciones` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_contrasenyes_apliciones` ADD `aplicacion` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_contrasenyes_apliciones` ADD `descripcion` varchar(255) NOT NULL default '' AFTER `aplicacion`;
ALTER TABLE `sgm_contrasenyes_apliciones` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcion`;

CREATE TABLE `sim_contrasenyes_aplicacions` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_contrasenyes_aplicacions` ADD `aplicacio` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_contrasenyes_aplicacions` ADD `descripcio` varchar(255) NOT NULL default '' AFTER `aplicacio`;
ALTER TABLE `sim_contrasenyes_aplicacions` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcio`;

CREATE TABLE `sgm_contrasenyes_lopd` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_contrasenyes_lopd` ADD `id_contrasenya` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_contrasenyes_lopd` ADD `id_usuario` int(11) NOT NULL default '0' AFTER `id_contrasenya`;
ALTER TABLE `sgm_contrasenyes_lopd` ADD `fecha` int(11) NOT NULL default '0' AFTER `id_usuario`;
ALTER TABLE `sgm_contrasenyes_lopd` ADD `accion` int(11) NOT NULL default '0' AFTER `fecha`;

CREATE TABLE `sim_contrasenyes_lopd` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_contrasenyes_lopd` ADD `id_contrasenya` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_contrasenyes_lopd` ADD `id_user` int(11) NOT NULL default '0' AFTER `id_contrasenya`;
ALTER TABLE `sim_contrasenyes_lopd` ADD `data` int(11) NOT NULL default '0' AFTER `id_user`;
ALTER TABLE `sim_contrasenyes_lopd` ADD `accio` int(11) NOT NULL default '0' AFTER `data`;

/*
CREATE TABLE `sgm_control_calidad` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_control_calidad` ADD `id_cabezera` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_control_calidad` ADD `id_cuerpo` int(11) NOT NULL default '0' AFTER `id_cabezera`;
ALTER TABLE `sgm_control_calidad` ADD `id_cliente` int(11) NOT NULL default '0' AFTER `id_cuerpo`;
ALTER TABLE `sgm_control_calidad` ADD `fecha` date NOT NULL default '0000-00-00' AFTER `id_cliente`;
ALTER TABLE `sgm_control_calidad` ADD `fecha_prevision` date NOT NULL default '0000-00-00' AFTER `fecha`;
ALTER TABLE `sgm_control_calidad` ADD `fecha_llegada` date NOT NULL default '0000-00-00' AFTER `fecha_prevision`;
ALTER TABLE `sgm_control_calidad` ADD `embalage` decimal(11,2) NOT NULL default '0.00' AFTER `fecha_llegada`;
ALTER TABLE `sgm_control_calidad` ADD `material` decimal(11,2) NOT NULL default '0.00' AFTER `embalage`;
ALTER TABLE `sgm_control_calidad` ADD `medidas` decimal(11,2) NOT NULL default '0.00' AFTER `material`;
ALTER TABLE `sgm_control_calidad` ADD `acabados` decimal(11,2) NOT NULL default '0.00' AFTER `medidas`;
ALTER TABLE `sgm_control_calidad` ADD `cantidad` decimal(11,2) NOT NULL default '0.00' AFTER `acabados`;
ALTER TABLE `sgm_control_calidad` ADD `puntos_fechas` decimal(11,2) NOT NULL default '0.00' AFTER `cantidad`;
ALTER TABLE `sgm_control_calidad` ADD `total` decimal(11,2) NOT NULL default '0.00' AFTER `puntos_fechas`;
ALTER TABLE `sgm_control_calidad` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `total`;
ALTER TABLE `sgm_control_calidad` ADD `manual` tinyint(1) NOT NULL default '1' AFTER `visible`;
ALTER TABLE `sgm_control_calidad` ADD `id_user` int(11) NOT NULL default '0' AFTER `manual`;
*/

/*
CREATE TABLE `sgm_correos_cuentas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_correos_cuentas` ADD `dominio` varchar(100) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_correos_cuentas` ADD `correo` varchar(100) NOT NULL default '' AFTER `dominio`;
ALTER TABLE `sgm_correos_cuentas` ADD `clave` varchar(100) NOT NULL default '' AFTER `correo`;
ALTER TABLE `sgm_correos_cuentas` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `clave`;
*/

CREATE TABLE `sgm_cuerpo` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_cuerpo` ADD `id_origen` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_cuerpo` ADD `linea` int(11) NOT NULL default '0' AFTER `id_origen`;
ALTER TABLE `sgm_cuerpo` ADD `id_cuerpo` int(11) NOT NULL default '0' AFTER `linea`;
ALTER TABLE `sgm_cuerpo` ADD `idfactura` int(11) NOT NULL default '0' AFTER `id_cuerpo`;
ALTER TABLE `sgm_cuerpo` ADD `id_estado` int(11) NOT NULL default '0' AFTER `idfactura`;
ALTER TABLE `sgm_cuerpo` ADD `fecha_prevision` date NOT NULL default '0000-00-00' AFTER `id_estado`;
ALTER TABLE `sgm_cuerpo` ADD `fecha_entrega` date NOT NULL default '0000-00-00' AFTER `fecha_prevision`;
ALTER TABLE `sgm_cuerpo` ADD `facturado` tinyint(1) NOT NULL default '0' AFTER `fecha_entrega`;
ALTER TABLE `sgm_cuerpo` ADD `id_facturado` int(11) NOT NULL default '0' AFTER `facturado`;
ALTER TABLE `sgm_cuerpo` ADD `codigo` varchar(20) NOT NULL default '' AFTER `id_facturado`;
ALTER TABLE `sgm_cuerpo` ADD `nombre` varchar(70) NOT NULL default '' AFTER `codigo`;
ALTER TABLE `sgm_cuerpo` ADD `pvd` decimal(11,3) NOT NULL default '0.000' AFTER `nombre`;
ALTER TABLE `sgm_cuerpo` ADD `pvp` decimal(11,3) NOT NULL default '0.000' AFTER `pvd`;
ALTER TABLE `sgm_cuerpo` ADD `unidades` decimal(11,3) NOT NULL default '0.000' AFTER `pvp`;
ALTER TABLE `sgm_cuerpo` ADD `descuento` decimal(11,3) NOT NULL default '0.000' AFTER `unidades`;
ALTER TABLE `sgm_cuerpo` ADD `descuento_absoluto` decimal(11,3) NOT NULL default '0.000' AFTER `descuento`;
ALTER TABLE `sgm_cuerpo` ADD `subtotaldescuento` decimal(11,3) NOT NULL default '0.000' AFTER `descuento_absoluto`;
ALTER TABLE `sgm_cuerpo` ADD `total` decimal(11,3) NOT NULL default '0.000' AFTER `subtotaldescuento`;
ALTER TABLE `sgm_cuerpo` ADD `notes` longtext AFTER `total`;
ALTER TABLE `sgm_cuerpo` ADD `bloqueado` tinyint(1) NOT NULL default '0' AFTER `notes`;
ALTER TABLE `sgm_cuerpo` ADD `id_article` int(11) NOT NULL default '0' AFTER `bloqueado`;
ALTER TABLE `sgm_cuerpo` ADD `stock` tinyint(1) NOT NULL default '0' AFTER `id_article`;
ALTER TABLE `sgm_cuerpo` ADD `prioridad` int(11) NOT NULL default '0' AFTER `stock`;
ALTER TABLE `sgm_cuerpo` ADD `controlcalidad` int(11) NOT NULL default '0' AFTER `prioridad`;
ALTER TABLE `sgm_cuerpo` ADD `id_tarifa` int(11) NOT NULL default '0' AFTER `controlcalidad` ;
ALTER TABLE `sgm_cuerpo` ADD `tarifa` decimal(11,3) NOT NULL default '0.000' AFTER `id_tarifa`;
ALTER TABLE `sgm_cuerpo` ADD `trz` int(11) NOT NULL default '0' AFTER `tarifa`;
ALTER TABLE `sgm_cuerpo` ADD `id_almacen` int(11) NOT NULL default '0' AFTER `trz`;
ALTER TABLE `sgm_cuerpo` ADD `vigente` tinyint(1) NOT NULL default '0' AFTER `id_almacen`;
ALTER TABLE `sgm_cuerpo` ADD `suma` tinyint(1) NOT NULL default '0' AFTER `vigente`;
ALTER TABLE `sgm_cuerpo` ADD `aprovat` tinyint(1) NOT NULL default '0' AFTER `suma`;
ALTER TABLE `sgm_cuerpo` ADD `fecha_prevision_propia` date NOT NULL default '0000-00-00' AFTER `aprovat`;
ALTER TABLE `sgm_cuerpo` ADD `fecha_prevision2` int(15) NOT NULL default '0' AFTER `id_estado`;
ALTER TABLE `sgm_cuerpo` ADD `fecha_entrega2` int(15) NOT NULL default '0' AFTER `fecha_prevision2`;
ALTER TABLE `sgm_cuerpo` ADD `fecha_prevision_propia2` int(15) NOT NULL default '0' AFTER `fecha_entrega2`;

CREATE TABLE `sim_factura_linia` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_factura_linia` ADD `id_factura` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_factura_linia` ADD `num_linea` int(11) NOT NULL default '0' AFTER `id_factura`;
ALTER TABLE `sim_factura_linia` ADD `data_previsio` date NOT NULL default '0000-00-00' AFTER `num_linea`;
ALTER TABLE `sim_factura_linia` ADD `data_prevision2` int(15) NOT NULL default '0' AFTER `data_previsio`;
ALTER TABLE `sim_factura_linia` ADD `codi` varchar(20) NOT NULL default '' AFTER `data_prevision2`;
ALTER TABLE `sim_factura_linia` ADD `nom` varchar(70) NOT NULL default '' AFTER `codi`;
ALTER TABLE `sim_factura_linia` ADD `pvd` decimal(11,3) NOT NULL default '0.000' AFTER `nom`;
ALTER TABLE `sim_factura_linia` ADD `pvp` decimal(11,3) NOT NULL default '0.000' AFTER `pvd`;
ALTER TABLE `sim_factura_linia` ADD `unitats` decimal(11,3) NOT NULL default '0.000' AFTER `pvp`;
ALTER TABLE `sim_factura_linia` ADD `descompte` decimal(11,3) NOT NULL default '0.000' AFTER `unitats`;
ALTER TABLE `sim_factura_linia` ADD `total` decimal(11,3) NOT NULL default '0.000' AFTER `descompte`;
ALTER TABLE `sim_factura_linia` ADD `id_article` int(11) NOT NULL default '0' AFTER `total`;

/*
CREATE TABLE `sgm_cuerpo_archivos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_cuerpo_archivos` ADD `id_cuerpo` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_cuerpo_archivos` ADD `id_tipo` int(11) NOT NULL default '0' AFTER `id_cuerpo`;
ALTER TABLE `sgm_cuerpo_archivos` ADD `name` varchar(100) NOT NULL default '' AFTER `id_tipo`;
ALTER TABLE `sgm_cuerpo_archivos` ADD `type` varchar(20) NOT NULL default '' AFTER `name`;
ALTER TABLE `sgm_cuerpo_archivos` ADD `size` int(11) NOT NULL default '0' AFTER `type`;

CREATE TABLE `sgm_cuerpo_archivos_tipos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_cuerpo_archivos_tipos` ADD `nombre` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_cuerpo_archivos_tipos` ADD `limite_kb` int(11) NOT NULL default '0' AFTER `nombre`;
  
CREATE TABLE `sgm_cuerpo_estados` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_cuerpo_estados` ADD `estado` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_cuerpo_estados` ADD `color` varchar(7) NOT NULL default '' AFTER `estado`;
ALTER TABLE `sgm_cuerpo_estados` ADD `externo` tinyint(1) NOT NULL default '0' AFTER `color`;
ALTER TABLE `sgm_cuerpo_estados` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `externo`;
  
CREATE TABLE `sgm_cuerpo_estados_historico` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_cuerpo_estados_historico` ADD `id_cuerpo` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_cuerpo_estados_historico` ADD `id_estado` int(11) NOT NULL default '0' AFTER `id_cuerpo`;
ALTER TABLE `sgm_cuerpo_estados_historico` ADD `fecha` date NOT NULL default '0000-00-00' AFTER `id_estado`;
ALTER TABLE `sgm_cuerpo_estados_historico` ADD `hora` time NOT NULL default '00:00:00' AFTER `fecha`;

CREATE TABLE `sgm_cuerpo_incidencias` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_cuerpo_incidencias` ADD `id_cuerpo` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_cuerpo_incidencias` ADD `id_proceso` int(11) NOT NULL default '0' AFTER `id_cuerpo`;
ALTER TABLE `sgm_cuerpo_incidencias` ADD `fecha` date NOT NULL default '0000-00-00' AFTER `id_proceso`;
ALTER TABLE `sgm_cuerpo_incidencias` ADD `hora` time NOT NULL default '00:00:00' AFTER `fecha`;
ALTER TABLE `sgm_cuerpo_incidencias` ADD `problema` longtext  AFTER `hora`;
ALTER TABLE `sgm_cuerpo_incidencias` ADD `causa` longtext  AFTER `problema`;
ALTER TABLE `sgm_cuerpo_incidencias` ADD `solucion` longtext  AFTER `causa`;
ALTER TABLE `sgm_cuerpo_incidencias` ADD `accion_correctiva` longtext AFTER `solucion`;
ALTER TABLE `sgm_cuerpo_incidencias` ADD `fecha_prevision` date NOT NULL default '0000-00-00' AFTER `accion_correctiva`;
ALTER TABLE `sgm_cuerpo_incidencias` ADD `cerrada` tinyint(1) NOT NULL default '0' AFTER `fecha_prevision`;
ALTER TABLE `sgm_cuerpo_incidencias` ADD `fecha_cierre` date NOT NULL default '0000-00-00' AFTER `cerrada`;

CREATE TABLE `sgm_cuerpo_orden_seguimiento` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `id_cuerpo` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `serra_autocontrol_1` varchar(10) NOT NULL default '' AFTER `id_cuerpo`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `serra_autocontrol_2` varchar(10) NOT NULL default '' AFTER `serra_autocontrol_1`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `serra_autocontrol_3` varchar(10) NOT NULL default '' AFTER `serra_autocontrol_2`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `serra_autocontrol_4` varchar(10) NOT NULL default '' AFTER `serra_autocontrol_3`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `serra_verificacion_1` varchar(10) NOT NULL default '' AFTER `serra_autocontrol_4`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `serra_horas_1` decimal(11,2) NOT NULL default '0.00' AFTER `serra_verificacion_1`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `serra_horas_2` decimal(11,2) NOT NULL default '0.00' AFTER `serra_horas_1`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `serra_horas_3` decimal(11,2) NOT NULL default '0.00' AFTER `serra_horas_2`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `serra_horas_4` decimal(11,2) NOT NULL default '0.00' AFTER `serra_horas_3`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cnc_autocontrol_1` varchar(10) NOT NULL default '' AFTER `serra_horas_4`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cnc_autocontrol_2` varchar(10) NOT NULL default '' AFTER `cnc_autocontrol_1`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cnc_autocontrol_3` varchar(10) NOT NULL default '' AFTER `cnc_autocontrol_2`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cnc_autocontrol_4` varchar(10) NOT NULL default '' AFTER `cnc_autocontrol_3`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cnc_verificacion_1` varchar(10) NOT NULL default '' AFTER `cnc_autocontrol_4`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cnc_horas_1` decimal(11,2) NOT NULL default '0.00' AFTER `cnc_verificacion_1`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cnc_horas_2` decimal(11,2) NOT NULL default '0.00' AFTER `cnc_horas_1`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cnc_horas_3` decimal(11,2) NOT NULL default '0.00' AFTER `cnc_horas_2`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cnc_horas_4` decimal(11,2) NOT NULL default '0.00' AFTER `cnc_horas_3`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `tnc_autocontrol_1` varchar(10) NOT NULL default '' AFTER `cnc_horas_4`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `tnc_autocontrol_2` varchar(10) NOT NULL default '' AFTER `tnc_autocontrol_1`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `tnc_autocontrol_3` varchar(10) NOT NULL default '' AFTER `tnc_autocontrol_2`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `tnc_autocontrol_4` varchar(10) NOT NULL default '' AFTER `tnc_autocontrol_3`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `tnc_verificacion_1` varchar(10) NOT NULL default '' AFTER `tnc_autocontrol_4`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `tnc_horas_1` decimal(11,2) NOT NULL default '0.00' AFTER `tnc_verificacion_1`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `tnc_horas_2` decimal(11,2) NOT NULL default '0.00' AFTER `tnc_horas_1`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `tnc_horas_3` decimal(11,2) NOT NULL default '0.00' AFTER `tnc_horas_2`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `tnc_horas_4` decimal(11,2) NOT NULL default '0.00' AFTER `tnc_horas_3`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `torn_autocontrol_1` varchar(10) NOT NULL default '' AFTER `tnc_horas_4`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `torn_autocontrol_2` varchar(10) NOT NULL default '' AFTER `torn_autocontrol_1`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `torn_autocontrol_3` varchar(10) NOT NULL default '' AFTER `torn_autocontrol_2`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `torn_autocontrol_4` varchar(10) NOT NULL default '' AFTER `torn_autocontrol_3`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `torn_verificacion_1` varchar(10) NOT NULL default '' AFTER `torn_autocontrol_4`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `torn_horas_1` decimal(11,2) NOT NULL default '0.00' AFTER `torn_verificacion_1`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `torn_horas_2` decimal(11,2) NOT NULL default '0.00' AFTER `torn_horas_1`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `torn_horas_3` decimal(11,2) NOT NULL default '0.00' AFTER `torn_horas_2`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `torn_horas_4` decimal(11,2) NOT NULL default '0.00' AFTER `torn_horas_3`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `fresa_autocontrol_1` varchar(10) NOT NULL default '' AFTER `torn_horas_4`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `fresa_autocontrol_2` varchar(10) NOT NULL default '' AFTER `fresa_autocontrol_1`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `fresa_autocontrol_3` varchar(10) NOT NULL default '' AFTER `fresa_autocontrol_2`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `fresa_autocontrol_4` varchar(10) NOT NULL default '' AFTER `fresa_autocontrol_3`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `fresa_verificacion_1` varchar(10) NOT NULL default '' AFTER `fresa_autocontrol_4`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `fresa_horas_1` decimal(11,2) NOT NULL default '0.00' AFTER `fresa_verificacion_1`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `fresa_horas_2` decimal(11,2) NOT NULL default '0.00' AFTER `fresa_horas_1`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `fresa_horas_3` decimal(11,2) NOT NULL default '0.00' AFTER `fresa_horas_2`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `fresa_horas_4` decimal(11,2) NOT NULL default '0.00' AFTER `fresa_horas_3`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `ajust_autocontrol_1` varchar(10) NOT NULL default '' AFTER `fresa_horas_4`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `ajust_autocontrol_2` varchar(10) NOT NULL default '' AFTER `ajust_autocontrol_1`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `ajust_autocontrol_3` varchar(10) NOT NULL default '' AFTER `ajust_autocontrol_2`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `ajust_autocontrol_4` varchar(10) NOT NULL default '' AFTER `ajust_autocontrol_3`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `ajust_verificacion_1` varchar(10) NOT NULL default '' AFTER `ajust_autocontrol_4`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `ajust_horas_1` decimal(11,2) NOT NULL default '0.00' AFTER `ajust_verificacion_1`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `ajust_horas_2` decimal(11,2) NOT NULL default '0.00' AFTER `ajust_horas_1`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `ajust_horas_3` decimal(11,2) NOT NULL default '0.00' AFTER `ajust_horas_2`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `ajust_horas_4` decimal(11,2) NOT NULL default '0.00' AFTER `ajust_horas_3`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `soldadura_autocontrol_1` varchar(10) NOT NULL default '' AFTER `ajust_horas_4`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `soldadura_autocontrol_2` varchar(10) NOT NULL default '' AFTER `soldadura_autocontrol_1`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `soldadura_autocontrol_3` varchar(10) NOT NULL default '' AFTER `soldadura_autocontrol_2`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `soldadura_autocontrol_4` varchar(10) NOT NULL default '' AFTER `soldadura_autocontrol_3`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `soldadura_verificacion_1` varchar(10) NOT NULL default '' AFTER `soldadura_autocontrol_4`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `soldadura_horas_1` decimal(11,2) NOT NULL default '0.00' AFTER `soldadura_verificacion_1`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `soldadura_horas_2` decimal(11,2) NOT NULL default '0.00' AFTER `soldadura_horas_1`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `soldadura_horas_3` decimal(11,2) NOT NULL default '0.00' AFTER `soldadura_horas_2`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `soldadura_horas_4` decimal(11,2) NOT NULL default '0.00' AFTER `soldadura_horas_3`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `rectificat_autocontrol_1` varchar(10) NOT NULL default '' AFTER `soldadura_horas_4`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `rectificat_autocontrol_2` varchar(10) NOT NULL default '' AFTER `rectificat_autocontrol_1`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `rectificat_autocontrol_3` varchar(10) NOT NULL default '' AFTER `rectificat_autocontrol_2`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `rectificat_autocontrol_4` varchar(10) NOT NULL default '' AFTER `rectificat_autocontrol_3`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `rectificat_verificacion_1` varchar(10) NOT NULL default '' AFTER `rectificat_autocontrol_4`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `rectificat_horas_1` decimal(11,2) NOT NULL default '0.00' AFTER `rectificat_verificacion_1`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `rectificat_horas_2` decimal(11,2) NOT NULL default '0.00' AFTER `rectificat_horas_1`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `rectificat_horas_3` decimal(11,2) NOT NULL default '0.00' AFTER `rectificat_horas_2`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `rectificat_horas_4` decimal(11,2) NOT NULL default '0.00' AFTER `rectificat_horas_3`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `programacion_autocontrol_1` varchar(10) NOT NULL default '' AFTER `rectificat_horas_4`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `programacion_autocontrol_2` varchar(10) NOT NULL default '' AFTER `programacion_autocontrol_1`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `programacion_autocontrol_3` varchar(10) NOT NULL default '' AFTER `programacion_autocontrol_2`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `programacion_autocontrol_4` varchar(10) NOT NULL default '' AFTER `programacion_autocontrol_3`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `programacion_verificacion_1` varchar(10) NOT NULL default '' AFTER `programacion_autocontrol_4`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `programacion_horas_1` decimal(11,2) NOT NULL default '0.00' AFTER `programacion_verificacion_1`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `programacion_horas_2` decimal(11,2) NOT NULL default '0.00' AFTER `programacion_horas_1`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `programacion_horas_3` decimal(11,2) NOT NULL default '0.00' AFTER `programacion_horas_2`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `programacion_horas_4` decimal(11,2) NOT NULL default '0.00' AFTER `programacion_horas_3`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_1_a` varchar(150) NOT NULL default '' AFTER `programacion_horas_4`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_1_b` varchar(150) NOT NULL default '' AFTER `cota_1_a`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_2_a` varchar(150) NOT NULL default '' AFTER `cota_1_b`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_2_b` varchar(150) NOT NULL default '' AFTER `cota_2_a`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_3_a` varchar(150) NOT NULL default '' AFTER `cota_2_b`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_3_b` varchar(150) NOT NULL default '' AFTER `cota_3_a`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_4_a` varchar(150) NOT NULL default '' AFTER `cota_3_b`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_4_b` varchar(150) NOT NULL default '' AFTER `cota_4_a`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_5_a` varchar(150) NOT NULL default '' AFTER `cota_4_b`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_5_b` varchar(150) NOT NULL default '' AFTER `cota_5_a`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_6_a` varchar(150) NOT NULL default '' AFTER `cota_5_b`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_6_b` varchar(150) NOT NULL default '' AFTER `cota_6_a`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_7_a` varchar(150) NOT NULL default '' AFTER `cota_6_b`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_7_b` varchar(150) NOT NULL default '' AFTER `cota_7_a`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_8_a` varchar(150) NOT NULL default '' AFTER `cota_7_b`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_8_b` varchar(150) NOT NULL default '' AFTER `cota_8_a`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_9_a` varchar(150) NOT NULL default '' AFTER `cota_8_b`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_9_b` varchar(150) NOT NULL default '' AFTER `cota_9_a`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_10_a` varchar(150) NOT NULL default '' AFTER `cota_9_b`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_10_b` varchar(150) NOT NULL default '' AFTER `cota_10_a`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_11_a` varchar(150) NOT NULL default '' AFTER `cota_10_b`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_11_b` varchar(150) NOT NULL default '' AFTER `cota_11_a`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_12_a` varchar(150) NOT NULL default '' AFTER `cota_11_b`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_12_b` varchar(150) NOT NULL default '' AFTER `cota_12_a`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_13_a` varchar(150) NOT NULL default '' AFTER `cota_12_b`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_13_b` varchar(150) NOT NULL default '' AFTER `cota_13_a`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_14_a` varchar(150) NOT NULL default '' AFTER `cota_13_b`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_14_b` varchar(150) NOT NULL default '' AFTER `cota_14_a`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_15_a` varchar(150) NOT NULL default '' AFTER `cota_14_b`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_15_b` varchar(150) NOT NULL default '' AFTER `cota_15_a`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_16_a` varchar(150) NOT NULL default '' AFTER `cota_15_b`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_16_b` varchar(150) NOT NULL default '' AFTER `cota_16_a`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_17_a` varchar(150) NOT NULL default '' AFTER `cota_16_b`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_17_b` varchar(150) NOT NULL default '' AFTER `cota_17_a`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_18_a` varchar(150) NOT NULL default '' AFTER `cota_17_b`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_18_b` varchar(150) NOT NULL default '' AFTER `cota_18_a`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_19_a` varchar(150) NOT NULL default '' AFTER `cota_18_b`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_19_b` varchar(150) NOT NULL default '' AFTER `cota_19_a`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_20_a` varchar(150) NOT NULL default '' AFTER `cota_19_b`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `cota_20_b` varchar(150) NOT NULL default '' AFTER `cota_20_a`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `descripcion` longtext NOT NULL AFTER `cota_20_b`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `aplicaciones_exteriores` longtext NOT NULL AFTER `descripcion`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `observaciones` longtext NOT NULL AFTER `aplicaciones_exteriores`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `finalizado` tinyint(1) NOT NULL default '0' AFTER `observaciones`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `val_autocontrol` tinyint(1) NOT NULL default '0' AFTER `finalizado`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `val_horas` tinyint(1) NOT NULL default '0' AFTER `val_autocontrol`;
ALTER TABLE `sgm_cuerpo_orden_seguimiento` ADD `val_cotas` tinyint(1) NOT NULL default '0' AFTER `val_horas`;
*/

CREATE TABLE `sgm_dades_origen_factura` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_dades_origen_factura` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id`;
ALTER TABLE `sgm_dades_origen_factura` ADD `nombre` varchar(255) default NULL AFTER `visible`;
ALTER TABLE `sgm_dades_origen_factura` ADD `nif` varchar(15) NOT NULL default '' AFTER `nombre`;
ALTER TABLE `sgm_dades_origen_factura` ADD `direccion` varchar(150) NOT NULL default '' AFTER `nif`;
ALTER TABLE `sgm_dades_origen_factura` ADD `poblacion` varchar(15) NOT NULL default '' AFTER `direccion`;
ALTER TABLE `sgm_dades_origen_factura` ADD `cp` varchar(5) NOT NULL default '' AFTER `poblacion`;
ALTER TABLE `sgm_dades_origen_factura` ADD `provincia` varchar(15) NOT NULL default '' AFTER `cp`;
ALTER TABLE `sgm_dades_origen_factura` ADD `mail` varchar(50) NOT NULL default '' AFTER `provincia`;
ALTER TABLE `sgm_dades_origen_factura` ADD `telefono` varchar(15) NOT NULL default '' AFTER `mail`;
ALTER TABLE `sgm_dades_origen_factura` ADD `notas` longtext AFTER `telefono`;
ALTER TABLE `sgm_dades_origen_factura` ADD `logo` varchar(50) NOT NULL default '' AFTER `notas`;
ALTER TABLE `sgm_dades_origen_factura` ADD `logo2` varchar(50) NOT NULL default '' AFTER `logo1`;
ALTER TABLE `sgm_dades_origen_factura` ADD `logo_ticket` varchar(50) NOT NULL default '' AFTER `logo2`;
ALTER TABLE `sgm_dades_origen_factura` ADD `logo_papel` varchar(50) NOT NULL default '' AFTER `logo_ticket`;

CREATE TABLE `sim_dades_origen_factura` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_dades_origen_factura` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id`;
ALTER TABLE `sim_dades_origen_factura` ADD `rao_social` varchar(255) default NULL AFTER `visible`;
ALTER TABLE `sim_dades_origen_factura` ADD `nif` varchar(15) NOT NULL default '' AFTER `rao_social`;
ALTER TABLE `sim_dades_origen_factura` ADD `direccio` varchar(150) NOT NULL default '' AFTER `nif`;
ALTER TABLE `sim_dades_origen_factura` ADD `poblacio` varchar(15) NOT NULL default '' AFTER `direccio`;
ALTER TABLE `sim_dades_origen_factura` ADD `cp` varchar(5) NOT NULL default '' AFTER `poblacio`;
ALTER TABLE `sim_dades_origen_factura` ADD `provincia` varchar(15) NOT NULL default '' AFTER `cp`;
ALTER TABLE `sim_dades_origen_factura` ADD `mail` varchar(50) NOT NULL default '' AFTER `provincia`;
ALTER TABLE `sim_dades_origen_factura` ADD `telefon` varchar(15) NOT NULL default '' AFTER `mail`;
ALTER TABLE `sim_dades_origen_factura` ADD `logo` varchar(50) NOT NULL default '' AFTER `telefon`;

CREATE TABLE `sgm_dades_origen_factura_iban` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_dades_origen_factura_iban` ADD `id_dades_origen_factura` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_dades_origen_factura_iban` ADD `entidad_bancaria` varchar(50) NOT NULL default '' AFTER `id_dades_origen_factura`;
ALTER TABLE `sgm_dades_origen_factura_iban` ADD `iban` varchar(50) NOT NULL default '' AFTER `entidad_bancaria`;
ALTER TABLE `sgm_dades_origen_factura_iban` ADD `descripcion` varchar(150) NOT NULL default '' AFTER `iban`;
ALTER TABLE `sgm_dades_origen_factura_iban` ADD `predefinido` tinyint(1) NOT NULL default '0' AFTER `descripcion`;

CREATE TABLE `sim_dades_origen_factura_iban` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_dades_origen_factura_iban` ADD `id_dades_origen_factura` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_dades_origen_factura_iban` ADD `entitat_bancaria` varchar(50) NOT NULL default '' AFTER `id_dades_origen_factura`;
ALTER TABLE `sim_dades_origen_factura_iban` ADD `iban` varchar(50) NOT NULL default '' AFTER `entitat_bancaria`;
ALTER TABLE `sim_dades_origen_factura_iban` ADD `descripcio` varchar(150) NOT NULL default '' AFTER `iban`;
ALTER TABLE `sim_dades_origen_factura_iban` ADD `predeterminat` tinyint(1) NOT NULL default '0' AFTER `descripcio`;

CREATE TABLE `sgm_divisas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_divisas` ADD `divisa` varchar(255) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_divisas` ADD `abrev` varchar(3) NOT NULL default '' AFTER `divisa`;
ALTER TABLE `sgm_divisas` ADD `canvi` decimal(11,3) NOT NULL default '0.000' AFTER `abrev`;
ALTER TABLE `sgm_divisas` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `canvi`;
ALTER TABLE `sgm_divisas` ADD `predefinido` tinyint(1) NOT NULL default '0' AFTER `visible`;
ALTER TABLE `sgm_divisas` ADD `simbolo` varchar(1) AFTER `predefinido`;

CREATE TABLE `sim_divises` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_divises` ADD `divisa` varchar(255) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_divises` ADD `abrevitura` varchar(3) NOT NULL default '' AFTER `divisa`;
ALTER TABLE `sim_divises` ADD `canvi` decimal(11,3) NOT NULL default '0.000' AFTER `abrevitura`;
ALTER TABLE `sim_divises` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `canvi`;
ALTER TABLE `sim_divises` ADD `predeterminat` tinyint(1) NOT NULL default '0' AFTER `visible`;
ALTER TABLE `sim_divises` ADD `simbol` varchar(1) AFTER `predeterminat`;

CREATE TABLE `sgm_divisas_mod_canvi` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_divisas_mod_canvi` ADD `id_divisa` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_divisas_mod_canvi` ADD `id_usuario` int(11) NOT NULL default '0' AFTER `id_divisa`;
ALTER TABLE `sgm_divisas_mod_canvi` ADD `fecha` date NOT NULL default '0000-00-00' AFTER `id_usuario`;
ALTER TABLE `sgm_divisas_mod_canvi` ADD `canvi` decimal(11,3) NOT NULL default '0.000' AFTER `fecha`;

CREATE TABLE `sim_divises_canvi_euro` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_divises_canvi_euro` ADD `id_divisa` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_divises_canvi_euro` ADD `id_user` int(11) NOT NULL default '0' AFTER `id_divisa`;
ALTER TABLE `sim_divises_canvi_euro` ADD `data` date NOT NULL default '0000-00-00' AFTER `id_user`;
ALTER TABLE `sim_divises_canvi_euro` ADD `canvi` decimal(11,3) NOT NULL default '0.000' AFTER `data`;

/*
CREATE TABLE `sgm_equipos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_equipos` ADD `codigo` varchar(11) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_equipos` ADD `equipo` varchar(255) NOT NULL default '' AFTER `codigo`;
ALTER TABLE `sgm_equipos` ADD `mmodelo` varchar(255) NOT NULL default '' AFTER `equipo`;
ALTER TABLE `sgm_equipos` ADD `numerods` varchar(15) NOT NULL default '' AFTER `mmodelo`;
ALTER TABLE `sgm_equipos` ADD `preci` decimal(11,3) NOT NULL default '0.000' AFTER `numerods`;
ALTER TABLE `sgm_equipos` ADD `rango` varchar(15) NOT NULL default '' AFTER `preci`;
ALTER TABLE `sgm_equipos` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `rango`;
*/

CREATE TABLE `sgm_files` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_files` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id`;
ALTER TABLE `sgm_files` ADD `id_tipo` int(11) NOT NULL default '0' AFTER `visible`;
ALTER TABLE `sgm_files` ADD `name` varchar(100) NOT NULL default '' AFTER `id_tipo`;
ALTER TABLE `sgm_files` ADD `type` varchar(20) NOT NULL default '' AFTER `name`;
ALTER TABLE `sgm_files` ADD `size` int(11) NOT NULL default '0' AFTER `type`;
ALTER TABLE `sgm_files` ADD `id_cuerpo` int(11) NOT NULL default '0' AFTER `size`;
ALTER TABLE `sgm_files` ADD `id_article` int(11) NOT NULL default '0' AFTER `id_cuerpo`;
ALTER TABLE `sgm_files` ADD `id_client` int(11) NOT NULL default '0' AFTER `id_article`;
ALTER TABLE `sgm_files` ADD `id_contrato` int(11) NOT NULL default '0' AFTER `id_client`;
ALTER TABLE `sgm_files` ADD `id_incidencia` int(11) NOT NULL default '0' AFTER `id_contrato`;

CREATE TABLE `sim_files` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_files` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id`;
ALTER TABLE `sim_files` ADD `id_files_tipus` int(11) NOT NULL default '0' AFTER `visible`;
ALTER TABLE `sim_files` ADD `nom` varchar(100) NOT NULL default '' AFTER `id_files_tipus`;
ALTER TABLE `sim_files` ADD `tipus` varchar(20) NOT NULL default '' AFTER `nom`;
ALTER TABLE `sim_files` ADD `tamany` int(11) NOT NULL default '0' AFTER `tipus`;
ALTER TABLE `sim_files` ADD `id_factura_linia` int(11) NOT NULL default '0' AFTER `tamany`;
ALTER TABLE `sim_files` ADD `id_article` int(11) NOT NULL default '0' AFTER `id_factura_linia`;
ALTER TABLE `sim_files` ADD `id_client` int(11) NOT NULL default '0' AFTER `id_article`;
ALTER TABLE `sim_files` ADD `id_contracte` int(11) NOT NULL default '0' AFTER `id_client`;
ALTER TABLE `sim_files` ADD `id_incidencia` int(11) NOT NULL default '0' AFTER `id_contracte`;

CREATE TABLE `sgm_files_tipos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_files_tipos` ADD `nombre` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_files_tipos` ADD `limite_kb` int(11) NOT NULL default '0' AFTER `nombre`;
INSERT INTO `sgm_files_tipos` VALUES (1, 'Imagen', 250);
INSERT INTO `sgm_files_tipos` VALUES (2, 'Video', 5000);
INSERT INTO `sgm_files_tipos` VALUES (3, 'PDF', 1500);
INSERT INTO `sgm_files_tipos` VALUES (4, 'DOC', 250);
INSERT INTO `sgm_files_tipos` VALUES (5, 'DWG-Cad', 1500);
INSERT INTO `sgm_files_tipos` VALUES (6, 'Programa', 3500);

CREATE TABLE `sim_files_tipus` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_files_tipus` ADD `nom` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_files_tipus` ADD `limit_kb` int(11) NOT NULL default '0' AFTER `nom`;
INSERT INTO `sim_files_tipus` VALUES (1, 'Imagen', 250);
INSERT INTO `sim_files_tipus` VALUES (2, 'Video', 5000);
INSERT INTO `sim_files_tipus` VALUES (3, 'PDF', 1500);
INSERT INTO `sim_files_tipus` VALUES (4, 'DOC', 250);
INSERT INTO `sim_files_tipus` VALUES (5, 'DWG-Cad', 1500);
INSERT INTO `sim_files_tipus` VALUES (6, 'Programa', 3500);

CREATE TABLE `sgm_factura_calendario` ( `id` int(11) NOT NULL AUTO_INCREMENT, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_factura_calendario` ADD `fecha` int(15) NOT NULL DEFAULT '0' AFTER `id`;
ALTER TABLE `sgm_factura_calendario` ADD `gastos` decimal(11,3) NOT NULL DEFAULT '0.000' AFTER `fecha`;
ALTER TABLE `sgm_factura_calendario` ADD `pre_gastos` decimal(11,3) NOT NULL DEFAULT '0.000' AFTER `gastos`;
ALTER TABLE `sgm_factura_calendario` ADD `ingresos` decimal(11,3) NOT NULL DEFAULT '0.000' AFTER `pre_gastos`;
ALTER TABLE `sgm_factura_calendario` ADD `externos` decimal(11,3) NOT NULL DEFAULT '0.000' AFTER `ingresos`;
ALTER TABLE `sgm_factura_calendario` ADD `liquido` decimal(11,3) NOT NULL DEFAULT '0.000' AFTER `externos`;

CREATE TABLE `sim_factura_calendari` ( `id` int(11) NOT NULL AUTO_INCREMENT, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_factura_calendari` ADD `data` int(15) NOT NULL DEFAULT '0' AFTER `id`;
ALTER TABLE `sim_factura_calendari` ADD `despeses` decimal(11,3) NOT NULL DEFAULT '0.000' AFTER `data`;
ALTER TABLE `sim_factura_calendari` ADD `prev_despeses` decimal(11,3) NOT NULL DEFAULT '0.000' AFTER `despeses`;
ALTER TABLE `sim_factura_calendari` ADD `ingressos` decimal(11,3) NOT NULL DEFAULT '0.000' AFTER `prev_despeses`;
ALTER TABLE `sim_factura_calendari` ADD `externs` decimal(11,3) NOT NULL DEFAULT '0.000' AFTER `ingressos`;
ALTER TABLE `sim_factura_calendari` ADD `liquit` decimal(11,3) NOT NULL DEFAULT '0.000' AFTER `externs`;

CREATE TABLE `sgm_factura_canvi_data_entrega` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_factura_canvi_data_entrega` ADD `id_factura` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_factura_canvi_data_entrega` ADD `id_usuario` int(11) NOT NULL default '0' AFTER `id_factura`;
ALTER TABLE `sgm_factura_canvi_data_entrega` ADD `fecha_ant` date NOT NULL default '0000-00-00' AFTER `id_usuario`;
ALTER TABLE `sgm_factura_canvi_data_entrega` ADD `data` date NOT NULL default '0000-00-00' AFTER `fecha_ant`;

CREATE TABLE `sim_factura_canvi_data_entrega` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_factura_canvi_data_entrega` ADD `id_factura` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_factura_canvi_data_entrega` ADD `id_user` int(11) NOT NULL default '0' AFTER `id_factura`;
ALTER TABLE `sim_factura_canvi_data_entrega` ADD `data_anterior` date NOT NULL default '0000-00-00' AFTER `id_user`;
ALTER TABLE `sim_factura_canvi_data_entrega` ADD `data` date NOT NULL default '0000-00-00' AFTER `data_anterior`;

CREATE TABLE `sgm_factura_canvi_data_prevision` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_factura_canvi_data_prevision` ADD `id_factura` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_factura_canvi_data_prevision` ADD `id_usuario` int(11) NOT NULL default '0' AFTER `id_factura`;
ALTER TABLE `sgm_factura_canvi_data_prevision` ADD `fecha_ant` date NOT NULL default '0000-00-00' AFTER `id_usuario`;
ALTER TABLE `sgm_factura_canvi_data_prevision` ADD `data` date NOT NULL default '0000-00-00' AFTER `fecha_ant`;

CREATE TABLE `sim_factura_canvi_data_prevision` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_factura_canvi_data_prevision` ADD `id_factura` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_factura_canvi_data_prevision` ADD `id_user` int(11) NOT NULL default '0' AFTER `id_factura`;
ALTER TABLE `sim_factura_canvi_data_prevision` ADD `data_anterior` date NOT NULL default '0000-00-00' AFTER `id_user`;
ALTER TABLE `sim_factura_canvi_data_prevision` ADD `data` date NOT NULL default '0000-00-00' AFTER `data_anterior`;

CREATE TABLE `sgm_factura_canvi_data_prevision_cuerpo` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_factura_canvi_data_prevision_cuerpo` ADD `id_factura` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_factura_canvi_data_prevision_cuerpo` ADD `id_usuario` int(11) NOT NULL default '0' AFTER `id_factura`;
ALTER TABLE `sgm_factura_canvi_data_prevision_cuerpo` ADD `fecha_ant` date NOT NULL default '0000-00-00' AFTER `id_usuario`;
ALTER TABLE `sgm_factura_canvi_data_prevision_cuerpo` ADD `data` date NOT NULL default '0000-00-00' AFTER `fecha_ant`;
ALTER TABLE `sgm_factura_canvi_data_prevision_cuerpo` ADD `id_cuerpo` int(11) NOT NULL default '0' AFTER `data`;

CREATE TABLE `sim_factura_canvi_data_prevision_linia` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_factura_canvi_data_prevision_linia` ADD `id_factura` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_factura_canvi_data_prevision_linia` ADD `id_user` int(11) NOT NULL default '0' AFTER `id_factura`;
ALTER TABLE `sim_factura_canvi_data_prevision_linia` ADD `data_anterior` date NOT NULL default '0000-00-00' AFTER `id_user`;
ALTER TABLE `sim_factura_canvi_data_prevision_linia` ADD `data` date NOT NULL default '0000-00-00' AFTER `data_anterior`;
ALTER TABLE `sim_factura_canvi_data_prevision_linia` ADD `id_factura_linia` int(11) NOT NULL default '0' AFTER `data`;

CREATE TABLE `sgm_factura_subtipos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_factura_subtipos` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id`;
ALTER TABLE `sgm_factura_subtipos` ADD `id_tipo` int(11) NOT NULL default '0' AFTER `visible`;
ALTER TABLE `sgm_factura_subtipos` ADD `subtipo` varchar(50) default NULL AFTER `id_tipo`;
  
CREATE TABLE `sgm_factura_tipos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_factura_tipos` ADD `orden` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_factura_tipos` ADD `tipo` varchar(150) NOT NULL default '' AFTER `orden`;
ALTER TABLE `sgm_factura_tipos` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `tipo`;
ALTER TABLE `sgm_factura_tipos` ADD `descripcion` varchar(250) NOT NULL default '' AFTER `visible`;
ALTER TABLE `sgm_factura_tipos` ADD `dias` int(11) NOT NULL default '0' AFTER `descripcion`;
ALTER TABLE `sgm_factura_tipos` ADD `facturable` tinyint(1) NOT NULL default '0' AFTER `dias`;
ALTER TABLE `sgm_factura_tipos` ADD `tpv` tinyint(1) NOT NULL DEFAULT '0' AFTER `facturable` ;
-- en el momento de selccion destino, muestra un grupo o otro
ALTER TABLE `sgm_factura_tipos` ADD `filtro` tinyint(1) NOT NULL default '1' AFTER `tpv`;
ALTER TABLE `sgm_factura_tipos` ADD `cliente` tinyint(1) NOT NULL default '0' AFTER `filtro`;
ALTER TABLE `sgm_factura_tipos` ADD `proveedor` tinyint(1) NOT NULL default '0' AFTER `cliente`;
ALTER TABLE `sgm_factura_tipos` ADD `impacto` tinyint(1) NOT NULL default '0' AFTER `proveedor`;
-- ver la fecha de prevision
ALTER TABLE `sgm_factura_tipos` ADD `v_fecha_prevision` tinyint(1) NOT NULL default '0' AFTER `impacto`;
-- ver la fecha de vencimeinto
ALTER TABLE `sgm_factura_tipos` ADD `v_fecha_vencimiento` tinyint(1) NOT NULL default '0' AFTER `v_fecha_prevision`;
-- ver la referencia de pedido del cliente
ALTER TABLE `sgm_factura_tipos` ADD `v_numero_cliente` tinyint(1) NOT NULL default '0' AFTER `v_fecha_vencimiento`;
-- agrupacion de subtipos
ALTER TABLE `sgm_factura_tipos` ADD `v_subtipos` tinyint(1) NOT NULL default '0' AFTER `v_numero_cliente`;
-- ver el peso y los bultos 
ALTER TABLE `sgm_factura_tipos` ADD `v_pesobultos` tinyint(1) NOT NULL default '0' AFTER `v_subtipos`;
ALTER TABLE `sgm_factura_tipos` ADD `v_fecha_prevision_dias` int(11) NOT NULL default '0' AFTER `v_fecha_prevision` ;
ALTER TABLE `sgm_factura_tipos` ADD `v_recibos` tinyint(1) NOT NULL default '0' AFTER `v_pesobultos` ;
ALTER TABLE `sgm_factura_tipos` ADD `tipo_ot` tinyint(1) NOT NULL default '0' AFTER `v_recibos` ;
-- calculo de costes (presupuesto)
ALTER TABLE `sgm_factura_tipos` ADD `presu` tinyint(1) NOT NULL default '0' AFTER `tipo_ot`;
ALTER TABLE `sgm_factura_tipos` ADD `presu_dias` int(11) NOT NULL default '0' AFTER `presu` ;
ALTER TABLE `sgm_factura_tipos` ADD `stock` int(11) NOT NULL default '0' AFTER `presu_dias` ;
ALTER TABLE `sgm_factura_tipos` ADD `calidad` tinyint(1) NOT NULL default '0' AFTER `stock`;
ALTER TABLE `sgm_factura_tipos` ADD `caja` tinyint(1) NOT NULL default '0' AFTER `calidad`;
ALTER TABLE `sgm_factura_tipos` ADD `aprovado` tinyint(1) NOT NULL default '0' AFTER `caja`;
ALTER TABLE `sgm_factura_tipos` ADD `v_rfq` tinyint(1) NOT NULL default '0' AFTER `aprovado`;

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

CREATE TABLE `sgm_factura_tipos_idiomas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_factura_tipos_idiomas` ADD `id_tipo` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_factura_tipos_idiomas` ADD `cat`  varchar(100) NOT NULL default '' AFTER `id_tipo`;
ALTER TABLE `sgm_factura_tipos_idiomas` ADD `uk`  varchar(100) NOT NULL default '' AFTER `cat`;
ALTER TABLE `sgm_factura_tipos_idiomas` ADD `fr`  varchar(100) NOT NULL default '' AFTER `uk`;

CREATE TABLE `sim_factura_tipus_idiomes` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_factura_tipus_idiomes` ADD `id_tipus` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_factura_tipus_idiomes` ADD `id_idiomes`  varchar(100) NOT NULL default '' AFTER `id_tipus`;
ALTER TABLE `sim_factura_tipus_idiomes` ADD `tipus`  varchar(100) NOT NULL default '' AFTER `id_idiomes`;

CREATE TABLE `sgm_factura_tipos_permisos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_factura_tipos_permisos` ADD `id_user` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_factura_tipos_permisos` ADD `id_tipo` int(11) NOT NULL default '0' AFTER `id_user`;
ALTER TABLE `sgm_factura_tipos_permisos` ADD `admin`  tinyint(1) NOT NULL default '0' AFTER `id_tipo`;

CREATE TABLE `sim_factura_tipus_permisos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_factura_tipus_permisos` ADD `id_user` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_factura_tipus_permisos` ADD `id_tipus` int(11) NOT NULL default '0' AFTER `id_user`;
ALTER TABLE `sim_factura_tipus_permisos` ADD `administrador`  tinyint(1) NOT NULL default '0' AFTER `id_tipus`;

CREATE TABLE `sgm_factura_tipos_relaciones` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_factura_tipos_relaciones` ADD `id_tipo_o` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_factura_tipos_relaciones` ADD `id_tipo_d` int(11) NOT NULL default '0' AFTER `id_tipo_o`;

CREATE TABLE `sim_factura_tipus_relacions` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_factura_tipus_relacions` ADD `id_tipus_origen` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_factura_tipus_relacions` ADD `id_tipus_desti` int(11) NOT NULL default '0' AFTER `id_tipus_origen`;

/*
CREATE TABLE `sgm_facturas_relaciones` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_facturas_relaciones` ADD `id_plantilla` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_facturas_relaciones` ADD `fecha` date NOT NULL default '0000-00-00' AFTER `id_plantilla`;
ALTER TABLE `sgm_facturas_relaciones` ADD `id_factura` int(11) NOT NULL default '0' AFTER `fecha`;

-- fuera de uso
CREATE TABLE `sgm_fases` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_fases` ADD `fase`  varchar(100) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_fases` ADD `notas` varchar(255) NOT NULL default '' AFTER `fase`;
ALTER TABLE `sgm_fases` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `notas`;

-- fuera de uso
CREATE TABLE `sgm_fases_grupo_rec` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_fases_grupo_rec` ADD `id_fase` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_fases_grupo_rec` ADD `id_grupo_rec` int(11) NOT NULL default '0' AFTER `id_fase`;
ALTER TABLE `sgm_fases_grupo_rec` ADD `pred` tinyint(1) NOT NULL default '0' AFTER `id_grupo_rec`;
ALTER TABLE `sgm_fases_grupo_rec` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `pred`;

CREATE TABLE `sgm_foros` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_foros` ADD `id_grupo` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_foros` ADD `orden` int(11) NOT NULL default '0' AFTER `id_grupo`;
ALTER TABLE `sgm_foros` ADD `abierto` tinyint(1) NOT NULL default '1' AFTER `orden`;
ALTER TABLE `sgm_foros` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `abierto`;
ALTER TABLE `sgm_foros` ADD `admin` tinyint(1) NOT NULL default '0' AFTER `visible`;
ALTER TABLE `sgm_foros` ADD `titulo` varchar(75) NOT NULL default '' AFTER `admin`;
ALTER TABLE `sgm_foros` ADD `descripcion` varchar(100) NOT NULL default '' AFTER `titulo`;
ALTER TABLE `sgm_foros` ADD `id_iaula` int(11) NOT NULL default '0' AFTER `descripcion`;

CREATE TABLE `sgm_foros_grupos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_foros_grupos` ADD `orden` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_foros_grupos` ADD `abierto` tinyint(1) NOT NULL default '1' AFTER `orden`;
ALTER TABLE `sgm_foros_grupos` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `abierto`;
ALTER TABLE `sgm_foros_grupos` ADD `admin` tinyint(1) NOT NULL default '0' AFTER `visible`;
ALTER TABLE `sgm_foros_grupos` ADD `titulo` varchar(25) NOT NULL default '' AFTER `admin`;
ALTER TABLE `sgm_foros_grupos` ADD `descripcion` varchar(100) NOT NULL default '' AFTER `titulo`;
  
CREATE TABLE `sgm_foros_ladders` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_foros_ladders` ADD `id_ladder` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_foros_ladders` ADD `id_foro` int(11) NOT NULL default '0' AFTER `id_ladder`;

CREATE TABLE `sgm_foros_lecturas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_foros_lecturas` ADD `id_post` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_foros_lecturas` ADD `id_user` int(11) NOT NULL default '0' AFTER `id_post`;

CREATE TABLE `sgm_foros_posts` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_foros_posts` ADD  `id_ladder` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_foros_posts` ADD `id_torneo` int(11) NOT NULL default '0' AFTER `id_ladder`;
ALTER TABLE `sgm_foros_posts` ADD `id_foro` int(11) NOT NULL default '0' AFTER `id_torneo`;
ALTER TABLE `sgm_foros_posts` ADD `id_post` int(11) NOT NULL default '0' AFTER `id_foro`;
ALTER TABLE `sgm_foros_posts` ADD `id_user` int(11) NOT NULL default '0' AFTER `id_post`;
ALTER TABLE `sgm_foros_posts` ADD `visitas` int(11) NOT NULL default '0' AFTER `id_user`;
ALTER TABLE `sgm_foros_posts` ADD `abierto` tinyint(1) NOT NULL default '1' AFTER `visitas`;
ALTER TABLE `sgm_foros_posts` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `abierto`;
ALTER TABLE `sgm_foros_posts` ADD `asunto` varchar(100) default NULL AFTER `visible`;
ALTER TABLE `sgm_foros_posts` ADD `cuerpo` longtext AFTER `asunto`;
ALTER TABLE `sgm_foros_posts` ADD `fecha` date default NULL AFTER `cuerpo`;
ALTER TABLE `sgm_foros_posts` ADD `hora` time default NULL AFTER `fecha`;
ALTER TABLE `sgm_foros_posts` ADD `firma` tinyint(1) NOT NULL default '0' AFTER `hora`;
ALTER TABLE `sgm_foros_posts` ADD `top` tinyint(1) NOT NULL default '0' AFTER `firma`;
ALTER TABLE `sgm_foros_posts` ADD `lastfecha` date default NULL AFTER `top`;
ALTER TABLE `sgm_foros_posts` ADD `lasttime` time default NULL AFTER `lastfecha`;
ALTER TABLE `sgm_foros_posts` ADD `lastid_user` int(11) NOT NULL default '0' AFTER `lasttime`;

CREATE TABLE `sgm_ft` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_ft` ADD `id_plantilla` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_ft` ADD `id_ot` int(11) NOT NULL default '0' AFTER `id_plantilla`;
ALTER TABLE `sgm_ft` ADD `id_client` int(11) NOT NULL default '0' AFTER `id_ot`;
ALTER TABLE `sgm_ft` ADD `id_inventari` int(11) NOT NULL default '0' AFTER `id_client`;
ALTER TABLE `sgm_ft` ADD `id_mantenimiento` int(11) NOT NULL default '0' AFTER `id_inventari`;
ALTER TABLE `sgm_ft` ADD `id_incidencia` int(11) NOT NULL default '0' AFTER `id_inventari`;
ALTER TABLE `sgm_ft` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_mantenimiento`;
ALTER TABLE `sgm_ft` ADD `edireccion` varchar(150) NOT NULL default '' AFTER `visible`;
ALTER TABLE `sgm_ft` ADD `epoblacion` varchar(150) NOT NULL default '' AFTER `edireccion`;
ALTER TABLE `sgm_ft` ADD `ecp` varchar(5) NOT NULL default '' AFTER `epoblacion`;
ALTER TABLE `sgm_ft` ADD `eprovincia` varchar(15) NOT NULL default '' AFTER `ecp`;

CREATE TABLE `sgm_ft_dades` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_ft_dades` ADD `id_ft` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_ft_dades` ADD `id_plantilla_tipus` int(11) NOT NULL default '0' AFTER `id_ft`;
ALTER TABLE `sgm_ft_dades` ADD `id_platilla_tipus_campo` int(11) NOT NULL default '0' AFTER `id_plantilla_tipus`;
ALTER TABLE `sgm_ft_dades` ADD `descripcion` longtext AFTER `id_platilla_tipus_campo`;
ALTER TABLE `sgm_ft_dades` CHANGE `id_platilla_tipus_campo` `id_plantilla_tipus_campo` INT( 11 ) DEFAULT '0' NOT NULL;

CREATE TABLE `sgm_ft_plantilla` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_ft_plantilla` ADD `plantilla`  varchar(255) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_ft_plantilla` ADD `descripcion` longtext AFTER `plantilla`;
ALTER TABLE `sgm_ft_plantilla` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcion`;
ALTER TABLE `sgm_ft_plantilla` ADD `filas` int(11) NOT NULL default '0' AFTER `visible`;
ALTER TABLE `sgm_ft_plantilla` ADD `columnas` int(11) NOT NULL default '0' AFTER `filas`;
ALTER TABLE `sgm_ft_plantilla` ADD `id_tamany_papel` int(11) NOT NULL default '0' AFTER `columnas`;

CREATE TABLE `sgm_ft_plantilla_tipus` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_ft_plantilla_tipus` ADD `id_ft` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_ft_plantilla_tipus` ADD `tipus`  varchar(255) NOT NULL default '' AFTER `id_ft`;
ALTER TABLE `sgm_ft_plantilla_tipus` ADD `descripcion` longtext AFTER `tipus`;
ALTER TABLE `sgm_ft_plantilla_tipus` ADD `taula` tinyint(1) NOT NULL default '0' AFTER `descripcion`;
ALTER TABLE `sgm_ft_plantilla_tipus` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `taula`;
ALTER TABLE `sgm_ft_plantilla_tipus` ADD `celda` int(11) NOT NULL default '0' AFTER `visible`;
ALTER TABLE `sgm_ft_plantilla_tipus` ADD `orden` int(11) NOT NULL default '0' AFTER `celda`;
ALTER TABLE `sgm_ft_plantilla_tipus` ADD `x_posicion` int(11) NOT NULL default '0' AFTER `orden`;
ALTER TABLE `sgm_ft_plantilla_tipus` ADD `y_posicion` int(11) NOT NULL default '0' AFTER `x_posicion`;
ALTER TABLE `sgm_ft_plantilla_tipus` ADD `x_ancho` int(11) NOT NULL default '0' AFTER `y_posicion`;
ALTER TABLE `sgm_ft_plantilla_tipus` ADD `y_alto` int(11) NOT NULL default '0' AFTER `x_ancho`;
ALTER TABLE `sgm_ft_plantilla_tipus` ADD `sgm_taula`  varchar(50) NOT NULL default '' AFTER `y_alto`;
ALTER TABLE `sgm_ft_plantilla_tipus` ADD `sgm_campo`  varchar(25) NOT NULL default '' AFTER `sgm_taula`;
ALTER TABLE `sgm_ft_plantilla_tipus` ADD `sgm_sql`  varchar(255) NOT NULL default '' AFTER `sgm_campo`;
ALTER TABLE `sgm_ft_plantilla_tipus` ADD `obligatorio` tinyint(1) NOT NULL default '0' AFTER `sgm_sql`;
ALTER TABLE `sgm_ft_plantilla_tipus` ADD `sgm_campo_visualizado`  varchar(25) NOT NULL default '' AFTER `obligatorio`;
ALTER TABLE `sgm_ft_plantilla_tipus` ADD `visualizar` tinyint(1) NOT NULL default '1' AFTER `sgm_campo_visualizado`;

CREATE TABLE `sgm_ft_plantilla_tipus_campos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_ft_plantilla_tipus_campos` ADD `id_ft_plantilla_tipus` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_ft_plantilla_tipus_campos` ADD `campos`  varchar(255) NOT NULL default '' AFTER `id_ft_plantilla_tipus`;
ALTER TABLE `sgm_ft_plantilla_tipus_campos` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `campos`;
*/

CREATE TABLE `sgm_idiomas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_idiomas` ADD `idioma` varchar(2) NOT NULL default 'ES' AFTER `id`;
ALTER TABLE `sgm_idiomas` ADD `descripcion` varchar(15) NOT NULL default '' AFTER `idioma`;
ALTER TABLE `sgm_idiomas` ADD `imagen` varchar(15) NOT NULL default '' AFTER `descripcion`;
ALTER TABLE `sgm_idiomas` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `imagen`;
ALTER TABLE `sgm_idiomas` ADD `predefinido` tinyint(1) NOT NULL default '0' AFTER `visible`;

CREATE TABLE `sim_idiomes` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_idiomes` ADD `idioma` varchar(2) NOT NULL default 'ES' AFTER `id`;
ALTER TABLE `sim_idiomes` ADD `descripcio` varchar(15) NOT NULL default '' AFTER `idioma`;
ALTER TABLE `sim_idiomes` ADD `imatge` varchar(15) NOT NULL default '' AFTER `descripcio`;
ALTER TABLE `sim_idiomes` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `imatge`;
ALTER TABLE `sim_idiomes` ADD `predeterminat` tinyint(1) NOT NULL default '0' AFTER `visible`;

CREATE TABLE `sgm_incidencias` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_incidencias` ADD `id_incidencia` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_incidencias` ADD `id_usuario_origen` int(11) NOT NULL default '0' AFTER `id_incidencia`;
ALTER TABLE `sgm_incidencias` ADD `id_usuario_registro` int(11) NOT NULL default '0' AFTER `id_usuario_origen`;
ALTER TABLE `sgm_incidencias` ADD `id_usuario_destino` int(11) NOT NULL default '0' AFTER `id_usuario_registro`;
ALTER TABLE `sgm_incidencias` ADD `id_usuario_finalizacion` int(11) NOT NULL default '0' AFTER `id_usuario_destino`;
ALTER TABLE `sgm_incidencias` ADD `fecha_prevision` int(15) NOT NULL default '0' AFTER `id_usuario_finalizacion`;
ALTER TABLE `sgm_incidencias` ADD `fecha_registro_inicio` int(15) NOT NULL default '0' AFTER `fecha_prevision`;
ALTER TABLE `sgm_incidencias` ADD `fecha_inicio` int(15) NOT NULL default '0' AFTER `fecha_registro_inicio`;
ALTER TABLE `sgm_incidencias` ADD `fecha_registro_cierre` int(15) NOT NULL default '0' AFTER `fecha_inicio`;
ALTER TABLE `sgm_incidencias` ADD `fecha_cierre` int(15) NOT NULL default '0' AFTER `fecha_registro_cierre`;
ALTER TABLE `sgm_incidencias` ADD `asunto` varchar(150) default NULL AFTER `fecha_cierre`;
ALTER TABLE `sgm_incidencias` ADD `notas_registro` longtext AFTER `asunto`;
ALTER TABLE `sgm_incidencias` ADD `notas_desarrollo` longtext AFTER `notas_registro`;
ALTER TABLE `sgm_incidencias` ADD `notas_conclusion` longtext AFTER `notas_desarrollo`;
ALTER TABLE `sgm_incidencias` ADD `id_estado` int(11) NOT NULL default '0' AFTER `notas_conclusion`;
ALTER TABLE `sgm_incidencias` ADD `id_entrada` int(11) NOT NULL default '0' AFTER `id_estado`;
ALTER TABLE `sgm_incidencias` ADD `id_servicio` int(11) NOT NULL default '0' AFTER `id_entrada`;
ALTER TABLE `sgm_incidencias` ADD `id_cliente` int(11) NOT NULL default '0' AFTER `id_servicio`;
ALTER TABLE `sgm_incidencias` ADD `duracion` int(11) NOT NULL default '0' AFTER `id_cliente`;
ALTER TABLE `sgm_incidencias` ADD `sla` tinyint(1) NOT NULL default '0' AFTER `duracion` ;
ALTER TABLE `sgm_incidencias` ADD `visible_cliente` tinyint(1) NOT NULL default '1' AFTER `sla` ;
ALTER TABLE `sgm_incidencias` ADD `pausada` tinyint(1) NOT NULL default '0' AFTER `visible_cliente` ;
ALTER TABLE `sgm_incidencias` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `pausada` ;
ALTER TABLE `sgm_incidencias` ADD `temps_transcorregut` int(15) NOT NULL default '0' AFTER `visible`;
ALTER TABLE `sgm_incidencias` ADD `temps_pendent` int(15) NOT NULL default '0' AFTER `temps_transcorregut`;
ALTER TABLE `sgm_incidencias` ADD `correo` int(15) NOT NULL default '0' AFTER `temps_pendent`;

CREATE TABLE `sim_incidencies` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_incidencies` ADD `id_incidencia` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_incidencies` ADD `id_user_origen` int(11) NOT NULL default '0' AFTER `id_incidencia`;
ALTER TABLE `sim_incidencies` ADD `id_user_registre` int(11) NOT NULL default '0' AFTER `id_user_origen`;
ALTER TABLE `sim_incidencies` ADD `id_user_desti` int(11) NOT NULL default '0' AFTER `id_user_registre`;
ALTER TABLE `sim_incidencies` ADD `id_user_finalitzacio` int(11) NOT NULL default '0' AFTER `id_user_desti`;
ALTER TABLE `sim_incidencies` ADD `data_previsio` int(15) NOT NULL default '0' AFTER `id_user_finalitzacio`;
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

CREATE TABLE `sgm_incidencias_correos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_incidencias_correos` ADD `uid` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_incidencias_correos` ADD `destinatario` varchar(100) NOT NULL default '' AFTER `uid`;

CREATE TABLE `sim_incidencies_correus` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_incidencies_correus` ADD `uid` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_incidencies_correus` ADD `destinatari` varchar(100) NOT NULL default '' AFTER `uid`;

CREATE TABLE `sgm_incidencias_estados` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_incidencias_estados` ADD `estado` varchar(30) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_incidencias_estados` ADD `editable` tinyint(1) NOT NULL default '1' AFTER `estado`;
ALTER TABLE `sgm_incidencias_estados` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `editable`;

CREATE TABLE `sim_incidencies_estats` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_incidencies_estats` ADD `estat` varchar(30) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_incidencies_estats` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `estat`;

CREATE TABLE `sgm_incidencias_entrada` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_incidencias_entrada` ADD `entrada` varchar(30) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_incidencias_entrada` ADD `predeterminada` tinyint(1) NOT NULL default '0' AFTER `entrada`;
INSERT INTO `sgm_incidencias_entrada` VALUES (1, 'Teléfono');
INSERT INTO `sgm_incidencias_entrada` VALUES (2, 'Fax');
INSERT INTO `sgm_incidencias_entrada` VALUES (3, 'Mail');
INSERT INTO `sgm_incidencias_entrada` VALUES (4, 'Web');
INSERT INTO `sgm_incidencias_entrada` VALUES (5, 'Otra');

CREATE TABLE `sim_incidencies_entrada` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_incidencies_entrada` ADD `entrada` varchar(30) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_incidencies_entrada` ADD `predeterminat` tinyint(1) NOT NULL default '0' AFTER `entrada`;
INSERT INTO `sim_incidencies_entrada` VALUES (1, 'Teléfono');
INSERT INTO `sim_incidencies_entrada` VALUES (2, 'Mail');
INSERT INTO `sim_incidencies_entrada` VALUES (3, 'Web');
INSERT INTO `sim_incidencies_entrada` VALUES (4, 'Otra');

/*
CREATE TABLE `sgm_incidencias_notas_desarrollo` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_incidencias_notas_desarrollo` ADD `id_incidencia` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_incidencias_notas_desarrollo` ADD `id_usuario` int(11) NOT NULL default '0' AFTER `id_incidencia`;
ALTER TABLE `sgm_incidencias_notas_desarrollo` ADD `notas` longtext AFTER `data_insert`;
ALTER TABLE `sgm_incidencias_notas_desarrollo` ADD `tiempo` int(11) NOT NULL default '0' AFTER `notas`;
ALTER TABLE `sgm_incidencias_notas_desarrollo` ADD `fecha_inicio` int(11) NOT NULL default '0' AFTER `tiempo`;
ALTER TABLE `sgm_incidencias_notas_desarrollo` ADD `fecha_registro_inicio` int(11) NOT NULL default '0' AFTER `fecha_inicio`;
ALTER TABLE `sgm_incidencias_notas_desarrollo` ADD `visible_cliente` tinyint(1) NOT NULL default '1' AFTER `fecha_registro_inicio` ;
ALTER TABLE `sgm_incidencias_notas_desarrollo` ADD `pausada` tinyint(1) NOT NULL default '0' AFTER `visible_cliente` ;
*/

/*
CREATE TABLE `sgm_inventario` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_inventario` ADD `nombre` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_inventario` ADD `id_tipo` int(11) NOT NULL default '0' AFTER `nombre` ;
ALTER TABLE `sgm_inventario` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_tipo` ;

CREATE TABLE `sgm_inventario_relacion` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_inventario_relacion` ADD `id_disp1` int(11) NOT NULL default '0' AFTER `id` ;
ALTER TABLE `sgm_inventario_relacion` ADD `id_disp2` int(11) NOT NULL default '0' AFTER `id_disp1` ;
ALTER TABLE `sgm_inventario_relacion` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_disp2` ;

CREATE TABLE `sgm_inventario_actuacion` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_inventario_actuacion` ADD `nombre` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_inventario_actuacion` ADD `id_disp` int(11) NOT NULL default '1' AFTER `nombre` ;
ALTER TABLE `sgm_inventario_actuacion` ADD `parada` tinyint(1) NOT NULL default '0' AFTER `id_disp` ;
ALTER TABLE `sgm_inventario_actuacion` ADD `duracion` int(11) NOT NULL default '0' AFTER `parada`;
ALTER TABLE `sgm_inventario_actuacion` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `duracion` ;

CREATE TABLE `sgm_inventario_actuacion_disp` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_inventario_actuacion_disp` ADD `id_act` int(11) NOT NULL default '0' AFTER `id` ;
ALTER TABLE `sgm_inventario_actuacion_disp` ADD `id_disp` int(11) NOT NULL default '0' AFTER `id_act` ;
ALTER TABLE `sgm_inventario_actuacion_disp` ADD `id_user` int(11) NOT NULL default '0' AFTER `id_disp` ;
ALTER TABLE `sgm_inventario_actuacion_disp` ADD `data` datetime default NULL AFTER `id_user`;
ALTER TABLE `sgm_inventario_actuacion_disp` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `data` ;

CREATE TABLE `sgm_inventario_tipo` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_inventario_tipo` ADD `tipo` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_inventario_tipo` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `tipo` ;
ALTER TABLE `sgm_inventario_tipo` ADD `orden` int(11) NOT NULL default '0' AFTER `visible` ;

CREATE TABLE `sgm_inventario_tipo_atributo` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_inventario_tipo_atributo` ADD `atributo` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_inventario_tipo_atributo` ADD `id_tipo` int(11) NOT NULL default '0' AFTER `atributo` ;
ALTER TABLE `sgm_inventario_tipo_atributo` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_tipo` ;

CREATE TABLE `sgm_inventario_tipo_atributo_dada` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_inventario_tipo_atributo_dada` ADD `dada` longtext NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_inventario_tipo_atributo_dada` ADD `id_atribut` int(11) NOT NULL default '0' AFTER `dada` ;
ALTER TABLE `sgm_inventario_tipo_atributo_dada` ADD `id_inventario` int(11) NOT NULL default '0' AFTER `id_atribut` ;
ALTER TABLE `sgm_inventario_tipo_atributo_dada` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_inventario` ;
*/

CREATE TABLE `sgm_lincencias` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_lincencias` ADD `id_client` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_lincencias` ADD `id_client_final` int(11) NOT NULL default '0' AFTER `id_client`;
ALTER TABLE `sgm_lincencias` ADD `id_cabecera` int(11) NOT NULL default '0' AFTER `id_client_final`;
ALTER TABLE `sgm_lincencias` ADD `fecha_ini` int(15) NOT NULL default '0' AFTER `id_cabecera`;
ALTER TABLE `sgm_lincencias` ADD `fecha_fin` int(15) NOT NULL default '0' AFTER `fecha_ini`;
ALTER TABLE `sgm_lincencias` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `fecha_fin`;
ALTER TABLE `sgm_lincencias` ADD `descripcion` longtext NOT NULL default '' AFTER `visible`;
ALTER TABLE `sgm_lincencias` ADD `renovado` tinyint(1) NOT NULL default '0' AFTER `descripcion`;

CREATE TABLE `sgm_lincencias_articles` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_lincencias_articles` ADD `id_licencia` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_lincencias_articles` ADD `id_article` int(11) NOT NULL default '0' AFTER `id_licencia`;
ALTER TABLE `sgm_lincencias_articles` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_article`;

CREATE TABLE `sgm_lincencias_families_articles` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_lincencias_families_articles` ADD `id_familia` int(11) NOT NULL default '0' AFTER `id`;

CREATE TABLE `sgm_logos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_logos` ADD `contenido` LONGBLOB NULL default '' AFTER `id` ;
ALTER TABLE `sgm_logos` ADD `tamany` INTEGER UNSIGNED NULL default '0' AFTER `contenido` ;
ALTER TABLE `sgm_logos` ADD `tipo` VARCHAR(150) NULL default '' AFTER `tamany` ;
ALTER TABLE `sgm_logos` ADD `nombre_archivo` VARCHAR(255) NULL default '' AFTER `tipo` ;
ALTER TABLE `sgm_logos` ADD `clase` int(11) NOT NULL default '0' AFTER `nombre_archivo`;

/*
CREATE TABLE `sgm_news_elementos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_news_elementos` ADD `id_tipo` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_news_elementos` ADD `name` varchar(100) NOT NULL default '' AFTER `id_tipo`;
ALTER TABLE `sgm_news_elementos` ADD `type` varchar(20) NOT NULL default '' AFTER `name`;
ALTER TABLE `sgm_news_elementos` ADD `size` int(11) NOT NULL default '0' AFTER `type`;

CREATE TABLE `sgm_news_elementos_news` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_news_elementos_news` ADD `id_new` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_news_elementos_news` ADD `id_elemento` int(11) NOT NULL default '0' AFTER `id_new`;

CREATE TABLE `sgm_news_elementos_tipos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_news_elementos_tipos` ADD `nombre` varchar(15) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_news_elementos_tipos` ADD `limite_kb` int(11) NOT NULL default '0' AFTER `nombre`;
ALTER TABLE `sgm_news_elementos_tipos` ADD `file` tinyint(1) NOT NULL default '1' AFTER `limite_kb`;
INSERT INTO `sgm_news_elementos_tipos` VALUES (1, 'Imagen', 250, 1);
INSERT INTO `sgm_news_elementos_tipos` VALUES (2, 'Video', 5000, 1);
INSERT INTO `sgm_news_elementos_tipos` VALUES (3, 'PDF', 1500, 1);
INSERT INTO `sgm_news_elementos_tipos` VALUES (4, 'DOC', 250, 1);

CREATE TABLE `sgm_news_grupos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_news_grupos` ADD `name` varchar(55) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_news_grupos` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `name`;
ALTER TABLE `sgm_news_grupos` ADD `general` tinyint(1) NOT NULL default '0' AFTER `visible`;
ALTER TABLE `sgm_news_grupos` ADD `blocked` tinyint(1) NOT NULL default '0' AFTER `general`;
ALTER TABLE `sgm_news_grupos` ADD `articulos` tinyint(4) NOT NULL default '0' AFTER `blocked`;
ALTER TABLE `sgm_news_grupos` ADD `id_idioma` int(11) NOT NULL default '0' AFTER `articulos`;
ALTER TABLE `sgm_news_grupos` ADD `id_origen` int(11) NOT NULL default '0' AFTER `id_idioma`;

CREATE TABLE `sgm_news_posts` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_news_posts` ADD `id_user` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_news_posts` ADD `id_grupo` int(11) NOT NULL default '0' AFTER `id_user`;
ALTER TABLE `sgm_news_posts` ADD `comentarios` tinyint(1) NOT NULL default '0' AFTER `id_grupo`;
ALTER TABLE `sgm_news_posts` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `comentarios`;
ALTER TABLE `sgm_news_posts` ADD `validada` tinyint(1) NOT NULL default '1' AFTER `visible`;
ALTER TABLE `sgm_news_posts` ADD `asunto` varchar(100) NOT NULL default '' AFTER `validada`;
ALTER TABLE `sgm_news_posts` ADD `cuerpo` longtext AFTER `asunto`;
ALTER TABLE `sgm_news_posts` ADD `fecha` date default NULL AFTER `cuerpo`;
ALTER TABLE `sgm_news_posts` ADD `hora` time default NULL AFTER `fecha`;
ALTER TABLE `sgm_news_posts` ADD `lecturas` int(11) NOT NULL default '0' AFTER `hora`;
ALTER TABLE `sgm_news_posts` ADD `id_site` int(11) NOT NULL default '0' AFTER `lecturas`;
ALTER TABLE `sgm_news_posts` ADD `idioma` varchar(5) NOT NULL default 'ES' AFTER `id_site`;

CREATE TABLE `sgm_news_sites` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_news_sites` ADD `name` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_news_sites` ADD `url` varchar(255) NOT NULL default '' AFTER `name`;
ALTER TABLE `sgm_news_sites` ADD `banner` varchar(50) NOT NULL default '' AFTER `url`;
ALTER TABLE `sgm_news_sites` ADD `showonweb` tinyint(1) NOT NULL default '1' AFTER `banner`;

CREATE TABLE `sgm_mantenimiento` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_mantenimiento` ADD `fecha` date NOT NULL default '0000-00-00' AFTER `id`;
ALTER TABLE `sgm_mantenimiento` ADD `id_equipo` int(11) NOT NULL default '0' AFTER `fecha`;
ALTER TABLE `sgm_mantenimiento` ADD `id_tipo_mantenimiento` int(11) NOT NULL default '0' AFTER `id_equipo`;
ALTER TABLE `sgm_mantenimiento` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_tipo_mantenimiento`;

CREATE TABLE `sgm_mantenimiento_tipo` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_mantenimiento_tipo` ADD `nombre` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_mantenimiento_tipo` ADD `descripcion` longtext NOT NULL AFTER `nombre`;
ALTER TABLE `sgm_mantenimiento_tipo` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcion`;
ALTER TABLE `sgm_mantenimiento_tipo` ADD `id_clase` varchar(50) NOT NULL default '' AFTER `visible`;

CREATE TABLE `sgm_mantenimiento_clase` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_mantenimiento_clase` ADD `clase` varchar(50) NOT NULL default '' AFTER `id`;
INSERT INTO `sgm_mantenimiento_clase` VALUES (1,'Calibracion');
INSERT INTO `sgm_mantenimiento_clase` VALUES (2,'Matenimiento');

CREATE TABLE `sgm_mantenimiento_tipo_plantilla` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_mantenimiento_tipo_plantilla` ADD `id_plantilla` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_mantenimiento_tipo_plantilla` ADD `id_tipo_mantenimiento` int(11) NOT NULL default '0' AFTER `id_plantilla`;
ALTER TABLE `sgm_mantenimiento_tipo_plantilla` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_tipo_mantenimiento`;

CREATE TABLE `sgm_material` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_material` ADD `material` varchar(100) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_material` ADD `codigo` varchar(50) NOT NULL default '' AFTER `material`;
ALTER TABLE `sgm_material` ADD `descripcion` varchar(255) NOT NULL default '' AFTER `codigo`;
ALTER TABLE `sgm_material` ADD `x` decimal(11,3) NOT NULL default '0.000' AFTER `descripcion`;
ALTER TABLE `sgm_material` ADD `y` decimal(11,3) NOT NULL default '0.000' AFTER `x`;
ALTER TABLE `sgm_material` ADD `z` decimal(11,3) NOT NULL default '0.000' AFTER `y`;
ALTER TABLE `sgm_material` ADD `radio` decimal(11,3) NOT NULL default '0.000' AFTER `z`;
ALTER TABLE `sgm_material` ADD `diametro` decimal(11,3) NOT NULL default '0.000' AFTER `radio`;
ALTER TABLE `sgm_material` ADD `peso` decimal(11,7) NOT NULL default '0.000' AFTER `diametro`;
ALTER TABLE `sgm_material` ADD `preu_kl` decimal(11,3) NOT NULL default '0.000' AFTER `peso`;
ALTER TABLE `sgm_material` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `preu_kl`;
ALTER TABLE `sgm_material` ADD `peso_espec` decimal(16,10) NOT NULL default '0.000' AFTER `visible`;
ALTER TABLE `sgm_material` ADD `tarifa` decimal(11,2) NOT NULL default '0.00' AFTER `peso_espec`;
ALTER TABLE `sgm_material` ADD `especifico` tinyint(1) NOT NULL default '2' AFTER `tarifa`;
ALTER TABLE `sgm_material` ADD `pes_mm3` decimal(16,10) NOT NULL default '0.000' AFTER `especifico`;
ALTER TABLE `sgm_material` ADD `preu_mm3` decimal(16,10) NOT NULL default '0.000' AFTER `pes_mm3`;
ALTER TABLE `sgm_material` ADD `calc_preu` tinyint(1) NOT NULL default '2' AFTER `preu_mm3`;
ALTER TABLE `sgm_material` ADD `preu_total` decimal(16,4) NOT NULL default '0.000' AFTER `calc_preu`;

CREATE TABLE `sgm_operaciones` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_operaciones` ADD `operacion` varchar(255) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_operaciones` ADD `descripcion` varchar(255) NOT NULL default '' AFTER `operacion`;
ALTER TABLE `sgm_operaciones` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcion`;

CREATE TABLE `sgm_pedidos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`));
ALTER TABLE `sgm_pedidos` ADD `prioridad1` longtext NOT NULL AFTER `id`;
ALTER TABLE `sgm_pedidos` ADD `prioridad2` longtext NOT NULL AFTER `prioridad1`;
ALTER TABLE `sgm_pedidos` ADD `prioridad3` longtext NOT NULL AFTER `prioridad2`;
ALTER TABLE `sgm_pedidos` ADD `prioridad4` longtext NOT NULL AFTER `prioridad3`;
*/

CREATE TABLE `sgm_plan` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_plan` ADD `nombre` varchar(150) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_plan` ADD `id_plantilla` int(11) NOT NULL default '0' AFTER `nombre`;
ALTER TABLE `sgm_plan` ADD `id_version` int(11) NOT NULL default '0' AFTER `id_plantilla`;
ALTER TABLE `sgm_plan` ADD `id_plan` int(11) NOT NULL default '0' AFTER `id_version`;
ALTER TABLE `sgm_plan` ADD `id_plan_tipo` int(11) NOT NULL default '0' AFTER `id_plan`;
ALTER TABLE `sgm_plan` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_plan_tipo`;

CREATE TABLE `sgm_plan_tipos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_plan_tipos` ADD `nombre` varchar(150) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_plan_tipos` ADD `descripcion` varchar(250) NOT NULL default '' AFTER `nombre`;
ALTER TABLE `sgm_plan_tipos` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcion`;
ALTER TABLE `sgm_plan_tipos` ADD `mutable` tinyint(1) NOT NULL default '1' AFTER `visible`;
ALTER TABLE `sgm_plan_tipos` ADD `clonable` tinyint(1) NOT NULL default '1' AFTER `mutable`;
ALTER TABLE `sgm_plan_tipos` ADD `cuerpo` tinyint(1) NOT NULL default '1' AFTER `clonable`;
ALTER TABLE `sgm_plan_tipos` ADD `plantilla` tinyint(1) NOT NULL default '1' AFTER `cuerpo`;
ALTER TABLE `sgm_plan_tipos` ADD `subplans` tinyint(1) NOT NULL default '1' AFTER `plantilla`;

CREATE TABLE `sgm_plan_tipos_relaciones` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_plan_tipos_relaciones` ADD `id_tipo_origen` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_plan_tipos_relaciones` ADD `id_tipo_destino` int(11) NOT NULL default '0' AFTER `id_tipo_origen`;

/*
CREATE TABLE `sgm_proyecto` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_proyecto` ADD `codigo` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_proyecto` ADD `proyecto` varchar(50) NOT NULL default '' AFTER `codigo`;
ALTER TABLE `sgm_proyecto` ADD `descripcion` longtext NOT NULL AFTER `proyecto`;
ALTER TABLE `sgm_proyecto` ADD `id_area` varchar(50) NOT NULL default '' AFTER `descripcion`;
ALTER TABLE `sgm_proyecto` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_area`;
ALTER TABLE `sgm_proyecto` ADD `activo` tinyint(1) NOT NULL default '1' AFTER `visible`;

CREATE TABLE `sgm_proyecto_area` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_proyecto_area` ADD `area` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_proyecto_area` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `area`;
*/

CREATE TABLE `sgm_recibos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_recibos` ADD `numero` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_recibos` ADD `id_factura` int(11) NOT NULL default '0' AFTER `numero`;
ALTER TABLE `sgm_recibos` ADD `numero_serie` int(11) NOT NULL default '0' AFTER `id_factura`;
ALTER TABLE `sgm_recibos` ADD `fecha` date NOT NULL default '0000-00-00' AFTER `numero_serie`;
ALTER TABLE `sgm_recibos` ADD `fecha_vencimiento` date NOT NULL default '0000-00-00' AFTER `fecha`;
ALTER TABLE `sgm_recibos` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `fecha_vencimiento`;
ALTER TABLE `sgm_recibos` ADD `nombre` varchar(255) default NULL AFTER `visible`;
ALTER TABLE `sgm_recibos` ADD `nif` varchar(15) default NULL AFTER `nombre`;
ALTER TABLE `sgm_recibos` ADD `direccion` varchar(150) default NULL AFTER `nif`;
ALTER TABLE `sgm_recibos` ADD `poblacion` varchar(50) default NULL AFTER `direccion`;
ALTER TABLE `sgm_recibos` ADD `cp` varchar(5) default NULL AFTER `poblacion`;
ALTER TABLE `sgm_recibos` ADD `provincia` varchar(15) default NULL AFTER `cp`;
ALTER TABLE `sgm_recibos` ADD `onombre` varchar(255) default NULL AFTER `provincia`;
ALTER TABLE `sgm_recibos` ADD `onif` varchar(15) default NULL AFTER `onombre`;
ALTER TABLE `sgm_recibos` ADD `odireccion` varchar(150) default NULL AFTER `onif`;
ALTER TABLE `sgm_recibos` ADD `opoblacion` varchar(50) default NULL AFTER `odireccion`;
ALTER TABLE `sgm_recibos` ADD `ocp` varchar(5) default NULL AFTER `opoblacion`;
ALTER TABLE `sgm_recibos` ADD `oprovincia` varchar(15) default NULL AFTER `ocp`;
ALTER TABLE `sgm_recibos` ADD `entidad_bancaria` varchar(50) default NULL AFTER `oprovincia`;
ALTER TABLE `sgm_recibos` ADD `numero_cuenta` varchar(20) default NULL AFTER `entidad_bancaria`;
ALTER TABLE `sgm_recibos` ADD `total` decimal(11,3) NOT NULL default '0.000' AFTER `numero_cuenta`;
ALTER TABLE `sgm_recibos` ADD `id_cliente` int(5) NOT NULL default '0' AFTER `total`;
ALTER TABLE `sgm_recibos` ADD `id_user` int(5) NOT NULL default '0' AFTER `id_cliente`;
ALTER TABLE `sgm_recibos` ADD `id_tipo_pago` int(11) NOT NULL default '0' AFTER `id_user`;
ALTER TABLE `sgm_recibos` ADD `cobrada` tinyint(1) NOT NULL default '0' AFTER `id_tipo_pago`;

CREATE TABLE `sim_rebuts` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_rebuts` ADD `numero` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_rebuts` ADD `id_factura` int(11) NOT NULL default '0' AFTER `numero`;
ALTER TABLE `sim_rebuts` ADD `numero_serie` int(11) NOT NULL default '0' AFTER `id_factura`;
ALTER TABLE `sim_rebuts` ADD `data` date NOT NULL default '0000-00-00' AFTER `numero_serie`;
ALTER TABLE `sim_rebuts` ADD `data_venciment` date NOT NULL default '0000-00-00' AFTER `data`;
ALTER TABLE `sim_rebuts` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `data_venciment`;
ALTER TABLE `sim_rebuts` ADD `total` decimal(11,3) NOT NULL default '0.000' AFTER `visible`;
ALTER TABLE `sim_rebuts` ADD `id_client` int(5) NOT NULL default '0' AFTER `total`;
ALTER TABLE `sim_rebuts` ADD `id_user` int(5) NOT NULL default '0' AFTER `id_client`;
ALTER TABLE `sim_rebuts` ADD `id_tipus_pagament` int(11) NOT NULL default '0' AFTER `id_user`;
ALTER TABLE `sim_rebuts` ADD `cobrat` tinyint(1) NOT NULL default '0' AFTER `id_tipus_pagament`;

/*
CREATE TABLE `sgm_recursos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_recursos` ADD `recurso`  varchar(100) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_recursos` ADD `coste_hora` decimal(11,3) NOT NULL default '0.000' AFTER `recurso`;
ALTER TABLE `sgm_recursos` ADD `notas`  varchar(255) NOT NULL default '' AFTER `coste_hora`;
ALTER TABLE `sgm_recursos` ADD `unitat` tinyint(1) NOT NULL default '0' AFTER `notas`;
ALTER TABLE `sgm_recursos` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `unitat`;
ALTER TABLE `sgm_recursos` ADD `id_grupo` int(11) NOT NULL default '0' AFTER `visible`;
ALTER TABLE `sgm_recursos` ADD `temps_pre` int(11) NOT NULL default '0' AFTER `id_grupo`;
ALTER TABLE `sgm_recursos` ADD `pred` tinyint(1) NOT NULL default '0' AFTER `temps_pre`;
ALTER TABLE `sgm_recursos` ADD `id_estado` int(11) NOT NULL default '0' AFTER `pred`;

CREATE TABLE `sgm_recursos_estados` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_recursos_estados` ADD `estado`  varchar(100) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_recursos_estados` ADD `horas` int(11) NOT NULL default '0' AFTER `estado`;
ALTER TABLE `sgm_recursos_estados` ADD `color`  varchar(100) NOT NULL default '' AFTER `horas`;
ALTER TABLE `sgm_recursos_estados` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `color`;

CREATE TABLE `sgm_recursos_estados_ad` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_recursos_estados_ad` ADD `estado`  varchar(100) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_recursos_estados_ad` ADD `color`  varchar(100) NOT NULL default '' AFTER `estado`;
ALTER TABLE `sgm_recursos_estados_ad` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `color`;

CREATE TABLE `sgm_recursos_grupo` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_recursos_grupo` ADD `grupo`  varchar(100) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_recursos_grupo` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `grupo`;
*/

CREATE TABLE `sgm_rrhh_bolsa` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY (`id`) );
ALTER TABLE `sgm_rrhh_bolsa` ADD `fecha` date NOT NULL default '0000-00-00' AFTER `id`;
ALTER TABLE `sgm_rrhh_bolsa` ADD `contacto` longtext NOT NULL AFTER `fecha`;
ALTER TABLE `sgm_rrhh_bolsa` ADD `cv` longtext NOT NULL AFTER `contacto`;
ALTER TABLE `sgm_rrhh_bolsa` ADD `carta` longtext NOT NULL AFTER `cv`;
ALTER TABLE `sgm_rrhh_bolsa` ADD `notas` longtext NOT NULL AFTER `carta`;
ALTER TABLE `sgm_rrhh_bolsa` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `notas`;

CREATE TABLE `sgm_rrhh_ofertas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY (`id`) );
ALTER TABLE `sgm_rrhh_ofertas` ADD `fecha` date NOT NULL default '0000-00-00' AFTER `id`;
ALTER TABLE `sgm_rrhh_ofertas` ADD `descripcion` longtext NOT NULL AFTER `fecha`;
ALTER TABLE `sgm_rrhh_ofertas` ADD `requisitos` longtext NOT NULL AFTER `descripcion`;
ALTER TABLE `sgm_rrhh_ofertas` ADD `condiciones` longtext NOT NULL AFTER `requisitos`;
ALTER TABLE `sgm_rrhh_ofertas` ADD `localidad` varchar(75) NOT NULL default '' AFTER `condiciones`;
ALTER TABLE `sgm_rrhh_ofertas` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `localidad`;
ALTER TABLE `sgm_rrhh_ofertas` ADD `vigente` tinyint(1) NOT NULL default '1' AFTER `visible`;

CREATE TABLE `sgm_rrhh_departamento` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_rrhh_departamento` ADD `id_departamento` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_rrhh_departamento` ADD `departamento` varchar(255) default NULL AFTER `id_departamento`;
ALTER TABLE `sgm_rrhh_departamento` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `departamento`;

CREATE TABLE `sgm_rrhh_puesto_trabajo` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_rrhh_puesto_trabajo` ADD `puesto` varchar(255) default NULL AFTER `id`;
ALTER TABLE `sgm_rrhh_puesto_trabajo` ADD `id_departamento` int(11) NOT NULL default '0' AFTER `puesto`;
ALTER TABLE `sgm_rrhh_puesto_trabajo` ADD `tareas` longtext NOT NULL AFTER `id_departamento`;
ALTER TABLE `sgm_rrhh_puesto_trabajo` ADD `f_general` longtext NOT NULL AFTER `tareas`;
ALTER TABLE `sgm_rrhh_puesto_trabajo` ADD `f_especifica` longtext NOT NULL AFTER `f_general`;
ALTER TABLE `sgm_rrhh_puesto_trabajo` ADD `experiencia` longtext NOT NULL AFTER `f_especifica`;
ALTER TABLE `sgm_rrhh_puesto_trabajo` ADD `habilidades` longtext NOT NULL AFTER `experiencia`;
ALTER TABLE `sgm_rrhh_puesto_trabajo` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `habilidades`;
ALTER TABLE `sgm_rrhh_puesto_trabajo` ADD `activo` tinyint(1) NOT NULL default '1' AFTER `visible`;
ALTER TABLE `sgm_rrhh_puesto_trabajo` ADD `numero` int(15) NOT NULL default '0' AFTER `visible`;

CREATE TABLE `sgm_rrhh_empleado` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_rrhh_empleado` ADD `nombre` varchar(255) default NULL AFTER `id`;
ALTER TABLE `sgm_rrhh_empleado` ADD `fecha_incor` date NOT NULL default '0000-00-00' AFTER `nombre`;
ALTER TABLE `sgm_rrhh_empleado` ADD `plan_acogida` longtext NOT NULL AFTER `fecha_incor`;
ALTER TABLE `sgm_rrhh_empleado` ADD `formacion` longtext NOT NULL AFTER `plan_acogida`;
ALTER TABLE `sgm_rrhh_empleado` ADD `trayectoria` longtext NOT NULL AFTER `formacion`;
ALTER TABLE `sgm_rrhh_empleado` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `trayectoria`;
ALTER TABLE `sgm_rrhh_empleado` ADD `numero` int(15) NOT NULL default '0' AFTER `visible`;
ALTER TABLE `sgm_rrhh_empleado` CHANGE `numero` `codigo` VARCHAR( 25 ) DEFAULT NULL;
ALTER TABLE `sgm_rrhh_empleado` ADD `nif` varchar(15) NOT NULL default '' AFTER `nombre`;
ALTER TABLE `sgm_rrhh_empleado` ADD `cvia` char(2) NOT NULL default '' AFTER `nif`;
ALTER TABLE `sgm_rrhh_empleado` ADD `direccion` varchar(50) NOT NULL default '' AFTER `cvia`;
ALTER TABLE `sgm_rrhh_empleado` ADD `poblacion` varchar(50) NOT NULL default '' AFTER `direccion`;
ALTER TABLE `sgm_rrhh_empleado` ADD `cp` varchar(5) NOT NULL default '' AFTER `poblacion`;
ALTER TABLE `sgm_rrhh_empleado` ADD `provincia` varchar(15) NOT NULL default '' AFTER `cp`;
ALTER TABLE `sgm_rrhh_empleado` ADD `id_pais` int(11) NOT NULL default '0' AFTER `provincia`;
ALTER TABLE `sgm_rrhh_empleado` ADD `telefono` varchar(15) NOT NULL default '' AFTER `id_pais`;
ALTER TABLE `sgm_rrhh_empleado` ADD `telefono2` varchar(15) NOT NULL default '' AFTER `telefono`;
ALTER TABLE `sgm_rrhh_empleado` ADD `fax` varchar(15) NOT NULL default '' AFTER `telefono2`;
ALTER TABLE `sgm_rrhh_empleado` ADD `fax2` varchar(15) NOT NULL default '' AFTER `fax`;
ALTER TABLE `sgm_rrhh_empleado` ADD `mail` varchar(50) NOT NULL default '' AFTER `fax2`;
ALTER TABLE `sgm_rrhh_empleado` ADD `notas` longtext AFTER `mail`;
ALTER TABLE `sgm_rrhh_empleado` ADD `cuentabancaria` varchar(30) default NULL AFTER `notas`;
ALTER TABLE `sgm_rrhh_empleado` ADD `entidadbancaria` varchar(100) NOT NULL default '' AFTER `cuentabancaria`;
ALTER TABLE `sgm_rrhh_empleado` ADD `domiciliobancario` varchar(255) NOT NULL default '' AFTER `entidadbancaria`;

CREATE TABLE `sgm_rrhh_puesto_empleado` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_rrhh_puesto_empleado` ADD `id_empleado` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_rrhh_puesto_empleado` ADD `id_puesto` int(11) NOT NULL default '0' AFTER `id_empleado`;
ALTER TABLE `sgm_rrhh_puesto_empleado` ADD `fecha_alta` date NOT NULL default '0000-00-00' AFTER `id_puesto`;
ALTER TABLE `sgm_rrhh_puesto_empleado` ADD `fecha_baja` date NOT NULL default '0000-00-00' AFTER `fecha_alta`;
ALTER TABLE `sgm_rrhh_puesto_empleado` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `fecha_baja`;

CREATE TABLE `sgm_rrhh_formacion` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_rrhh_formacion` ADD `numero` varchar(15) NOT NULL default '1' AFTER `id`;
ALTER TABLE `sgm_rrhh_formacion` ADD `nombre` varchar(255) default NULL AFTER `numero`;
ALTER TABLE `sgm_rrhh_formacion` ADD `tipo` tinyint(1) NOT NULL default '1' AFTER `nombre`;
ALTER TABLE `sgm_rrhh_formacion` ADD `fecha` date NOT NULL default '0000-00-00' AFTER `tipo`;
ALTER TABLE `sgm_rrhh_formacion` ADD `fecha_inicio` date NOT NULL default '0000-00-00' AFTER `fecha`;
ALTER TABLE `sgm_rrhh_formacion` ADD `fecha_fin` date NOT NULL default '0000-00-00' AFTER `fecha_inicio`;
ALTER TABLE `sgm_rrhh_formacion` ADD `impartidor` varchar(255) default NULL AFTER `fecha_fin`;
ALTER TABLE `sgm_rrhh_formacion` ADD `duracion` tinyint(11) NOT NULL default '1' AFTER `impartidor`;
ALTER TABLE `sgm_rrhh_formacion` ADD `observaciones` longtext NOT NULL AFTER `duracion`;
ALTER TABLE `sgm_rrhh_formacion` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `observaciones`;
ALTER TABLE `sgm_rrhh_formacion` ADD `temario` longtext NOT NULL AFTER `visible`;
ALTER TABLE `sgm_rrhh_formacion` ADD `id_plan` int(11) NOT NULL default '0' AFTER `temario`;
ALTER TABLE `sgm_rrhh_formacion` ADD `planificado` tinyint(1) NOT NULL default '0' AFTER `id_plan`;
ALTER TABLE `sgm_rrhh_formacion` ADD `realizado` tinyint(1) NOT NULL default '0' AFTER `planificado`;
ALTER TABLE `sgm_rrhh_formacion` ADD `coste` varchar(15) NOT NULL default '0' AFTER `realizado`;

CREATE TABLE `sgm_rrhh_formacion_plan` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_rrhh_formacion_plan` ADD `nombre` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_rrhh_formacion_plan` ADD `necesidades` longtext NOT NULL AFTER `nombre`;
ALTER TABLE `sgm_rrhh_formacion_plan` ADD `objetivos` longtext NOT NULL AFTER `necesidades`;
ALTER TABLE `sgm_rrhh_formacion_plan` ADD `metodos` longtext NOT NULL AFTER `objetivos`;
ALTER TABLE `sgm_rrhh_formacion_plan` ADD `resultados` longtext NOT NULL AFTER `metodos`;
ALTER TABLE `sgm_rrhh_formacion_plan` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `resultados`;

CREATE TABLE `sgm_rrhh_formacion_empleado` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_rrhh_formacion_empleado` ADD `id_empleado` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_rrhh_formacion_empleado` ADD `id_curso` int(11) NOT NULL default '0' AFTER `id_empleado`;
ALTER TABLE `sgm_rrhh_formacion_empleado` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_curso`;

CREATE TABLE `sgm_servidores_correo` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_servidores_correo` ADD `servidorSMTP` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_servidores_correo` ADD `sgm_user` varchar(50) NOT NULL default '' AFTER `servidorSMTP`;
ALTER TABLE `sgm_servidores_correo` ADD `usuari` varchar(50) NOT NULL default '' AFTER `sgm_user`;
ALTER TABLE `sgm_servidores_correo` ADD `pass` varchar(50) NOT NULL default '' AFTER `usuari`;
ALTER TABLE `sgm_servidores_correo` ADD `port` int(11) NOT NULL default '0' AFTER `pass`;
ALTER TABLE `sgm_servidores_correo` ADD `direccio` varchar(50) NOT NULL default '' AFTER `port`;
ALTER TABLE `sgm_servidores_correo` ADD `nom_correu` varchar(50) NOT NULL default '' AFTER `direccio`;
ALTER TABLE `sgm_servidores_correo` ADD `pred` tinyint(1) NOT NULL default '0' AFTER `nom_correu`;
ALTER TABLE `sgm_servidores_correo` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `pred`;

/*
CREATE TABLE `sgm_stock` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_stock` ADD `id_article` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_stock` ADD `id_almacen` int(11) NOT NULL default '0' AFTER `id_article`;
ALTER TABLE `sgm_stock` ADD `unidades` decimal(11,2) NOT NULL default '0.00' AFTER `id_almacen`;
ALTER TABLE `sgm_stock` ADD `id_cabezera` int(11) NOT NULL default '0' AFTER `unidades`;
ALTER TABLE `sgm_stock` ADD `entrada` tinyint(1) NOT NULL default '1' AFTER `id_cabezera`;
ALTER TABLE `sgm_stock` ADD `web` tinyint(1) NOT NULL default '0' AFTER `entrada`;
ALTER TABLE `sgm_stock` ADD `fecha` date NOT NULL default '0000-00-00' AFTER `web`;
ALTER TABLE `sgm_stock` ADD `id_user` int(11) NOT NULL default '0' AFTER `fecha`;
ALTER TABLE `sgm_stock` ADD `pvp` decimal(10,2) NOT NULL default '0.00' AFTER `id_user`;
ALTER TABLE `sgm_stock` ADD `pvd` decimal(10,2) NOT NULL default '0.00' AFTER `pvp`;
ALTER TABLE `sgm_stock` ADD `vigente` tinyint(1) NOT NULL default '0' AFTER `pvd`;
ALTER TABLE `sgm_stock` ADD `id_compte_entradas` int(11) NOT NULL default '0' AFTER `vigente` ;
ALTER TABLE `sgm_stock` CHANGE `pvp` `pvp` DECIMAL( 10, 3 ) NOT NULL DEFAULT '0.000';
ALTER TABLE `sgm_stock` CHANGE `pvd` `pvd` DECIMAL( 10, 3 ) NOT NULL DEFAULT '0.000';

CREATE TABLE `sgm_stock_almacenes` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_stock_almacenes` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id`;
ALTER TABLE `sgm_stock_almacenes` ADD `nombre` varchar(255) NOT NULL default '' AFTER `visible`;
ALTER TABLE `sgm_stock_almacenes` ADD `direccion` varchar(50) NOT NULL default '' AFTER `nombre`;
ALTER TABLE `sgm_stock_almacenes` ADD `poblacion` varchar(30) NOT NULL default '' AFTER `direccion`;
ALTER TABLE `sgm_stock_almacenes` ADD `cp` varchar(5) NOT NULL default '' AFTER `poblacion`;
ALTER TABLE `sgm_stock_almacenes` ADD `provincia` varchar(15) NOT NULL default '' AFTER `cp`;
ALTER TABLE `sgm_stock_almacenes` ADD `mail` varchar(50) NOT NULL default '' AFTER `provincia`;
ALTER TABLE `sgm_stock_almacenes` ADD `telefono` varchar(15) NOT NULL default '' AFTER `mail`;
ALTER TABLE `sgm_stock_almacenes` ADD `notas` longtext AFTER `telefono`;

CREATE TABLE `sgm_stock_almacenes_pasillo` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_stock_almacenes_pasillo` ADD `id_almacen` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_stock_almacenes_pasillo` ADD `orden` int(11) NOT NULL default '0' AFTER `id_almacen`;
ALTER TABLE `sgm_stock_almacenes_pasillo` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `orden`;
ALTER TABLE `sgm_stock_almacenes_pasillo` ADD `nombre` varchar(255) NOT NULL default '' AFTER `visible`;

CREATE TABLE `sgm_stock_almacenes_pasillo_estanteria` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_stock_almacenes_pasillo_estanteria` ADD `id_pasillo` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_stock_almacenes_pasillo_estanteria` ADD `orden` int(11) NOT NULL default '0' AFTER `id_pasillo`;
ALTER TABLE `sgm_stock_almacenes_pasillo_estanteria` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `orden`;
ALTER TABLE `sgm_stock_almacenes_pasillo_estanteria` ADD `nombre` varchar(255) NOT NULL default '' AFTER `visible`;

CREATE TABLE `sgm_stock_almacenes_pasillo_estanteria_seccion` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_stock_almacenes_pasillo_estanteria_seccion` ADD `id_estanteria` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_stock_almacenes_pasillo_estanteria_seccion` ADD `orden` int(11) NOT NULL default '0' AFTER `id_estanteria`;
ALTER TABLE `sgm_stock_almacenes_pasillo_estanteria_seccion` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `orden`;
ALTER TABLE `sgm_stock_almacenes_pasillo_estanteria_seccion` ADD `nombre` varchar(255) NOT NULL default '' AFTER `visible`;
ALTER TABLE `sgm_stock_almacenes_pasillo_estanteria_seccion` ADD `porcentage` int(11) NOT NULL default '0' AFTER `nombre`;

CREATE TABLE `sgm_sys_ip_local` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_sys_ip_local` ADD `subxarxa` varchar(12) default NULL AFTER `id`;  
*/

CREATE TABLE `sgm_tamany_paper` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_tamany_paper` ADD `nombre` varchar(255) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_tamany_paper` ADD `x` int(11) NOT NULL default '0' AFTER `nombre`;
ALTER TABLE `sgm_tamany_paper` ADD `y` int(11) NOT NULL default '0' AFTER `x`;
ALTER TABLE `sgm_tamany_paper` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `y`;
INSERT INTO `sgm_tamany_paper` VALUES (1,'Carta',279,216,1);
INSERT INTO `sgm_tamany_paper` VALUES (2,'Oficio',330,216,1);
INSERT INTO `sgm_tamany_paper` VALUES (3,'Folio',320,220,1);
INSERT INTO `sgm_tamany_paper` VALUES (4,'DIN A5',210,148,1);
INSERT INTO `sgm_tamany_paper` VALUES (5,'DIN A4',297,210,1);
INSERT INTO `sgm_tamany_paper` VALUES (6,'DIN A3',420,297,1);
INSERT INTO `sgm_tamany_paper` VALUES (7,'DIN A2',594,420,1);
INSERT INTO `sgm_tamany_paper` VALUES (8,'DIN A1',841,594,1);
INSERT INTO `sgm_tamany_paper` VALUES (9,'DIN A0',1189,841,1);
ALTER TABLE `sgm_tamany_paper` ADD `predeterminado` tinyint(1) NOT NULL default '0' AFTER `visible`;
UPDATE `sgm_tamany_paper` SET `x`='216',`y`='279' WHERE `id` =1;
UPDATE `sgm_tamany_paper` SET `x`='216',`y`='330' WHERE `id` =2;
UPDATE `sgm_tamany_paper` SET `x`='220',`y`='320' WHERE `id` =3;
UPDATE `sgm_tamany_paper` SET `x`='148',`y`='210' WHERE `id` =4;
UPDATE `sgm_tamany_paper` SET `x`='210',`y`='297' WHERE `id` =5;
UPDATE `sgm_tamany_paper` SET `x`='297',`y`='420' WHERE `id` =6;
UPDATE `sgm_tamany_paper` SET `x`='420',`y`='594' WHERE `id` =7;
UPDATE `sgm_tamany_paper` SET `x`='594',`y`='841' WHERE `id` =8;
UPDATE `sgm_tamany_paper` SET `x`='841',`y`='1189' WHERE `id` =9;

CREATE TABLE `sim_tamany_paper` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_tamany_paper` ADD `nom` varchar(255) NOT NULL default '' AFTER `id`;
ALTER TABLE `sim_tamany_paper` ADD `y` int(11) NOT NULL default '0' AFTER `nom`;
ALTER TABLE `sim_tamany_paper` ADD `x` int(11) NOT NULL default '0' AFTER `y`;
ALTER TABLE `sim_tamany_paper` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `x`;
ALTER TABLE `sgm_tamany_paper` ADD `predeterminat` tinyint(1) NOT NULL default '0' AFTER `visible`;
INSERT INTO `sim_tamany_paper` VALUES (1,'Carta',279,216,1,0);
INSERT INTO `sim_tamany_paper` VALUES (2,'Oficio',330,216,1,0);
INSERT INTO `sim_tamany_paper` VALUES (3,'Folio',320,220,1,0);
INSERT INTO `sim_tamany_paper` VALUES (4,'DIN A5',210,148,1,0);
INSERT INTO `sim_tamany_paper` VALUES (5,'DIN A4',297,210,1,0);
INSERT INTO `sim_tamany_paper` VALUES (6,'DIN A3',420,297,1,0);
INSERT INTO `sim_tamany_paper` VALUES (7,'DIN A2',594,420,1,0);
INSERT INTO `sim_tamany_paper` VALUES (8,'DIN A1',841,594,1,0);
INSERT INTO `sim_tamany_paper` VALUES (9,'DIN A0',1189,841,1,0);

/*
CREATE TABLE `sgm_tareas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_tareas` ADD `id_origen` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_tareas` ADD `id_usuario` int(11) NOT NULL default '0' AFTER `id_origen`;
ALTER TABLE `sgm_tareas` ADD `id_usuario_destino` int(11) NOT NULL default '0' AFTER `id_usuario`;
ALTER TABLE `sgm_tareas` ADD `id_cliente` int(11) NOT NULL default '0' AFTER `id_usuario_destino`;
ALTER TABLE `sgm_tareas` ADD `id_usuario_finalizacion` int(11) NOT NULL default '0' AFTER `id_cliente`;
ALTER TABLE `sgm_tareas` ADD `data_registro` datetime default NULL AFTER `id_usuario_finalizacion`;
ALTER TABLE `sgm_tareas` ADD `data_insert` datetime default NULL AFTER `data_registro`;
ALTER TABLE `sgm_tareas` ADD `data_prevision` datetime default NULL AFTER `data_insert`;
ALTER TABLE `sgm_tareas` ADD `data_margen` datetime default NULL AFTER `data_prevision`;
ALTER TABLE `sgm_tareas` ADD `data_finalizacion` datetime default NULL AFTER `data_margen`;
ALTER TABLE `sgm_tareas` ADD `id_estado` int(11) NOT NULL default '0' AFTER `data_finalizacion`;
ALTER TABLE `sgm_tareas` ADD `id_tipo` int(11) NOT NULL default '0' AFTER `id_estado`;
ALTER TABLE `sgm_tareas` ADD `id_entrada` int(11) NOT NULL default '0' AFTER `id_tipo`;
ALTER TABLE `sgm_tareas` ADD `tiempo` int(11) NOT NULL default '0' AFTER `id_entrada`;
ALTER TABLE `sgm_tareas` ADD `notas_registro` longtext AFTER `tiempo`;
ALTER TABLE `sgm_tareas` ADD `notas_conclusion` longtext AFTER `notas_registro`;
ALTER TABLE `sgm_tareas` ADD `id_servicio` int(11) NOT NULL default '0' AFTER `notas_conclusion`;
ALTER TABLE `sgm_tareas` ADD `programada` int(2) NOT NULL default '0' AFTER `id_servicio`;
ALTER TABLE `sgm_tareas` ADD `id_departamento` int(11) NOT NULL default '0' AFTER `programada`;
ALTER TABLE `sgm_tareas` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_departamento` ;
ALTER TABLE `sgm_tareas` ADD `cliente_nombre` varchar(150) default NULL AFTER `visible`;
ALTER TABLE `sgm_tareas` ADD `cliente_contacto` varchar(150) default NULL AFTER `cliente_nombre`;
ALTER TABLE `sgm_tareas` ADD `asunto` varchar(150) default NULL AFTER `cliente_contacto`;
ALTER TABLE `sgm_tareas` ADD `privada` tinyint(1) NOT NULL default '1' AFTER `asunto` ;
ALTER TABLE `sgm_tareas` ADD `id_2` int(11) NOT NULL default '0' AFTER `privada`;
ALTER TABLE `sgm_tareas` ADD `id_3` int(11) NOT NULL default '0' AFTER `id_2`;
ALTER TABLE `sgm_tareas` ADD `id_4` int(11) NOT NULL default '0' AFTER `id_3`;
ALTER TABLE `sgm_tareas` ADD `id_5` int(11) NOT NULL default '0' AFTER `id_4`;
ALTER TABLE `sgm_tareas` ADD `id_6` int(11) NOT NULL default '0' AFTER `id_5`;
ALTER TABLE `sgm_tareas` ADD `id_7` int(11) NOT NULL default '0' AFTER `id_6`;
ALTER TABLE `sgm_tareas` ADD `id_8` int(11) NOT NULL default '0' AFTER `id_7`;
ALTER TABLE `sgm_tareas` ADD `id_9` int(11) NOT NULL default '0' AFTER `id_8`;
ALTER TABLE `sgm_tareas` ADD `id_10` int(11) NOT NULL default '0' AFTER `id_9`;
ALTER TABLE `sgm_tareas` ADD `id_agenda` int(11) NOT NULL default '0' AFTER `id_10`;
ALTER TABLE `sgm_tareas` ADD `aviso` int(11) NOT NULL default '0' AFTER `id_agenda`;

CREATE TABLE `sgm_tareas_actuacions` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_tareas_actuacions` ADD `id_tarea` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_tareas_actuacions` ADD `notas` longtext AFTER `id_tarea`;
ALTER TABLE `sgm_tareas_actuacions` ADD `id_estado` int(11) NOT NULL default '0' AFTER `notas`;

CREATE TABLE `sgm_tareas_actuacions_usuaris` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_tareas_actuacions_usuaris` ADD `id_actuacio` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_tareas_actuacions_usuaris` ADD `id_usuario` int(11) NOT NULL default '0' AFTER `id_actuacio`;

CREATE TABLE `sgm_tareas_canvio_usuario` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_tareas_canvio_usuario` ADD `id_tarea` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_tareas_canvio_usuario` ADD `id_agenda_origen` int(11) NOT NULL default '0' AFTER `id_tarea`;
ALTER TABLE `sgm_tareas_canvio_usuario` ADD `fecha` datetime default NULL AFTER `id_agenda_origen`;
ALTER TABLE `sgm_tareas_canvio_usuario` ADD `motivo` longtext AFTER `fecha`;

CREATE TABLE `sgm_tareas_departamento` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_tareas_departamento` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id`;
ALTER TABLE `sgm_tareas_departamento` ADD `nombre` varchar(255) default NULL AFTER `visible`;

CREATE TABLE `sgm_tareas_estados` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_tareas_estados` ADD `estado` varchar(30) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_tareas_estados` ADD `img` varchar(20) NOT NULL default '' AFTER `estado`;
ALTER TABLE `sgm_tareas_estados` ADD `color` varchar(20) NOT NULL default '' AFTER `img`;
ALTER TABLE `sgm_tareas_estados` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `color`;

CREATE TABLE `sgm_tareas_notas_desarrollo` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_tareas_notas_desarrollo` ADD `id_tarea` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_tareas_notas_desarrollo` ADD `id_agenda` int(11) NOT NULL default '0' AFTER `id_tarea`;
ALTER TABLE `sgm_tareas_notas_desarrollo` ADD `fecha` datetime default NULL AFTER `id_agenda`;
ALTER TABLE `sgm_tareas_notas_desarrollo` ADD `notas` longtext AFTER `fecha`;

CREATE TABLE `sgm_tareas_reg` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_tareas_reg` ADD `data_sincro` datetime default NULL AFTER `id`;

CREATE TABLE `sgm_tareas_servicios` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_tareas_servicios` ADD `servicio` varchar(50) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_tareas_servicios` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `servicio`;
ALTER TABLE `sgm_tareas_servicios` ADD `codigo` varchar(15) NOT NULL default '' AFTER `visible`;
ALTER TABLE `sgm_tareas_servicios` ADD `detalle` longtext AFTER `codigo`;
ALTER TABLE `sgm_tareas_servicios` ADD `id_origen` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_tareas_servicios` ADD `titol` tinyint(1) NOT NULL default '0' AFTER `id_origen`;

CREATE TABLE `sgm_tareas_servicios_cliente` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_tareas_servicios_cliente` ADD `id_cliente` int(11) NOT NULL default '0' AFTER `id` ;
ALTER TABLE `sgm_tareas_servicios_cliente` ADD `id_proveedor_caracteristica` int(11) NOT NULL default '0' AFTER `id_cliente` ;
ALTER TABLE `sgm_tareas_servicios_cliente` ADD `id_proveedor` int(11) NOT NULL default '0' AFTER `id_proveedor_caracteristica` ;
ALTER TABLE `sgm_tareas_servicios_cliente` ADD `id_servicio` int(11) NOT NULL default '0' AFTER `id_proveedor` ;
ALTER TABLE `sgm_tareas_servicios_cliente` ADD `id_estado` int(11) NOT NULL default '0' AFTER `id_servicio` ;
ALTER TABLE `sgm_tareas_servicios_cliente` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id_estado`;
ALTER TABLE `sgm_tareas_servicios_cliente` ADD `data` date default NULL AFTER `visible`;

CREATE TABLE `sgm_tareas_servicios_estados` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_tareas_servicios_estados` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id` ;
ALTER TABLE `sgm_tareas_servicios_estados` ADD `nombre` varchar(50) NOT NULL default '' AFTER `visible`;

CREATE TABLE `sgm_tareas_servicios_proveedores` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_tareas_servicios_proveedores` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id` ;
ALTER TABLE `sgm_tareas_servicios_proveedores` ADD `nombre` varchar(100) NOT NULL default '' AFTER `visible`;

CREATE TABLE `sgm_tareas_servicios_caracteristicas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_tareas_servicios_caracteristicas` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id` ;
ALTER TABLE `sgm_tareas_servicios_caracteristicas` ADD `nombre` varchar(50) NOT NULL default '' AFTER `visible`;

CREATE TABLE `sgm_tareas_tipos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_tareas_tipos` ADD `tipo` varchar(30) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_tareas_tipos` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `tipo`;
ALTER TABLE `sgm_tareas_tipos` ADD `id_tipo_grupo` int(11) NOT NULL default '0' AFTER `visible`;

CREATE TABLE `sgm_tareas_tipos_plantillas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_tareas_tipos_plantillas` ADD `id_tarea_tipo` int(11) NOT NULL default '0' AFTER `id` ;
ALTER TABLE `sgm_tareas_tipos_plantillas` ADD `id_plantilla` int(11) NOT NULL default '0' AFTER `id_tarea_tipo` ;

CREATE TABLE `sgm_tareas_tipos_grupo` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_tareas_tipos_grupo` ADD `grupo` varchar(30) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_tareas_tipos_grupo` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `grupo`;

CREATE TABLE `sgm_tareas_usuaris` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_tareas_usuaris` ADD `id_tarea` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_tareas_usuaris` ADD `id_usuario` int(11) NOT NULL default '0' AFTER `id_tarea`;
ALTER TABLE `sgm_tareas_usuaris` ADD `data_baja` datetime default NULL AFTER `id_usuario`;

CREATE TABLE `sgm_tareas_usuaris_permisos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_tareas_usuaris_permisos` ADD `id_usuari_propietari` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_tareas_usuaris_permisos` ADD `id_usuari_visitant` int(11) NOT NULL default '0' AFTER `id_usuari_propietari`;
ALTER TABLE `sgm_tareas_usuaris_permisos` ADD `escritura` tinyint(1) NOT NULL default '0' AFTER `id_usuari_visitant` ;

CREATE TABLE `sgm_tarifas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_tarifas` ADD `nombre` varchar(255) NOT NULL default '' AFTER `id`;
ALTER TABLE `sgm_tarifas` ADD `porcentage` int(11) NOT NULL default '0' AFTER `nombre`;
ALTER TABLE `sgm_tarifas` ADD `descuento` tinyint(1) NOT NULL default '1' AFTER `porcentage`;
ALTER TABLE `sgm_tarifas` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descuento`;

CREATE TABLE `sgm_tarifas_clients` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_tarifas_clients` ADD `id_tarifa` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_tarifas_clients` ADD `id_cliente` int(11) NOT NULL default '0' AFTER `id_tarifa`;
ALTER TABLE `sgm_tarifas_clients` ADD `predeterminado` tinyint(1) NOT NULL default '0' AFTER `id_cliente`;

CREATE TABLE `sgm_tpv_cabezera` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_tpv_cabezera` ADD `id_caja` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_tpv_cabezera` ADD `numero` int(11) NOT NULL default '0' AFTER `id_caja`;
ALTER TABLE `sgm_tpv_cabezera` ADD `fecha` date NOT NULL default '0000-00-00' AFTER `numero`;
ALTER TABLE `sgm_tpv_cabezera` ADD `hora` time NOT NULL default '00:00:00' AFTER `fecha`;
ALTER TABLE `sgm_tpv_cabezera` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `hora`;
ALTER TABLE `sgm_tpv_cabezera` ADD `id_tipo_pago` int(11) NOT NULL default '1' AFTER `visible`;
ALTER TABLE `sgm_tpv_cabezera` ADD `notas` longtext AFTER `id_tipo_pago`;
ALTER TABLE `sgm_tpv_cabezera` ADD `subtotal` decimal(11,3) NOT NULL default '0.000' AFTER `notas`;
ALTER TABLE `sgm_tpv_cabezera` ADD `descuento` decimal(11,3) NOT NULL default '0.000' AFTER `subtotal`;
ALTER TABLE `sgm_tpv_cabezera` ADD `subtotaldescuento` decimal(11,3) NOT NULL default '0.000' AFTER `descuento`;
ALTER TABLE `sgm_tpv_cabezera` ADD `iva` decimal(11,3) NOT NULL default '16.000' AFTER `subtotaldescuento`;
ALTER TABLE `sgm_tpv_cabezera` ADD `total` double(11,3) NOT NULL default '0.000' AFTER `iva`;
ALTER TABLE `sgm_tpv_cabezera` ADD `id_user` int(5) NOT NULL default '0' AFTER `total`;
ALTER TABLE `sgm_tpv_cabezera` ADD `contabilizada` tinyint(1) NOT NULL default '0' AFTER `id_user`;

CREATE TABLE `sgm_tpv_cajas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_tpv_cajas` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id`;
ALTER TABLE `sgm_tpv_cajas` ADD `nombre` varchar(255) NOT NULL default '' AFTER `visible`;
ALTER TABLE `sgm_tpv_cajas` ADD `direccion` varchar(50) NOT NULL default '' AFTER `nombre`;
ALTER TABLE `sgm_tpv_cajas` ADD `poblacion` varchar(30) NOT NULL default '' AFTER `direccion`;
ALTER TABLE `sgm_tpv_cajas` ADD `cp` varchar(5) NOT NULL default '' AFTER `poblacion`;
ALTER TABLE `sgm_tpv_cajas` ADD `provincia` varchar(15) NOT NULL default '' AFTER `cp`;
ALTER TABLE `sgm_tpv_cajas` ADD `mail` varchar(50) NOT NULL default '' AFTER `provincia`;
ALTER TABLE `sgm_tpv_cajas` ADD `telefono` varchar(15) NOT NULL default '' AFTER `mail`;
ALTER TABLE `sgm_tpv_cajas` ADD `notas` longtext AFTER `telefono`;

CREATE TABLE `sgm_tpv_permisos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_tpv_permisos` ADD `id_user` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_tpv_permisos` ADD `id_caja` int(11) NOT NULL default '0' AFTER `id_user`;
ALTER TABLE `sgm_tpv_permisos` ADD `admin` tinyint(1) NOT NULL default '0' AFTER `id_caja`;
*/
  
CREATE TABLE `sgm_tpv_tipos_pago` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_tpv_tipos_pago` ADD `tipo` varchar(150) NOT NULL default '' AFTER `id`;
INSERT INTO `sgm_tpv_tipos_pago` VALUES (1, 'Efectivo');
INSERT INTO `sgm_tpv_tipos_pago` VALUES (2, 'Tarjeta');
INSERT INTO `sgm_tpv_tipos_pago` VALUES (3, 'Cheque');
INSERT INTO `sgm_tpv_tipos_pago` VALUES (4, 'Domiciliaci&oacute;n');
INSERT INTO `sgm_tpv_tipos_pago` VALUES (5, 'Transferencia');

CREATE TABLE `sim_factura_tipus_pagament` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_factura_tipus_pagament` ADD `tipus` varchar(150) NOT NULL default '' AFTER `id`;
INSERT INTO `sim_factura_tipus_pagament` VALUES (1, 'Efectivo');
INSERT INTO `sim_factura_tipus_pagament` VALUES (2, 'Tarjeta');
INSERT INTO `sim_factura_tipus_pagament` VALUES (3, 'Cheque');
INSERT INTO `sim_factura_tipus_pagament` VALUES (4, 'Domiciliaci&oacute;n');
INSERT INTO `sim_factura_tipus_pagament` VALUES (5, 'Transferencia');

CREATE TABLE `sgm_users` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_users` ADD `validado` tinyint(1) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_users` ADD `activo` tinyint(1) NOT NULL default '1' AFTER `validado`;
ALTER TABLE `sgm_users` ADD `public` tinyint(1) NOT NULL default '0' AFTER `activo`;
ALTER TABLE `sgm_users` ADD `usuario` varchar(30) NOT NULL default '' AFTER `public`;
ALTER TABLE `sgm_users` ADD `pass` varchar(10) NOT NULL default '' AFTER `usuario`;
ALTER TABLE `sgm_users` ADD `url` varchar(150) NOT NULL default '' AFTER `pass`;
ALTER TABLE `sgm_users` ADD `mail` varchar(50) NOT NULL default '' AFTER `url`;
ALTER TABLE `sgm_users` ADD `msn` varchar(50) NOT NULL default '' AFTER `mail`;
ALTER TABLE `sgm_users` ADD `icq` varchar(15) NOT NULL default '' AFTER `msn`;
ALTER TABLE `sgm_users` ADD `datejoin` date default NULL AFTER `icq`;
ALTER TABLE `sgm_users` ADD `dateborn` date default NULL AFTER `datejoin`;
ALTER TABLE `sgm_users` ADD `country` varchar(10) NOT NULL default '' AFTER `dateborn`;
ALTER TABLE `sgm_users` ADD `sgm` tinyint(1) NOT NULL default '0' AFTER `country`;
ALTER TABLE `sgm_users` ADD `sgm_remoto` tinyint(1) NOT NULL default '0' AFTER `sgm`;
ALTER TABLE `sgm_users` ADD `id_origen` int(11) NOT NULL default '0' AFTER `sgm_remoto`;
ALTER TABLE `sgm_users` ADD `firma` tinyint(1) NOT NULL default '0' AFTER `id_origen`;
ALTER TABLE `sgm_users` ADD `textfirma` longtext NOT NULL AFTER `firma`;
INSERT INTO `sgm_users` (`id`, `validado`, `activo`, `public`, `usuario`, `pass`, `url`, `mail`, `msn`, `icq`, `datejoin`, `dateborn`, `country`, `sgm`, `sgm_remoto`, `id_origen`, `firma`, `textfirma`) VALUES (1, '1', '1', '0', 'admin', 'admin', 'http://www.multivia.com', 'sat@multivia.com', 'sat@multivia.com', '', NULL, NULL, '', '1', '1', '0', '0', '');
ALTER TABLE `sgm_users` ADD `id_agenda1` int(11) NOT NULL default '0' AFTER `textfirma`;
ALTER TABLE `sgm_users` ADD `id_agenda2` int(11) NOT NULL default '0' AFTER `id_agenda1`;
ALTER TABLE `sgm_users` ADD `id_agenda_pred1` int(11) NOT NULL default '0' AFTER `id_agenda2`;
ALTER TABLE `sgm_users` ADD `id_agenda_pred2` int(11) NOT NULL default '0' AFTER `id_agenda_pred1`;

CREATE TABLE `sim_users` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_users` ADD `validado` tinyint(1) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_users` ADD `activo` tinyint(1) NOT NULL default '1' AFTER `validado`;
ALTER TABLE `sim_users` ADD `usuario` varchar(30) NOT NULL default '' AFTER `activo`;
ALTER TABLE `sim_users` ADD `pass` varchar(10) NOT NULL default '' AFTER `usuario`;
ALTER TABLE `sim_users` ADD `mail` varchar(50) NOT NULL default '' AFTER `pass`;
ALTER TABLE `sim_users` ADD `sim` tinyint(1) NOT NULL default '0' AFTER `mail`;
ALTER TABLE `sim_users` ADD `id_origen` int(11) NOT NULL default '0' AFTER `sim`;

INSERT INTO `sim_users` (`id`, `validado`, `activo`, `usuario`, `pass`, `mail`, `sim`, `id_origen`)
VALUES (1, '1', '1', 'admin', 'admin', 'administracion@solucions-im.com', 0);


/*
CREATE TABLE `sgm_users_almacenes` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_users_almacenes` ADD `id_user` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_users_almacenes` ADD `id_almacen` int(11) NOT NULL default '0' AFTER `id_user`;
ALTER TABLE `sgm_users_almacenes` ADD `predeterminado` tinyint(1) NOT NULL default '0' AFTER `id_almacen`;
*/

CREATE TABLE `sgm_users_clients` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_users_clients` ADD `id_user` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_users_clients` ADD `id_client` int(11) NOT NULL default '0' AFTER `id_user`;
ALTER TABLE `sgm_users_clients` ADD `id_modulo` int(11) NOT NULL default '0' AFTER `id_client`;
ALTER TABLE `sgm_users_clients` ADD `admin` tinyint(1) NOT NULL default '0' AFTER `id_modulo`;

CREATE TABLE `sim_users_clients` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_users_clients` ADD `id_user` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_users_clients` ADD `id_client` int(11) NOT NULL default '0' AFTER `id_user`;
ALTER TABLE `sim_users_clients` ADD `admin` tinyint(1) NOT NULL default '0' AFTER `id_client`;

/*
CREATE TABLE `sgm_users_foros` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_users_foros` ADD `id_user` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_users_foros` ADD `id_foro` int(11) NOT NULL default '0' AFTER `id_user`;

CREATE TABLE `sgm_users_ips` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_users_ips` ADD `id_user` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_users_ips` ADD `ip` varchar(15) NOT NULL default '' AFTER `id_user`;
ALTER TABLE `sgm_users_ips` ADD `remota` tinyint(1) NOT NULL default '0' AFTER `ip`;
ALTER TABLE `sgm_users_ips` ADD `vigente` tinyint(1) NOT NULL default '1' AFTER `remota`;
*/

CREATE TABLE `sgm_users_permisos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_users_permisos` ADD `id_user` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_users_permisos` ADD `id_modulo` int(11) NOT NULL default '0' AFTER `id_user`;
ALTER TABLE `sgm_users_permisos` ADD `admin` tinyint(1) NOT NULL default '0' AFTER `id_modulo`;
INSERT INTO `sgm_users_permisos` ( `id` , `id_user` , `id_modulo` , `admin` ) VALUES (1, '1', '1002', '1');
INSERT INTO `sgm_users_permisos` ( `id` , `id_user` , `id_modulo` , `admin` ) VALUES (2, '1', '1022', '1');

CREATE TABLE `sgm_users_permisos_modulos_grupos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_users_permisos_modulos_grupos` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `id`;
ALTER TABLE `sgm_users_permisos_modulos_grupos` ADD `nombre` varchar(30) NOT NULL default '' AFTER `visible`;
INSERT INTO `sgm_users_permisos_modulos_grupos` VALUES (1,1,'Gesti&oacute;n Comercial');
INSERT INTO `sgm_users_permisos_modulos_grupos` VALUES (2,1,'Gesti&oacute;n Direcci&oacute;n');
INSERT INTO `sgm_users_permisos_modulos_grupos` VALUES (3,1,'Gesti&oacute;n Administrativa');
INSERT INTO `sgm_users_permisos_modulos_grupos` VALUES (4,1,'Agenda');
INSERT INTO `sgm_users_permisos_modulos_grupos` VALUES (5,1,'Administraci&oacute;n');
INSERT INTO `sgm_users_permisos_modulos_grupos` VALUES (6,1,'Producci&oacute;n');

CREATE TABLE `sgm_users_permisos_modulos` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_users_permisos_modulos` ADD `id_modulo` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_users_permisos_modulos` ADD `nombre` varchar(30) NOT NULL default '' AFTER `id_modulo`;
ALTER TABLE `sgm_users_permisos_modulos` ADD `descripcion` varchar(130) NOT NULL default '' AFTER `nombre`;
ALTER TABLE `sgm_users_permisos_modulos` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `descripcion`;
ALTER TABLE `sgm_users_permisos_modulos` ADD `icon` varchar(30) NOT NULL default '' AFTER `visible`;

INSERT INTO `sgm_users_permisos_modulos` VALUES (1, 1001, 'Gesti&oacute;n Contenidos', 'Permite crear noticias, articulos i sus grupos.', 0, '');
INSERT INTO `sgm_users_permisos_modulos` VALUES (2, 1002, 'Gesti&oacute;n Usuarios', 'Permite conceder permisos y modificar usuarios.', 1, '');
INSERT INTO `sgm_users_permisos_modulos` VALUES (3, 1003, 'Gesti&oacute;n Facturaci&oacute;n', 'M&oacute;dulo para la gesti&oacute;n de facturaci&oacute;n y contabilidad', 0, '');
INSERT INTO `sgm_users_permisos_modulos` VALUES (4, 1004, 'Gesti&oacute;n Articulos', 'Gesti&oacute;n de articulos y marcas de fabricantes.', 0, '');
INSERT INTO `sgm_users_permisos_modulos` VALUES (5, 1005, 'Gesti&oacute;n Inventario', 'Gesti&oacute;n del inventario que dispone cada cliente.', 0, '');
INSERT INTO `sgm_users_permisos_modulos` VALUES (6, 1006, 'Gesti&oacute;n Incidencias', 'Gesti&oacute;n de incidencias y agenda de tareas.', 0, '');
INSERT INTO `sgm_users_permisos_modulos` VALUES (7, 1007, 'Gesti&oacute;n Pedidos', 'Formulario de solucitud de material.', 0, '');
INSERT INTO `sgm_users_permisos_modulos` VALUES (8, 1008, 'Gesti&oacute;n Clientes', 'Gesti&oacute;n de clientes y todos sus datos.', 0, '');
INSERT INTO `sgm_users_permisos_modulos` VALUES (9, 1009, 'Gesti&oacute;n Comercial', 'Para la gesti&oacute;n de posibles clientes y su seguimiento', 0, '');
INSERT INTO `sgm_users_permisos_modulos` VALUES (10, 1010, 'Gesti&oacute;n Compras', 'Gesti&oacute;n de proveedores y pedidos', 0, '');
INSERT INTO `sgm_users_permisos_modulos` VALUES (11, 1011, 'Contratos', 'Gesti&oacute;n de contratos de servicios', 0, '');
INSERT INTO `sgm_users_permisos_modulos` VALUES (12, 1012, 'Gesti&oacute;n Mailing', 'Gesti&oacute; de e-mails masivos.', 0, '');
INSERT INTO `sgm_users_permisos_modulos` VALUES (13, 1013, 'Gesti&oacute;n Inventario Incid.', 'Gesti&oacute;n de incidencias técnicas en los registros de inventario.', 0, '');
INSERT INTO `sgm_users_permisos_modulos` VALUES (14, 1014, 'Control Producci&oacute;n', 'Control del proceso de producci&oacute;n y control de calidad.', 0, '');
INSERT INTO `sgm_users_permisos_modulos` VALUES (15, 1015, 'Control de Calidad', 'Gesti&oacute;n del control de calidad para normativa ISO', 0, '');
INSERT INTO `sgm_users_permisos_modulos` VALUES (16, 1016, 'Producci&oacute;n', 'Gesti&oacute;n de OT, FT, etc', 0, '');
INSERT INTO `sgm_users_permisos_modulos` VALUES (17, 1017, 'Incidencias', 'Gesti&oacute;n de incidencias', 0, '');
INSERT INTO `sgm_users_permisos_modulos` VALUES (18, 1018, 'Monitorizaci&oacute;n', 'Gesti&oacute; de monitorizaci&oacute;n', 0, '');
INSERT INTO `sgm_users_permisos_modulos` VALUES (19, 1019, 'Contabilidad', 'Contabilidad', 0, '');
INSERT INTO `sgm_users_permisos_modulos` VALUES (20, 1020, 'Gesti&oacute;n RRHH', 'Curriculums y ofertas de empleo', 0, '');
INSERT INTO `sgm_users_permisos_modulos` VALUES (21, 1021, 'TPV', 'Terminal Punto de Venta', 0, '');
INSERT INTO `sgm_users_permisos_modulos` VALUES (22, 1022, 'Sistema', 'Acceso a la configuraci&oacute;n del programa MGestion', 1, '');
INSERT INTO `sgm_users_permisos_modulos` VALUES (23, 1023, 'Gesti&oacute;n Producci&oacute;n', 'Gesti&oacute;n de OT, FT, etc', 0, '');

ALTER TABLE `sgm_users_permisos_modulos` ADD `id_grupo` int(11) NOT NULL default '0' AFTER `icon` ;

UPDATE `sgm_users_permisos_modulos` SET nombre='Tablas Auxiliares', descripcion='Gesti&oacute;n de la Tablas Auxiliares de los M&oacute;dulos' WHERE id_modulo=1023;
UPDATE `sgm_users_permisos_modulos` SET nombre='Contenidos' WHERE id_modulo=1001;
UPDATE `sgm_users_permisos_modulos` SET nombre='Usuarios' WHERE id_modulo=1002;
UPDATE `sgm_users_permisos_modulos` SET nombre='Facturaci&oacute;n' WHERE id_modulo=1003;
UPDATE `sgm_users_permisos_modulos` SET nombre='Art&iacute;culos' WHERE id_modulo=1004;
UPDATE `sgm_users_permisos_modulos` SET nombre='Inventario' WHERE id_modulo=1005;
UPDATE `sgm_users_permisos_modulos` SET nombre='Tareas', descripcion='Gesti&oacute;n de las agenas y tareas' WHERE id_modulo=1006;
UPDATE `sgm_users_permisos_modulos` SET nombre='Pedidos' WHERE id_modulo=1007;
UPDATE `sgm_users_permisos_modulos` SET nombre='Contactos' WHERE id_modulo=1008;
UPDATE `sgm_users_permisos_modulos` SET nombre='Comercial' WHERE id_modulo=1009;
UPDATE `sgm_users_permisos_modulos` SET nombre='Compras' WHERE id_modulo=1010;
UPDATE `sgm_users_permisos_modulos` SET nombre='Mailing' WHERE id_modulo=1012;
UPDATE `sgm_users_permisos_modulos` SET nombre='Producci&oacute;n' WHERE id_modulo=1014;
UPDATE `sgm_users_permisos_modulos` SET nombre='Calidad' WHERE id_modulo=1015;
UPDATE `sgm_users_permisos_modulos` SET nombre='RRHH' WHERE id_modulo=1020;
UPDATE `sgm_users_permisos_modulos` SET nombre='TPV' WHERE id_modulo=1021;
UPDATE `sgm_users_permisos_modulos` SET nombre='Sistema' WHERE id_modulo=1022;
UPDATE `sgm_users_permisos_modulos` SET nombre='Auxiliares' WHERE id_modulo=1023;

UPDATE `sgm_users_permisos_modulos` SET id_grupo=5 WHERE id_modulo=1001;
UPDATE `sgm_users_permisos_modulos` SET id_grupo=5 WHERE id_modulo=1002;
UPDATE `sgm_users_permisos_modulos` SET id_grupo=3 WHERE id_modulo=1003;
UPDATE `sgm_users_permisos_modulos` SET id_grupo=6 WHERE id_modulo=1004;
UPDATE `sgm_users_permisos_modulos` SET id_grupo=3 WHERE id_modulo=1005;
UPDATE `sgm_users_permisos_modulos` SET id_grupo=4 WHERE id_modulo=1006;
UPDATE `sgm_users_permisos_modulos` SET id_grupo=3 WHERE id_modulo=1007;
UPDATE `sgm_users_permisos_modulos` SET id_grupo=1 WHERE id_modulo=1008;
UPDATE `sgm_users_permisos_modulos` SET id_grupo=1 WHERE id_modulo=1009;
UPDATE `sgm_users_permisos_modulos` SET id_grupo=3 WHERE id_modulo=1010;
UPDATE `sgm_users_permisos_modulos` SET id_grupo=3 WHERE id_modulo=1011;
UPDATE `sgm_users_permisos_modulos` SET id_grupo=3 WHERE id_modulo=1012;
UPDATE `sgm_users_permisos_modulos` SET id_grupo=1 WHERE id_modulo=1013;
UPDATE `sgm_users_permisos_modulos` SET id_grupo=6 WHERE id_modulo=1014;
UPDATE `sgm_users_permisos_modulos` SET id_grupo=6 WHERE id_modulo=1015;
UPDATE `sgm_users_permisos_modulos` SET id_grupo=6 WHERE id_modulo=1016;
UPDATE `sgm_users_permisos_modulos` SET id_grupo=4 WHERE id_modulo=1017;
UPDATE `sgm_users_permisos_modulos` SET id_grupo=2 WHERE id_modulo=1020;
UPDATE `sgm_users_permisos_modulos` SET id_grupo=3 WHERE id_modulo=1021;
UPDATE `sgm_users_permisos_modulos` SET id_grupo=5 WHERE id_modulo=1022;
UPDATE `sgm_users_permisos_modulos` SET id_grupo=5 WHERE id_modulo=1023;

INSERT INTO `sgm_users_permisos_modulos` VALUES (24, 1024, 'Gesti&oacute;n Aplicaciones', 'Gesti&oacute;n de contraseñas de apliciones', 0, '',6);
INSERT INTO `sgm_users_permisos_modulos` VALUES (25, 1025, 'Gesti&oacute;n Monitorizaci&oacute;n', 'Gesti&oacute;n Monitorizaci&oacute;n', 0, '',6);
INSERT INTO `sgm_users_permisos_modulos` VALUES (26, 1026, 'Gesti&oacute;n Licencias', 'Gesti&oacute;n de licencias de productos', 0, '',3);
INSERT INTO `sgm_users_permisos_modulos` VALUES (1001, 2001, 'Estado Servidor', 'Permite conocer el estador del servidor o servidores del cliente', 0, '',7);
INSERT INTO `sgm_users_permisos_modulos` VALUES (1002, 2002, 'Reports', 'Permite descargar los reports del cliente', 0, '',7);
INSERT INTO `sgm_users_permisos_modulos` VALUES (1003, 2003, 'Documentos', 'Permite descargar los documentos asociados al cliente', 0, '',7);

/*
CREATE TABLE `sgm_users_permisos_news` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_users_permisos_news` ADD `id_user` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_users_permisos_news` ADD `id_news` int(11) NOT NULL default '0' AFTER `id_user`;
ALTER TABLE `sgm_users_permisos_news` ADD `admin` tinyint(1) NOT NULL default '0' AFTER `id_news`;

CREATE TABLE `sgm_users_validacion_horas` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sgm_users_validacion_horas` ADD `id_user` int(11) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sgm_users_validacion_horas` ADD `codi_pro` varchar(50) NOT NULL default '' AFTER `id_user`;
ALTER TABLE `sgm_users_validacion_horas` ADD `fecha` date default NULL AFTER `codi_pro`;
ALTER TABLE `sgm_users_validacion_horas` ADD `minutos` int(11) NOT NULL default '0' AFTER `fecha`;
ALTER TABLE `sgm_users_validacion_horas` ADD `descripcion` varchar(255) NOT NULL default '' AFTER `minutos`;
ALTER TABLE `sgm_users_validacion_horas` ADD `validado` tinyint(1) NOT NULL default '1' AFTER `descripcion`;
ALTER TABLE `sgm_users_validacion_horas` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `validado`;
*/

CREATE TABLE `sys_autonomias` ( `CodigoAutonomia` tinyint(4) NOT NULL default '0', `Autonomia` varchar(25) default NULL, PRIMARY KEY  (`CodigoAutonomia`), KEY `Autonomia` (`Autonomia`) );

CREATE TABLE `sys_municipios` ( `CodigoMunicipio` varchar(7) NOT NULL default '', `CodigoNacion` int(11) default NULL, `CodigoAutonomia` tinyint(4) default NULL, `CodigoProvincia` varchar(5) default NULL, `Municipio` varchar(25) default NULL, `TipoMunicipio` tinyint(4) default NULL, PRIMARY KEY  (`CodigoMunicipio`), KEY `Municipio` (`Municipio`) );

CREATE TABLE `sys_naciones` ( `CodigoNacion` int(11) NOT NULL default '0', `Nacion` varchar(25) default NULL, `CodigoNacion347` int(11) default NULL, `SiglaNacion` char(3) default NULL, PRIMARY KEY  (`CodigoNacion`), KEY `CodigoNacion347` (`CodigoNacion347`), KEY `Nacion` (`Nacion`), KEY `SiglaNacion` (`SiglaNacion`) );
ALTER TABLE `sys_naciones` ADD `visible` tinyint(1) NOT NULL default '1' AFTER `SiglaNacion`;
ALTER TABLE `sys_naciones` ADD `predeterminado` tinyint(1) NOT NULL default '0' AFTER `visible`;

CREATE TABLE `sim_nacions` ( `id` int(11) NOT NULL auto_increment, PRIMARY KEY  (`id`) );
ALTER TABLE `sim_nacions` ADD `nacion` varchar(50) NOT NULL default '0' AFTER `id`;
ALTER TABLE `sim_nacions` ADD `codigo_nacion` int(11) NOT NULL default '0' AFTER `nacion`;
ALTER TABLE `sim_nacions` ADD `sigla_nacion` char(3) NOT NULL default '0' AFTER `codigo_nacion`;


CREATE TABLE `sys_provincias` ( `CodigoProvincia` varchar(5) NOT NULL default '', `CodigoMatricula` varchar(4) default NULL, `Provincia` varchar(20) default NULL, PRIMARY KEY  (`CodigoProvincia`), KEY `CodigoMatricula` (`CodigoMatricula`), KEY `Provincia` (`Provincia`) );

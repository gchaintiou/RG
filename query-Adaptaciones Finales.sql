-- --------------------------------------------------------------------------------------------------------------------
-- Conjunto de Operaciones a Realizar Sobre la Base de Datos
-- --------------------------------------------------------------------------------------------------------------------

ALTER TABLE `ote` ADD `prioridad` INT( 1 ) UNSIGNED NOT NULL DEFAULT '5';

CREATE TABLE `ope` (
`nro_op` INT( 4 ) UNSIGNED NOT NULL ,
`fecha` DATE NOT NULL ,
PRIMARY KEY ( `nro_op` ) 
) ENGINE = MYISAM ;

CREATE TABLE `opd` (
`nro_op` INT( 4 ) UNSIGNED NOT NULL ,
`nro_ot` INT( 4 ) UNSIGNED NOT NULL ,
`item` INT( 4 ) UNSIGNED NOT NULL ,
`numero` INT( 4 ) UNSIGNED NOT NULL ,
`agregado` INT( 1 ) UNSIGNED NOT NULL ,
`extra` INT( 1 ) UNSIGNED NOT NULL ,
`descripcion` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL ,
`operario` INT( 2 ) UNSIGNED NOT NULL ,
`estado` INT( 1 ) UNSIGNED NOT NULL ,
`fecha_ini` DATE NOT NULL ,
`duracion` INT( 5 ) UNSIGNED NOT NULL ,
PRIMARY KEY ( `nro_op` , `nro_ot` , `item` , `numero` , `agregado` , `extra` ) 
) ENGINE = MYISAM ;

CREATE TABLE `opo` (
`nro_op` INT( 4 ) UNSIGNED NOT NULL ,
`nro_ot` INT( 4 ) UNSIGNED NOT NULL ,
`item` INT( 4 ) UNSIGNED NOT NULL ,
`numero` INT( 4 ) UNSIGNED NOT NULL ,
`agregado` INT( 1 ) UNSIGNED NOT NULL ,
`extra` INT( 1 ) UNSIGNED NOT NULL ,
`fecha` DATE NOT NULL ,
`hora` TIME NOT NULL ,
`observacion` VARCHAR( 200 ) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL ,
PRIMARY KEY ( `nro_op` , `nro_ot` , `item` , `numero` , `agregado` , `extra` , `hora` ) 
) ENGINE = MYISAM ;

CREATE TABLE `estado` (
`tipo` INT( 1 ) UNSIGNED NOT NULL ,
`id` INT( 1 ) UNSIGNED NOT NULL ,
`descripcion` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL ,
PRIMARY KEY ( `tipo` , `id` ) 
) ENGINE = MYISAM ;

INSERT INTO `estado` ( `tipo` , `id` , `descripcion` ) 
VALUES 
('1', '0', 'PENDIENTE'), 
('1', '1', 'EN PRODUCCION'),
('1', '2', 'SUSPENDIDA'), 
('1', '3', 'REQUIERE ASISTENCIA'),
('1', '4', 'OMITIR'), 
('1', '5', 'FINALIZADA'),
('2', '0', 'INDETERMINADO'), 
('2', '1', 'EN EXISTENCIA'),
('2', '2', 'A ENCARGAR'), 
('2', '3', 'ENCARGADO');

ALTER TABLE `opd` ADD `posicion` INT( 2 ) UNSIGNED NOT NULL DEFAULT '0';

ALTER TABLE `opd` ADD `hora_ini` TIME NOT NULL DEFAULT '0';

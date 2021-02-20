ALTER TABLE `opd` RENAME TO `opd_bk`;

CREATE TABLE `opd` (
`nro_ot` INT( 4 ) UNSIGNED NOT NULL ,
`item` INT( 4 ) UNSIGNED NOT NULL ,
`numero` INT( 4 ) UNSIGNED NOT NULL ,
`agregado` INT( 1 ) UNSIGNED NOT NULL ,
`extra` INT( 1 ) UNSIGNED NOT NULL ,
`descripcion` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL ,
`operario` INT( 2 ) UNSIGNED NOT NULL ,
`estado` INT( 1 ) UNSIGNED NOT NULL ,
`fecha_ini` DATE NOT NULL ,
`hora_ini` TIME,
`posicion` INT( 2 ) UNSIGNED NOT NULL ,
PRIMARY KEY (`nro_ot` , `item` , `numero` , `agregado` , `extra` ) 
) ENGINE = MYISAM ;

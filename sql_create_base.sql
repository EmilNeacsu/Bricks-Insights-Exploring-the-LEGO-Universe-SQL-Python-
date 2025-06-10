CREATE TABLE IF NOT EXISTS `inventories` (
  `id` int4 ,
  `version` int4 DEFAULT NULL,
  `set_num` varchar(20) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `inventory_sets` (
  `inventory_id` int4 ,
  `set_num` varchar(20)DEFAULT NULL,
  `quantity` int4 DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `inventory_minifigs` (
  `inventory_id` int4 ,
  `fig_num` varchar(20) DEFAULT NULL,
  `quantity` int4 DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `minifigs` (
  `fig_num` varchar(20) ,
  `name` varchar(256) DEFAULT NULL,
  `num_parts` int4 DEFAULT NULL,
   `img_url` VARCHAR(256) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `sets` (
  `set_num` varchar(20),
  `name` varchar(300) DEFAULT NULL,
  `year` int4 DEFAULT NULL,
  `theme_id` int4 DEFAULT NULL,
  `num_parts` int4 DEFAULT NULL,
  `img_url` VARCHAR(256) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `themes` (
  `id` int4 ,
  `name` varchar(100) DEFAULT NULL,
  `parent_id` int4
);

CREATE TABLE IF NOT EXISTS `inventory_parts` (
  `inventory_id` int4,
  `part_num` varchar(20) DEFAULT NULL,
  `color_id` int4 DEFAULT NULL,
  `quantity` int4 DEFAULT NULL,
  `is_spare` bool DEFAULT NULL,
  `img_url` VARCHAR(256) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `colors` (
  `id` int4,
  `name` varchar(200) DEFAULT NULL,
  `rgd` varchar(6) DEFAULT NULL,
  `is_trans` varchar(1) DEFAULT NULL
);

CREATE TABLE `parts` (
  `part_num` varchar(250),
  `name` varchar(250) DEFAULT NULL,
  `part_cat_id` int4 DEFAULT NULL,
  `part_material` varchar(250) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `part_categories` (
  `id` int4,
  `name` varchar(350) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `elements` (
  `elememts_id` varchar(10) ,
  `part_num` varchar(20) DEFAULT NULL,
  `color_id` int4 DEFAULT NULL,
  `design_id` int4 DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `part_relationships` (
  `rel_type` varchar(1) ,
  `child_part_num` varchar(20) DEFAULT NULL,
  `parent_part_num` varchar(20) DEFAULT NULL
);

--i I imported  the files mannualy with file->import file-> import csv
CREATE DATABASE IF NOT EXISTS `al`;

USE `al`;

SET NAMES utf8;

CREATE TABLE `common_dimension` (
  `id` INT(11) NOT NULL,
  `type` VARCHAR(64) NOT NULL,
  `value` VARCHAR(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE `sparkcore_dimension_data` (
  `dimeid` INT(11) NOT NULL,
  `day` DATE NOT NULL,
  `pv` INT(11) UNSIGNED NOT NULL,
  `uv` INT(11) UNSIGNED NOT NULL,
  `ip` INT(11) UNSIGNED NOT NULL,
  `time` BIGINT(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`dimeid`,`day`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

CREATE TABLE `sparkcore_content_data` (
  `contentid` BIGINT(20) NOT NULL,
  `day` date NOT NULL,
  `pv` INT(11) UNSIGNED NOT NULL,
  `uv` INT(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`contentid`,`day`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

CREATE TABLE `sparkcore_content_detail` (
  `contentid` BIGINT(20) NOT NULL,
  `url` VARCHAR(512) NOT NULL,
  `title` VARCHAR(512) NOT NULL,
  PRIMARY KEY (`contentid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE `streaming_dimension_data` (
  `dimeid` INT(11) NOT NULL,
  `second` INT(11) NOT NULL,
  `pv` INT(11) UNSIGNED NOT NULL,
  `uv` INT(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`dimeid`,`second`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

CREATE TABLE `streaming_content_data` (
  `contentid` BIGINT(20) NOT NULL,
  `second` INT(11) NOT NULL,
  `pv` INT(11) UNSIGNED NOT NULL,
  `uv` INT(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`contentid`,`second`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

CREATE TABLE `streaming_content_detail` (
  `contentid` BIGINT(20) NOT NULL,
  `url` VARCHAR(512) NOT NULL,
  `title` VARCHAR(512) NOT NULL,
  PRIMARY KEY (`contentid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE `storm_dimension_data` (
  `dimeid` INT(11) NOT NULL,
  `second` INT(11) NOT NULL,
  `pv` INT(11) UNSIGNED NOT NULL,
  `uv` INT(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`dimeid`,`second`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

CREATE TABLE `storm_content_data` (
  `contentid` BIGINT(20) NOT NULL,
  `second` INT(11) NOT NULL,
  `pv` INT(11) UNSIGNED NOT NULL,
  `uv` INT(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`contentid`,`second`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

CREATE TABLE `storm_content_detail` (
  `contentid` BIGINT(20) NOT NULL,
  `url` VARCHAR(512) NOT NULL,
  `title` VARCHAR(512) NOT NULL,
  PRIMARY KEY (`contentid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE `hive_dimension_data` (
  `day` DATE NOT NULL,
  `pv` INT(11) UNSIGNED NOT NULL,
  `uv` INT(11) UNSIGNED NOT NULL,
  `ip` INT(11) UNSIGNED NOT NULL,
  `time` BIGINT(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`day`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

CREATE TABLE `common_gender` (
  `id` INT(11) NOT NULL,
  `value` VARCHAR(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE `common_channel` (
  `id` INT(11) NOT NULL,
  `value` VARCHAR(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE `mllib_gender_data` (
  `genderid` INT(11) NOT NULL,
  `day` DATE NOT NULL,
  `pv` INT(11) UNSIGNED NOT NULL,
  `uv` INT(11) UNSIGNED NOT NULL,
  `ip` INT(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`genderid`,`day`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

CREATE TABLE `mllib_channel_data` (
  `channelid` INT(11) NOT NULL,
  `day` DATE NOT NULL,
  `pv` INT(11) UNSIGNED NOT NULL,
  `uv` INT(11) UNSIGNED NOT NULL,
  `ip` INT(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`channelid`,`day`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

CREATE TABLE `ml_lr_data` (
  `genderid` INT(11) NOT NULL,
  `pv` INT(11) UNSIGNED NOT NULL,
  `uv` INT(11) UNSIGNED NOT NULL,
  `ip` INT(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`genderid`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

CREATE TABLE `ml_dt_data` (
  `channelid` INT(11) NOT NULL,
  `pv` INT(11) UNSIGNED NOT NULL,
  `uv` INT(11) UNSIGNED NOT NULL,
  `ip` INT(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`channelid`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

CREATE TABLE `ml_clustering_data` (
  `clusteringid` INT(11) NOT NULL,
  `channelid` INT(11) NOT NULL,
  `pv` INT(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`clusteringid`,`channelid`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

CREATE TABLE `ml_cf_user_data` (
  `userid` INT(11) NOT NULL,
  `itemid` INT(11) NOT NULL,
  `source` FLOAT(11) NOT NULL,
  PRIMARY KEY (`userid`,`itemid`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

CREATE TABLE `ml_cf_item_data` (
  `itemid` INT(11) NOT NULL,
  `userid` INT(11) NOT NULL,
  `source` FLOAT(11) NOT NULL,
  PRIMARY KEY (`itemid`,`userid`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

CREATE TABLE `ml_cf_user` (
  `id` INT(11) NOT NULL,
  `name` VARCHAR(32) NOT NULL,
  `image` VARCHAR(64),
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE `ml_cf_item` (
  `id` INT(11) NOT NULL,
  `name` VARCHAR(32) NOT NULL,
  `image` VARCHAR(64),
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;
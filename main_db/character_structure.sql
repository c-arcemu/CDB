SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account_data
-- ----------------------------
DROP TABLE IF EXISTS `account_data`;
CREATE TABLE `account_data`  (
  `acct` int(30) NOT NULL,
  `uiconfig0` blob NULL,
  `uiconfig1` blob NULL,
  `uiconfig2` blob NULL,
  `uiconfig3` blob NULL,
  `uiconfig4` blob NULL,
  `uiconfig5` blob NULL,
  `uiconfig6` blob NULL,
  `uiconfig7` blob NULL,
  `uiconfig8` blob NULL,
  PRIMARY KEY (`acct`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of account_data
-- ----------------------------

-- ----------------------------
-- Table structure for account_forced_permissions
-- ----------------------------
DROP TABLE IF EXISTS `account_forced_permissions`;
CREATE TABLE `account_forced_permissions`  (
  `login` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `permissions` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`login`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of account_forced_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for arenateams
-- ----------------------------
DROP TABLE IF EXISTS `arenateams`;
CREATE TABLE `arenateams`  (
  `id` int(30) NOT NULL,
  `type` int(30) NOT NULL,
  `leader` int(30) NOT NULL,
  `name` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `emblemstyle` int(40) NOT NULL,
  `emblemcolour` bigint(40) NOT NULL,
  `borderstyle` int(40) NOT NULL,
  `bordercolour` bigint(40) NOT NULL,
  `backgroundcolour` bigint(40) NOT NULL,
  `rating` int(30) NOT NULL,
  `data` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ranking` int(30) NOT NULL,
  `player_data1` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `player_data2` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `player_data3` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `player_data4` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `player_data5` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `player_data6` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `player_data7` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `player_data8` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `player_data9` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `player_data10` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of arenateams
-- ----------------------------

-- ----------------------------
-- Table structure for auctions
-- ----------------------------
DROP TABLE IF EXISTS `auctions`;
CREATE TABLE `auctions`  (
  `auctionId` int(32) NOT NULL AUTO_INCREMENT,
  `auctionhouse` int(32) NULL DEFAULT NULL,
  `item` bigint(10) NULL DEFAULT NULL,
  `owner` bigint(10) NULL DEFAULT NULL,
  `startbid` int(32) NULL DEFAULT NULL,
  `buyout` int(32) NULL DEFAULT NULL,
  `time` int(32) NULL DEFAULT NULL,
  `bidder` bigint(10) NULL DEFAULT NULL,
  `bid` int(32) NULL DEFAULT NULL,
  `deposit` int(32) NULL DEFAULT NULL,
  PRIMARY KEY (`auctionId`) USING BTREE,
  INDEX `b`(`auctionhouse`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auctions
-- ----------------------------

-- ----------------------------
-- Table structure for banned_names
-- ----------------------------
DROP TABLE IF EXISTS `banned_names`;
CREATE TABLE `banned_names`  (
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of banned_names
-- ----------------------------

-- ----------------------------
-- Table structure for character_achievement
-- ----------------------------
DROP TABLE IF EXISTS `character_achievement`;
CREATE TABLE `character_achievement`  (
  `guid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `achievement` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`guid`, `achievement`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of character_achievement
-- ----------------------------

-- ----------------------------
-- Table structure for character_achievement_progress
-- ----------------------------
DROP TABLE IF EXISTS `character_achievement_progress`;
CREATE TABLE `character_achievement_progress`  (
  `guid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `criteria` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `counter` int(10) NULL DEFAULT NULL,
  `date` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`guid`, `criteria`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of character_achievement_progress
-- ----------------------------

-- ----------------------------
-- Table structure for character_db_version
-- ----------------------------
DROP TABLE IF EXISTS `character_db_version`;
CREATE TABLE `character_db_version`  (
  `LastUpdate` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`LastUpdate`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of character_db_version
-- ----------------------------
INSERT INTO `character_db_version` VALUES ('2011-11-12_20-00_initial');

-- ----------------------------
-- Table structure for characters
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters`  (
  `guid` int(6) UNSIGNED NOT NULL DEFAULT 0,
  `acct` int(20) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(21) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `race` smallint(3) NOT NULL,
  `class` smallint(3) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `custom_faction` int(30) NOT NULL DEFAULT 0,
  `level` int(3) NOT NULL,
  `xp` int(30) NOT NULL,
  `active_cheats` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `exploration_data` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `watched_faction_index` bigint(40) NOT NULL,
  `selected_pvp_title` int(30) NOT NULL,
  `available_pvp_titles` bigint(10) UNSIGNED NOT NULL DEFAULT 0,
  `available_pvp_titles1` bigint(10) NOT NULL,
  `available_pvp_titles2` bigint(10) UNSIGNED NOT NULL DEFAULT 0,
  `gold` int(30) NOT NULL,
  `ammo_id` int(30) NOT NULL,
  `available_prof_points` int(30) NOT NULL,
  `current_hp` int(30) NOT NULL,
  `current_power` int(30) NOT NULL,
  `pvprank` int(30) NOT NULL,
  `bytes` int(30) NOT NULL,
  `bytes2` int(30) NOT NULL,
  `player_flags` int(30) NOT NULL,
  `player_bytes` int(30) NOT NULL,
  `positionX` float NOT NULL DEFAULT 0,
  `positionY` float NOT NULL DEFAULT 0,
  `positionZ` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  `mapId` int(8) UNSIGNED NOT NULL DEFAULT 0,
  `zoneId` int(8) UNSIGNED NOT NULL DEFAULT 0,
  `taximask` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `banned` int(40) UNSIGNED NOT NULL DEFAULT 0,
  `banReason` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `timestamp` int(30) NULL DEFAULT NULL,
  `online` int(11) NULL DEFAULT NULL,
  `bindpositionX` float NOT NULL DEFAULT 0,
  `bindpositionY` float NOT NULL DEFAULT 0,
  `bindpositionZ` float NOT NULL DEFAULT 0,
  `bindmapId` int(8) UNSIGNED NOT NULL DEFAULT 0,
  `bindzoneId` int(8) UNSIGNED NOT NULL DEFAULT 0,
  `isResting` int(3) NOT NULL DEFAULT 0,
  `restState` int(5) NOT NULL DEFAULT 0,
  `restTime` int(5) NOT NULL DEFAULT 0,
  `playedtime` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deathstate` int(5) NOT NULL DEFAULT 0,
  `TalentResetTimes` int(5) NOT NULL DEFAULT 0,
  `first_login` tinyint(1) NOT NULL DEFAULT 0,
  `forced_rename_pending` tinyint(1) NOT NULL DEFAULT 0,
  `arenaPoints` int(10) NOT NULL,
  `totalstableslots` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `instance_id` int(10) NOT NULL,
  `entrypointmap` int(10) NOT NULL,
  `entrypointx` float NOT NULL,
  `entrypointy` float NOT NULL,
  `entrypointz` float NOT NULL,
  `entrypointo` float NOT NULL,
  `entrypointinstance` int(10) NOT NULL,
  `taxi_path` int(10) NOT NULL,
  `taxi_lastnode` int(10) NOT NULL,
  `taxi_mountid` int(10) NOT NULL,
  `transporter` int(10) NOT NULL,
  `transporter_xdiff` float NOT NULL,
  `transporter_ydiff` float NOT NULL,
  `transporter_zdiff` float NOT NULL,
  `actions1` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `actions2` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `auras` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `finished_quests` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `finisheddailies` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `honorRolloverTime` int(30) NOT NULL DEFAULT 0,
  `killsToday` int(10) NOT NULL DEFAULT 0,
  `killsYesterday` int(10) NOT NULL DEFAULT 0,
  `killsLifeTime` int(10) NOT NULL DEFAULT 0,
  `honorToday` int(10) NOT NULL DEFAULT 0,
  `honorYesterday` int(10) NOT NULL DEFAULT 0,
  `honorPoints` int(10) NOT NULL DEFAULT 0,
  `difficulty` int(4) NOT NULL DEFAULT 0,
  `drunkValue` int(30) NOT NULL DEFAULT 0,
  `glyphs1` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `talents1` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `glyphs2` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `talents2` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `numspecs` int(10) NOT NULL DEFAULT 1,
  `currentspec` int(10) NOT NULL DEFAULT 0,
  `talentpoints` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `phase` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `CanGainXp` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `data` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `resettalents` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`) USING BTREE,
  INDEX `acct`(`acct`) USING BTREE,
  INDEX `name`(`name`) USING BTREE,
  INDEX `b`(`banned`) USING BTREE,
  INDEX `c`(`online`) USING BTREE,
  INDEX `d`(`forced_rename_pending`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of characters
-- ----------------------------

-- ----------------------------
-- Table structure for characters_insert_queue
-- ----------------------------
DROP TABLE IF EXISTS `characters_insert_queue`;
CREATE TABLE `characters_insert_queue`  (
  `insert_temp_guid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `acct` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(21) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `race` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `class` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `gender` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `custom_faction` int(30) NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `xp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `exploration_data` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `skills` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `watched_faction_index` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `selected_pvp_title` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `available_pvp_titles` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gold` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ammo_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `available_prof_points` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `available_talent_points` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `current_hp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `current_power` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pvprank` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `bytes` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bytes2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `player_flags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `player_bytes` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `positionX` float NOT NULL DEFAULT 0,
  `positionY` float NOT NULL DEFAULT 0,
  `positionZ` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  `mapId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `zoneId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `taximask` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `banned` int(40) NOT NULL,
  `banReason` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `online` int(11) NULL DEFAULT NULL,
  `bindpositionX` float NOT NULL DEFAULT 0,
  `bindpositionY` float NOT NULL DEFAULT 0,
  `bindpositionZ` float NOT NULL DEFAULT 0,
  `bindmapId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bindzoneId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `isResting` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `restState` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `restTime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `playedtime` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `deathstate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `TalentResetTimes` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `first_login` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `forced_rename_pending` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `publicNote` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `officerNote` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `guildid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `guildRank` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `arenaPoints` int(10) NOT NULL,
  `totalstableslots` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `instance_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `entrypointmap` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `entrypointx` float NOT NULL DEFAULT 0,
  `entrypointy` float NOT NULL DEFAULT 0,
  `entrypointz` float NOT NULL DEFAULT 0,
  `entrypointo` float NOT NULL DEFAULT 0,
  `entrypointinstance` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `taxi_path` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `taxi_lastnode` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `taxi_mountid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `transporter` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `transporter_xdiff` float NOT NULL DEFAULT 0,
  `transporter_ydiff` float NOT NULL DEFAULT 0,
  `transporter_zdiff` float NOT NULL DEFAULT 0,
  `spells` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `deleted_spells` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reputation` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `actions` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `auras` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `finished_quests` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `honorPointsToAdd` int(10) NOT NULL,
  `killsToday` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `killsYesterday` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `killsLifeTime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `honorToday` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `honorYesterday` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `honorPoints` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `difficulty` int(10) UNSIGNED NOT NULL DEFAULT 0,
  UNIQUE INDEX `guid`(`insert_temp_guid`) USING BTREE,
  INDEX `acct`(`acct`) USING BTREE,
  INDEX `guildid`(`guildid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of characters_insert_queue
-- ----------------------------

-- ----------------------------
-- Table structure for charters
-- ----------------------------
DROP TABLE IF EXISTS `charters`;
CREATE TABLE `charters`  (
  `charterId` int(30) NOT NULL,
  `charterType` int(30) NOT NULL DEFAULT 0,
  `leaderGuid` int(20) UNSIGNED NOT NULL DEFAULT 0,
  `guildName` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `itemGuid` bigint(40) UNSIGNED NOT NULL DEFAULT 0,
  `signer1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `signer2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `signer3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `signer4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `signer5` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `signer6` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `signer7` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `signer8` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `signer9` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`charterId`) USING BTREE,
  UNIQUE INDEX `leaderGuid`(`charterType`, `leaderGuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = 'InnoDB free: 11264 kB; InnoDB free: 18432 kB' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of charters
-- ----------------------------

-- ----------------------------
-- Table structure for clientaddons
-- ----------------------------
DROP TABLE IF EXISTS `clientaddons`;
CREATE TABLE `clientaddons`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `crc` bigint(50) NULL DEFAULT NULL,
  `banned` int(1) NOT NULL DEFAULT 0,
  `showinlist` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of clientaddons
-- ----------------------------

-- ----------------------------
-- Table structure for command_overrides
-- ----------------------------
DROP TABLE IF EXISTS `command_overrides`;
CREATE TABLE `command_overrides`  (
  `command_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `access_level` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`command_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of command_overrides
-- ----------------------------

-- ----------------------------
-- Table structure for corpses
-- ----------------------------
DROP TABLE IF EXISTS `corpses`;
CREATE TABLE `corpses`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `positionX` float NOT NULL DEFAULT 0,
  `positionY` float NOT NULL DEFAULT 0,
  `positionZ` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  `zoneId` int(11) NOT NULL DEFAULT 38,
  `mapId` int(11) NOT NULL DEFAULT 0,
  `instanceId` int(11) NOT NULL DEFAULT 0,
  `data` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`guid`) USING BTREE,
  INDEX `b`(`instanceId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of corpses
-- ----------------------------

-- ----------------------------
-- Table structure for equipmentsets
-- ----------------------------
DROP TABLE IF EXISTS `equipmentsets`;
CREATE TABLE `equipmentsets`  (
  `ownerguid` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `setGUID` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `setid` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `setname` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `iconname` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `head` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `neck` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `shoulders` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `body` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `chest` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `waist` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `legs` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `feet` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `wrists` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hands` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `finger1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `finger2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `trinket1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `trinket2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `back` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mainhand` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `offhand` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ranged` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tabard` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`ownerguid`, `setGUID`, `setid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of equipmentsets
-- ----------------------------

-- ----------------------------
-- Table structure for gm_tickets
-- ----------------------------
DROP TABLE IF EXISTS `gm_tickets`;
CREATE TABLE `gm_tickets`  (
  `ticketid` int(11) NOT NULL,
  `playerGuid` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `level` int(6) NOT NULL DEFAULT 0,
  `map` int(11) NOT NULL DEFAULT 0,
  `posX` float NOT NULL DEFAULT 0,
  `posY` float NOT NULL DEFAULT 0,
  `posZ` float NOT NULL DEFAULT 0,
  `message` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `timestamp` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `deleted` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `assignedto` int(11) NOT NULL DEFAULT 0,
  `comment` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  UNIQUE INDEX `guid`(`ticketid`) USING BTREE,
  UNIQUE INDEX `guid_2`(`ticketid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gm_tickets
-- ----------------------------

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups`  (
  `group_id` int(30) NOT NULL,
  `group_type` tinyint(2) NOT NULL,
  `subgroup_count` tinyint(2) NOT NULL,
  `loot_method` tinyint(2) NOT NULL,
  `loot_threshold` tinyint(2) NOT NULL,
  `difficulty` int(30) NOT NULL DEFAULT 0,
  `raiddifficulty` int(30) NOT NULL DEFAULT 0,
  `assistant_leader` int(30) NOT NULL DEFAULT 0,
  `main_tank` int(30) NOT NULL DEFAULT 0,
  `main_assist` int(30) NOT NULL DEFAULT 0,
  `group1member1` int(50) NOT NULL,
  `group1member2` int(50) NOT NULL,
  `group1member3` int(50) NOT NULL,
  `group1member4` int(50) NOT NULL,
  `group1member5` int(50) NOT NULL,
  `group2member1` int(50) NOT NULL,
  `group2member2` int(50) NOT NULL,
  `group2member3` int(50) NOT NULL,
  `group2member4` int(50) NOT NULL,
  `group2member5` int(50) NOT NULL,
  `group3member1` int(50) NOT NULL,
  `group3member2` int(50) NOT NULL,
  `group3member3` int(50) NOT NULL,
  `group3member4` int(50) NOT NULL,
  `group3member5` int(50) NOT NULL,
  `group4member1` int(50) NOT NULL,
  `group4member2` int(50) NOT NULL,
  `group4member3` int(50) NOT NULL,
  `group4member4` int(50) NOT NULL,
  `group4member5` int(50) NOT NULL,
  `group5member1` int(50) NOT NULL,
  `group5member2` int(50) NOT NULL,
  `group5member3` int(50) NOT NULL,
  `group5member4` int(50) NOT NULL,
  `group5member5` int(50) NOT NULL,
  `group6member1` int(50) NOT NULL,
  `group6member2` int(50) NOT NULL,
  `group6member3` int(50) NOT NULL,
  `group6member4` int(50) NOT NULL,
  `group6member5` int(50) NOT NULL,
  `group7member1` int(50) NOT NULL,
  `group7member2` int(50) NOT NULL,
  `group7member3` int(50) NOT NULL,
  `group7member4` int(50) NOT NULL,
  `group7member5` int(50) NOT NULL,
  `group8member1` int(50) NOT NULL,
  `group8member2` int(50) NOT NULL,
  `group8member3` int(50) NOT NULL,
  `group8member4` int(50) NOT NULL,
  `group8member5` int(50) NOT NULL,
  `timestamp` int(30) NOT NULL,
  `instanceids` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of groups
-- ----------------------------

-- ----------------------------
-- Table structure for guild_bankitems
-- ----------------------------
DROP TABLE IF EXISTS `guild_bankitems`;
CREATE TABLE `guild_bankitems`  (
  `guildId` int(30) NOT NULL,
  `tabId` int(30) NOT NULL,
  `slotId` int(30) NOT NULL,
  `itemGuid` int(30) NOT NULL,
  PRIMARY KEY (`guildId`, `tabId`, `slotId`) USING BTREE,
  INDEX `a`(`guildId`) USING BTREE,
  INDEX `b`(`tabId`) USING BTREE,
  INDEX `c`(`slotId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of guild_bankitems
-- ----------------------------

-- ----------------------------
-- Table structure for guild_banklogs
-- ----------------------------
DROP TABLE IF EXISTS `guild_banklogs`;
CREATE TABLE `guild_banklogs`  (
  `log_id` int(30) NOT NULL,
  `guildid` int(30) NOT NULL,
  `tabid` int(30) NOT NULL COMMENT 'tab 6 is money logs',
  `action` int(5) NOT NULL,
  `player_guid` int(30) NOT NULL,
  `item_entry` int(30) NOT NULL,
  `stack_count` int(30) NOT NULL,
  `timestamp` int(30) NOT NULL,
  PRIMARY KEY (`log_id`, `guildid`) USING BTREE,
  INDEX `a`(`guildid`) USING BTREE,
  INDEX `b`(`tabid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of guild_banklogs
-- ----------------------------

-- ----------------------------
-- Table structure for guild_banktabs
-- ----------------------------
DROP TABLE IF EXISTS `guild_banktabs`;
CREATE TABLE `guild_banktabs`  (
  `guildId` int(30) NOT NULL,
  `tabId` int(30) NOT NULL,
  `tabName` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tabIcon` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tabInfo` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`guildId`, `tabId`) USING BTREE,
  INDEX `a`(`guildId`) USING BTREE,
  INDEX `b`(`tabId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of guild_banktabs
-- ----------------------------

-- ----------------------------
-- Table structure for guild_data
-- ----------------------------
DROP TABLE IF EXISTS `guild_data`;
CREATE TABLE `guild_data`  (
  `guildid` int(30) NOT NULL,
  `playerid` int(30) NOT NULL,
  `guildRank` int(30) NOT NULL,
  `publicNote` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `officerNote` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lastWithdrawReset` int(30) NOT NULL DEFAULT 0,
  `withdrawlsSinceLastReset` int(30) NOT NULL DEFAULT 0,
  `lastItemWithdrawReset0` int(30) NOT NULL DEFAULT 0,
  `itemWithdrawlsSinceLastReset0` int(30) NOT NULL DEFAULT 0,
  `lastItemWithdrawReset1` int(30) NOT NULL,
  `itemWithdrawlsSinceLastReset1` int(30) NOT NULL,
  `lastItemWithdrawReset2` int(30) NOT NULL,
  `itemWithdrawlsSinceLastReset2` int(30) NOT NULL,
  `lastItemWithdrawReset3` int(30) NOT NULL,
  `itemWithdrawlsSinceLastReset3` int(30) NOT NULL,
  `lastItemWithdrawReset4` int(30) NOT NULL,
  `itemWithdrawlsSinceLastReset4` int(30) NOT NULL,
  `lastItemWithdrawReset5` int(30) NOT NULL,
  `itemWithdrawlsSinceLastReset5` int(30) NOT NULL,
  INDEX `a`(`guildid`) USING BTREE,
  INDEX `b`(`playerid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of guild_data
-- ----------------------------

-- ----------------------------
-- Table structure for guild_logs
-- ----------------------------
DROP TABLE IF EXISTS `guild_logs`;
CREATE TABLE `guild_logs`  (
  `log_id` int(30) NOT NULL,
  `guildid` int(30) NOT NULL,
  `timestamp` int(30) NOT NULL,
  `event_type` int(30) NOT NULL,
  `misc1` int(30) NOT NULL,
  `misc2` int(30) NOT NULL,
  `misc3` int(30) NOT NULL,
  PRIMARY KEY (`log_id`, `guildid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of guild_logs
-- ----------------------------

-- ----------------------------
-- Table structure for guild_ranks
-- ----------------------------
DROP TABLE IF EXISTS `guild_ranks`;
CREATE TABLE `guild_ranks`  (
  `guildId` int(6) UNSIGNED NOT NULL DEFAULT 0,
  `rankId` int(1) NOT NULL DEFAULT 0,
  `rankName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `rankRights` int(3) UNSIGNED NOT NULL DEFAULT 0,
  `goldLimitPerDay` int(30) NOT NULL DEFAULT 0,
  `bankTabFlags0` int(30) NOT NULL DEFAULT 0,
  `itemStacksPerDay0` int(30) NOT NULL DEFAULT 0,
  `bankTabFlags1` int(30) NOT NULL DEFAULT 0,
  `itemStacksPerDay1` int(30) NOT NULL DEFAULT 0,
  `bankTabFlags2` int(30) NOT NULL DEFAULT 0,
  `itemStacksPerDay2` int(30) NOT NULL DEFAULT 0,
  `bankTabFlags3` int(30) NOT NULL DEFAULT 0,
  `itemStacksPerDay3` int(30) NOT NULL DEFAULT 0,
  `bankTabFlags4` int(30) NOT NULL DEFAULT 0,
  `itemStacksPerDay4` int(30) NOT NULL DEFAULT 0,
  `bankTabFlags5` int(30) NOT NULL DEFAULT 0,
  `itemStacksPerDay5` int(30) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guildId`, `rankId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of guild_ranks
-- ----------------------------

-- ----------------------------
-- Table structure for guilds
-- ----------------------------
DROP TABLE IF EXISTS `guilds`;
CREATE TABLE `guilds`  (
  `guildId` bigint(20) NOT NULL AUTO_INCREMENT,
  `guildName` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `leaderGuid` bigint(20) NOT NULL DEFAULT 0,
  `emblemStyle` int(10) NOT NULL DEFAULT 0,
  `emblemColor` int(10) NOT NULL DEFAULT 0,
  `borderStyle` int(10) NOT NULL DEFAULT 0,
  `borderColor` int(10) NOT NULL DEFAULT 0,
  `backgroundColor` int(10) NOT NULL DEFAULT 0,
  `guildInfo` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `motd` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `createdate` int(30) NOT NULL,
  `bankBalance` bigint(30) UNSIGNED NOT NULL,
  PRIMARY KEY (`guildId`) USING BTREE,
  UNIQUE INDEX `guildId`(`guildId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of guilds
-- ----------------------------

-- ----------------------------
-- Table structure for instanceids
-- ----------------------------
DROP TABLE IF EXISTS `instanceids`;
CREATE TABLE `instanceids`  (
  `playerguid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `mapid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `mode` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `instanceid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`playerguid`, `mapid`, `mode`) USING BTREE,
  INDEX `ix_instanceid`(`playerguid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = 'Player / InstanceID - Reference Table' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of instanceids
-- ----------------------------

-- ----------------------------
-- Table structure for instances
-- ----------------------------
DROP TABLE IF EXISTS `instances`;
CREATE TABLE `instances`  (
  `id` int(30) NOT NULL,
  `mapid` int(30) NOT NULL,
  `creation` int(30) NOT NULL,
  `expiration` int(30) NOT NULL,
  `killed_npc_guids` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `difficulty` int(30) NOT NULL,
  `creator_group` int(30) NOT NULL,
  `creator_guid` int(30) NOT NULL,
  `persistent` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `a`(`mapid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of instances
-- ----------------------------

-- ----------------------------
-- Table structure for mailbox
-- ----------------------------
DROP TABLE IF EXISTS `mailbox`;
CREATE TABLE `mailbox`  (
  `message_id` int(30) NOT NULL DEFAULT 0,
  `message_type` int(30) NOT NULL DEFAULT 0,
  `player_guid` int(30) NOT NULL DEFAULT 0,
  `sender_guid` bigint(30) NOT NULL DEFAULT 0,
  `subject` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `body` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `money` int(30) NOT NULL DEFAULT 0,
  `attached_item_guids` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `cod` int(30) NOT NULL DEFAULT 0,
  `stationary` int(30) NOT NULL DEFAULT 0,
  `expiry_time` int(30) NOT NULL DEFAULT 0,
  `delivery_time` int(30) NOT NULL DEFAULT 0,
  `checked_flag` int(30) UNSIGNED NOT NULL DEFAULT 0,
  `deleted_flag` int(30) NOT NULL DEFAULT 0,
  PRIMARY KEY (`message_id`) USING BTREE,
  INDEX `b`(`player_guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mailbox
-- ----------------------------

-- ----------------------------
-- Table structure for mailbox_insert_queue
-- ----------------------------
DROP TABLE IF EXISTS `mailbox_insert_queue`;
CREATE TABLE `mailbox_insert_queue`  (
  `sender_guid` bigint(30) NOT NULL,
  `receiver_guid` int(30) NOT NULL,
  `subject` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `body` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `stationary` int(30) NOT NULL,
  `money` int(30) NOT NULL,
  `item_id` int(30) NOT NULL,
  `item_stack` int(30) NOT NULL,
  `item_id2` int(30) NOT NULL DEFAULT 0,
  `item_stack2` int(30) NOT NULL DEFAULT 0,
  `item_id3` int(30) NOT NULL DEFAULT 0,
  `item_stack3` int(30) NOT NULL DEFAULT 0,
  `item_id4` int(30) NOT NULL DEFAULT 0,
  `item_stack4` int(30) NOT NULL DEFAULT 0,
  `item_id5` int(30) NOT NULL DEFAULT 0,
  `item_stack5` int(30) NOT NULL DEFAULT 0,
  `item_id6` int(30) NOT NULL DEFAULT 0,
  `item_stack6` int(30) NOT NULL DEFAULT 0,
  `item_id7` int(30) NOT NULL DEFAULT 0,
  `item_stack7` int(30) NOT NULL DEFAULT 0,
  `item_id8` int(30) NOT NULL DEFAULT 0,
  `item_stack8` int(30) NOT NULL DEFAULT 0,
  `item_id9` int(30) NOT NULL DEFAULT 0,
  `item_stack9` int(30) NOT NULL DEFAULT 0,
  `item_id10` int(30) NOT NULL DEFAULT 0,
  `item_stack10` int(30) NOT NULL DEFAULT 0,
  `item_id11` int(30) NOT NULL DEFAULT 0,
  `item_stack11` int(30) NOT NULL DEFAULT 0,
  `item_id12` int(30) NOT NULL DEFAULT 0,
  `item_stack12` int(30) NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mailbox_insert_queue
-- ----------------------------

-- ----------------------------
-- Table structure for playerbugreports
-- ----------------------------
DROP TABLE IF EXISTS `playerbugreports`;
CREATE TABLE `playerbugreports`  (
  `UID` int(10) UNSIGNED NOT NULL,
  `AccountID` int(10) UNSIGNED NOT NULL,
  `TimeStamp` int(10) UNSIGNED NOT NULL,
  `Suggestion` int(10) UNSIGNED NOT NULL,
  `Type` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Content` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`UID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of playerbugreports
-- ----------------------------

-- ----------------------------
-- Table structure for playercooldowns
-- ----------------------------
DROP TABLE IF EXISTS `playercooldowns`;
CREATE TABLE `playercooldowns`  (
  `player_guid` int(30) NOT NULL,
  `cooldown_type` int(30) NOT NULL COMMENT '0 is spell, 1 is item, 2 is spell category',
  `cooldown_misc` int(30) NOT NULL COMMENT 'spellid/itemid/category',
  `cooldown_expire_time` int(30) NOT NULL COMMENT 'expiring time in unix epoch format',
  `cooldown_spellid` int(30) NOT NULL COMMENT 'spell that cast it',
  `cooldown_itemid` int(30) NOT NULL COMMENT 'item that cast it'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of playercooldowns
-- ----------------------------

-- ----------------------------
-- Table structure for playerdeletedspells
-- ----------------------------
DROP TABLE IF EXISTS `playerdeletedspells`;
CREATE TABLE `playerdeletedspells`  (
  `GUID` int(10) UNSIGNED NOT NULL,
  `SpellID` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`GUID`, `SpellID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of playerdeletedspells
-- ----------------------------

-- ----------------------------
-- Table structure for playeritems
-- ----------------------------
DROP TABLE IF EXISTS `playeritems`;
CREATE TABLE `playeritems`  (
  `ownerguid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `guid` bigint(10) NOT NULL AUTO_INCREMENT,
  `entry` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `wrapped_item_id` int(30) NOT NULL DEFAULT 0,
  `wrapped_creator` int(30) NOT NULL DEFAULT 0,
  `creator` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `charges` int(10) NOT NULL DEFAULT 0,
  `flags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `randomprop` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `randomsuffix` int(10) NOT NULL,
  `itemtext` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `durability` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `containerslot` int(11) NULL DEFAULT -1,
  `slot` int(10) NOT NULL DEFAULT 0,
  `enchantments` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `duration_expireson` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `refund_purchasedon` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `refund_costid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `text` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`guid`) USING BTREE,
  INDEX `ownerguid`(`ownerguid`) USING BTREE,
  INDEX `itemtext`(`itemtext`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10007 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of playeritems
-- ----------------------------

-- ----------------------------
-- Table structure for playeritems_insert_queue
-- ----------------------------
DROP TABLE IF EXISTS `playeritems_insert_queue`;
CREATE TABLE `playeritems_insert_queue`  (
  `ownerguid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `entry` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `wrapped_item_id` int(30) NOT NULL DEFAULT 0,
  `wrapped_creator` int(30) NOT NULL DEFAULT 0,
  `creator` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `charges` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `flags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `randomprop` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `randomsuffix` int(30) NOT NULL,
  `itemtext` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `durability` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `containerslot` int(11) NOT NULL DEFAULT -1 COMMENT 'couldnt find this being used in source',
  `slot` tinyint(4) NOT NULL DEFAULT 0,
  `enchantments` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  INDEX `ownerguid`(`ownerguid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of playeritems_insert_queue
-- ----------------------------

-- ----------------------------
-- Table structure for playerpets
-- ----------------------------
DROP TABLE IF EXISTS `playerpets`;
CREATE TABLE `playerpets`  (
  `ownerguid` bigint(20) NOT NULL DEFAULT 0,
  `petnumber` int(11) NOT NULL DEFAULT 0,
  `name` varchar(21) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entry` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `xp` int(11) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 0,
  `actionbar` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `happinessupdate` int(11) NOT NULL DEFAULT 0,
  `reset_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reset_cost` int(10) NOT NULL DEFAULT 0,
  `spellid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `petstate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `alive` tinyint(1) NOT NULL DEFAULT 1,
  `talentpoints` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `current_power` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `current_hp` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `current_happiness` int(10) UNSIGNED NOT NULL DEFAULT 1000000,
  `renamable` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`ownerguid`, `petnumber`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of playerpets
-- ----------------------------

-- ----------------------------
-- Table structure for playerpetspells
-- ----------------------------
DROP TABLE IF EXISTS `playerpetspells`;
CREATE TABLE `playerpetspells`  (
  `ownerguid` bigint(20) NOT NULL DEFAULT 0,
  `petnumber` int(4) NOT NULL DEFAULT 0,
  `spellid` int(4) NOT NULL DEFAULT 0,
  `flags` int(4) NOT NULL DEFAULT 0,
  INDEX `a`(`ownerguid`) USING BTREE,
  INDEX `b`(`petnumber`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of playerpetspells
-- ----------------------------

-- ----------------------------
-- Table structure for playerreputations
-- ----------------------------
DROP TABLE IF EXISTS `playerreputations`;
CREATE TABLE `playerreputations`  (
  `guid` int(10) UNSIGNED NOT NULL,
  `faction` int(10) UNSIGNED NOT NULL,
  `flag` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `basestanding` int(11) NOT NULL DEFAULT 0,
  `standing` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `faction`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of playerreputations
-- ----------------------------

-- ----------------------------
-- Table structure for playerskills
-- ----------------------------
DROP TABLE IF EXISTS `playerskills`;
CREATE TABLE `playerskills`  (
  `GUID` int(10) UNSIGNED NOT NULL,
  `SkillID` int(10) UNSIGNED NOT NULL,
  `CurrentValue` int(10) UNSIGNED NOT NULL,
  `MaximumValue` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`GUID`, `SkillID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of playerskills
-- ----------------------------

-- ----------------------------
-- Table structure for playerspells
-- ----------------------------
DROP TABLE IF EXISTS `playerspells`;
CREATE TABLE `playerspells`  (
  `GUID` int(10) UNSIGNED NOT NULL,
  `SpellID` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`GUID`, `SpellID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of playerspells
-- ----------------------------

-- ----------------------------
-- Table structure for playersummons
-- ----------------------------
DROP TABLE IF EXISTS `playersummons`;
CREATE TABLE `playersummons`  (
  `ownerguid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `entry` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  INDEX `a`(`ownerguid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of playersummons
-- ----------------------------

-- ----------------------------
-- Table structure for playersummonspells
-- ----------------------------
DROP TABLE IF EXISTS `playersummonspells`;
CREATE TABLE `playersummonspells`  (
  `ownerguid` bigint(20) NOT NULL DEFAULT 0,
  `entryid` int(4) NOT NULL DEFAULT 0,
  `spellid` int(4) NOT NULL DEFAULT 0,
  INDEX `a`(`ownerguid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of playersummonspells
-- ----------------------------

-- ----------------------------
-- Table structure for questlog
-- ----------------------------
DROP TABLE IF EXISTS `questlog`;
CREATE TABLE `questlog`  (
  `player_guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `quest_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `slot` int(20) UNSIGNED NOT NULL DEFAULT 0,
  `expirytime` int(20) UNSIGNED NOT NULL DEFAULT 0,
  `explored_area1` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `explored_area2` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `explored_area3` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `explored_area4` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `mob_kill1` bigint(20) NOT NULL DEFAULT 0,
  `mob_kill2` bigint(20) NOT NULL DEFAULT 0,
  `mob_kill3` bigint(20) NOT NULL DEFAULT 0,
  `mob_kill4` bigint(20) NOT NULL DEFAULT 0,
  `completed` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`player_guid`, `quest_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of questlog
-- ----------------------------

-- ----------------------------
-- Table structure for server_settings
-- ----------------------------
DROP TABLE IF EXISTS `server_settings`;
CREATE TABLE `server_settings`  (
  `setting_id` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `setting_value` int(50) NOT NULL,
  PRIMARY KEY (`setting_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of server_settings
-- ----------------------------

-- ----------------------------
-- Table structure for social_friends
-- ----------------------------
DROP TABLE IF EXISTS `social_friends`;
CREATE TABLE `social_friends`  (
  `character_guid` int(30) NOT NULL,
  `friend_guid` int(30) NOT NULL,
  `note` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`character_guid`, `friend_guid`) USING BTREE,
  INDEX `a`(`character_guid`) USING BTREE,
  INDEX `b`(`friend_guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of social_friends
-- ----------------------------

-- ----------------------------
-- Table structure for social_ignores
-- ----------------------------
DROP TABLE IF EXISTS `social_ignores`;
CREATE TABLE `social_ignores`  (
  `character_guid` int(30) NOT NULL,
  `ignore_guid` int(30) NOT NULL,
  PRIMARY KEY (`character_guid`, `ignore_guid`) USING BTREE,
  INDEX `a`(`character_guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of social_ignores
-- ----------------------------

-- ----------------------------
-- Table structure for tutorials
-- ----------------------------
DROP TABLE IF EXISTS `tutorials`;
CREATE TABLE `tutorials`  (
  `playerId` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `tut0` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `tut1` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `tut2` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `tut3` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `tut4` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `tut5` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `tut6` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `tut7` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`playerId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tutorials
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;

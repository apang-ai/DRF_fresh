/*
 Navicat Premium Data Transfer

 Source Server         : fresh
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : freshshop

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 26/03/2020 16:06:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (9, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (10, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (11, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add 用户信息', 6, 'add_userprofile');
INSERT INTO `auth_permission` VALUES (22, 'Can change 用户信息', 6, 'change_userprofile');
INSERT INTO `auth_permission` VALUES (23, 'Can delete 用户信息', 6, 'delete_userprofile');
INSERT INTO `auth_permission` VALUES (24, 'Can add 短信验证', 7, 'add_verifycode');
INSERT INTO `auth_permission` VALUES (25, 'Can change 短信验证', 7, 'change_verifycode');
INSERT INTO `auth_permission` VALUES (26, 'Can delete 短信验证', 7, 'delete_verifycode');
INSERT INTO `auth_permission` VALUES (27, 'Can view 用户信息', 6, 'view_userprofile');
INSERT INTO `auth_permission` VALUES (28, 'Can view 短信验证', 7, 'view_verifycode');
INSERT INTO `auth_permission` VALUES (29, 'Can add Bookmark', 8, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (30, 'Can change Bookmark', 8, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (31, 'Can delete Bookmark', 8, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (32, 'Can add User Setting', 9, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (33, 'Can change User Setting', 9, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (34, 'Can delete User Setting', 9, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (35, 'Can add User Widget', 10, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (36, 'Can change User Widget', 10, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (37, 'Can delete User Widget', 10, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (38, 'Can add log entry', 11, 'add_log');
INSERT INTO `auth_permission` VALUES (39, 'Can change log entry', 11, 'change_log');
INSERT INTO `auth_permission` VALUES (40, 'Can delete log entry', 11, 'delete_log');
INSERT INTO `auth_permission` VALUES (41, 'Can view Bookmark', 8, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (42, 'Can view log entry', 11, 'view_log');
INSERT INTO `auth_permission` VALUES (43, 'Can view User Setting', 9, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (44, 'Can view User Widget', 10, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (45, 'Can add 首页轮播', 12, 'add_banner');
INSERT INTO `auth_permission` VALUES (46, 'Can change 首页轮播', 12, 'change_banner');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 首页轮播', 12, 'delete_banner');
INSERT INTO `auth_permission` VALUES (48, 'Can add 商品信息', 13, 'add_goods');
INSERT INTO `auth_permission` VALUES (49, 'Can change 商品信息', 13, 'change_goods');
INSERT INTO `auth_permission` VALUES (50, 'Can delete 商品信息', 13, 'delete_goods');
INSERT INTO `auth_permission` VALUES (51, 'Can add 商品类别', 14, 'add_goodscategory');
INSERT INTO `auth_permission` VALUES (52, 'Can change 商品类别', 14, 'change_goodscategory');
INSERT INTO `auth_permission` VALUES (53, 'Can delete 商品类别', 14, 'delete_goodscategory');
INSERT INTO `auth_permission` VALUES (54, 'Can add 宣传品牌', 15, 'add_goodscategorybrand');
INSERT INTO `auth_permission` VALUES (55, 'Can change 宣传品牌', 15, 'change_goodscategorybrand');
INSERT INTO `auth_permission` VALUES (56, 'Can delete 宣传品牌', 15, 'delete_goodscategorybrand');
INSERT INTO `auth_permission` VALUES (57, 'Can add 商品轮播', 16, 'add_goodsimage');
INSERT INTO `auth_permission` VALUES (58, 'Can change 商品轮播', 16, 'change_goodsimage');
INSERT INTO `auth_permission` VALUES (59, 'Can delete 商品轮播', 16, 'delete_goodsimage');
INSERT INTO `auth_permission` VALUES (60, 'Can add 热搜排行', 17, 'add_hotsearchwords');
INSERT INTO `auth_permission` VALUES (61, 'Can change 热搜排行', 17, 'change_hotsearchwords');
INSERT INTO `auth_permission` VALUES (62, 'Can delete 热搜排行', 17, 'delete_hotsearchwords');
INSERT INTO `auth_permission` VALUES (63, 'Can add 首页广告', 18, 'add_indexad');
INSERT INTO `auth_permission` VALUES (64, 'Can change 首页广告', 18, 'change_indexad');
INSERT INTO `auth_permission` VALUES (65, 'Can delete 首页广告', 18, 'delete_indexad');
INSERT INTO `auth_permission` VALUES (66, 'Can view 首页轮播', 12, 'view_banner');
INSERT INTO `auth_permission` VALUES (67, 'Can view 商品信息', 13, 'view_goods');
INSERT INTO `auth_permission` VALUES (68, 'Can view 商品类别', 14, 'view_goodscategory');
INSERT INTO `auth_permission` VALUES (69, 'Can view 宣传品牌', 15, 'view_goodscategorybrand');
INSERT INTO `auth_permission` VALUES (70, 'Can view 商品轮播', 16, 'view_goodsimage');
INSERT INTO `auth_permission` VALUES (71, 'Can view 热搜排行', 17, 'view_hotsearchwords');
INSERT INTO `auth_permission` VALUES (72, 'Can view 首页广告', 18, 'view_indexad');
INSERT INTO `auth_permission` VALUES (73, 'Can add 订单商品', 19, 'add_ordergoods');
INSERT INTO `auth_permission` VALUES (74, 'Can change 订单商品', 19, 'change_ordergoods');
INSERT INTO `auth_permission` VALUES (75, 'Can delete 订单商品', 19, 'delete_ordergoods');
INSERT INTO `auth_permission` VALUES (76, 'Can add 订单信息', 20, 'add_orderinfo');
INSERT INTO `auth_permission` VALUES (77, 'Can change 订单信息', 20, 'change_orderinfo');
INSERT INTO `auth_permission` VALUES (78, 'Can delete 订单信息', 20, 'delete_orderinfo');
INSERT INTO `auth_permission` VALUES (79, 'Can add 购物车喵', 21, 'add_shoppingcart');
INSERT INTO `auth_permission` VALUES (80, 'Can change 购物车喵', 21, 'change_shoppingcart');
INSERT INTO `auth_permission` VALUES (81, 'Can delete 购物车喵', 21, 'delete_shoppingcart');
INSERT INTO `auth_permission` VALUES (82, 'Can view 订单商品', 19, 'view_ordergoods');
INSERT INTO `auth_permission` VALUES (83, 'Can view 订单信息', 20, 'view_orderinfo');
INSERT INTO `auth_permission` VALUES (84, 'Can view 购物车喵', 21, 'view_shoppingcart');
INSERT INTO `auth_permission` VALUES (85, 'Can add 收货地址', 22, 'add_useraddress');
INSERT INTO `auth_permission` VALUES (86, 'Can change 收货地址', 22, 'change_useraddress');
INSERT INTO `auth_permission` VALUES (87, 'Can delete 收货地址', 22, 'delete_useraddress');
INSERT INTO `auth_permission` VALUES (88, 'Can add 用户收藏', 23, 'add_userfav');
INSERT INTO `auth_permission` VALUES (89, 'Can change 用户收藏', 23, 'change_userfav');
INSERT INTO `auth_permission` VALUES (90, 'Can delete 用户收藏', 23, 'delete_userfav');
INSERT INTO `auth_permission` VALUES (91, 'Can add 用户留言', 24, 'add_userleavingmessage');
INSERT INTO `auth_permission` VALUES (92, 'Can change 用户留言', 24, 'change_userleavingmessage');
INSERT INTO `auth_permission` VALUES (93, 'Can delete 用户留言', 24, 'delete_userleavingmessage');
INSERT INTO `auth_permission` VALUES (94, 'Can view 收货地址', 22, 'view_useraddress');
INSERT INTO `auth_permission` VALUES (95, 'Can view 用户收藏', 23, 'view_userfav');
INSERT INTO `auth_permission` VALUES (96, 'Can view 用户留言', 24, 'view_userleavingmessage');
INSERT INTO `auth_permission` VALUES (97, 'Can add Token', 25, 'add_token');
INSERT INTO `auth_permission` VALUES (98, 'Can change Token', 25, 'change_token');
INSERT INTO `auth_permission` VALUES (99, 'Can delete Token', 25, 'delete_token');
INSERT INTO `auth_permission` VALUES (100, 'Can view Token', 25, 'view_token');

-- ----------------------------
-- Table structure for authtoken_token
-- ----------------------------
DROP TABLE IF EXISTS `authtoken_token`;
CREATE TABLE `authtoken_token`  (
  `key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`key`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (25, 'authtoken', 'token');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (12, 'goods', 'banners');
INSERT INTO `django_content_type` VALUES (13, 'goods', 'goods');
INSERT INTO `django_content_type` VALUES (14, 'goods', 'goodscategory');
INSERT INTO `django_content_type` VALUES (15, 'goods', 'goodscategorybrand');
INSERT INTO `django_content_type` VALUES (16, 'goods', 'goodsimage');
INSERT INTO `django_content_type` VALUES (17, 'goods', 'hotsearchwords');
INSERT INTO `django_content_type` VALUES (18, 'goods', 'indexad');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (19, 'trade', 'ordergoods');
INSERT INTO `django_content_type` VALUES (20, 'trade', 'orderinfo');
INSERT INTO `django_content_type` VALUES (21, 'trade', 'shoppingcart');
INSERT INTO `django_content_type` VALUES (6, 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES (7, 'users', 'verifycode');
INSERT INTO `django_content_type` VALUES (22, 'user_operation', 'useraddress');
INSERT INTO `django_content_type` VALUES (23, 'user_operation', 'userfav');
INSERT INTO `django_content_type` VALUES (24, 'user_operation', 'userleavingmessage');
INSERT INTO `django_content_type` VALUES (8, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (11, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (9, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (10, 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-03-26 00:09:35.192424');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2020-03-26 00:09:37.770045');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2020-03-26 00:09:42.959068');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2020-03-26 00:09:44.705132');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2020-03-26 00:09:44.771308');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2020-03-26 00:09:44.827268');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2020-03-26 00:09:44.897288');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2020-03-26 00:09:44.962135');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2020-03-26 00:09:45.027184');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2020-03-26 00:09:45.083785');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2020-03-26 00:09:45.140197');
INSERT INTO `django_migrations` VALUES (12, 'users', '0001_initial', '2020-03-26 00:09:53.120465');
INSERT INTO `django_migrations` VALUES (13, 'admin', '0001_initial', '2020-03-26 00:09:57.488046');
INSERT INTO `django_migrations` VALUES (14, 'admin', '0002_logentry_remove_auto_add', '2020-03-26 00:09:57.578738');
INSERT INTO `django_migrations` VALUES (15, 'sessions', '0001_initial', '2020-03-26 00:09:58.434975');
INSERT INTO `django_migrations` VALUES (16, 'xadmin', '0001_initial', '2020-03-26 00:10:06.925395');
INSERT INTO `django_migrations` VALUES (17, 'xadmin', '0002_log', '2020-03-26 00:10:11.988689');
INSERT INTO `django_migrations` VALUES (18, 'xadmin', '0003_auto_20160715_0100', '2020-03-26 00:10:14.554210');
INSERT INTO `django_migrations` VALUES (19, 'goods', '0001_initial', '2020-03-26 00:27:26.918209');
INSERT INTO `django_migrations` VALUES (20, 'trade', '0001_initial', '2020-03-26 00:27:38.999632');
INSERT INTO `django_migrations` VALUES (21, 'user_operation', '0001_initial', '2020-03-26 00:27:48.536831');
INSERT INTO `django_migrations` VALUES (22, 'authtoken', '0001_initial', '2020-03-26 11:36:32.243066');
INSERT INTO `django_migrations` VALUES (23, 'authtoken', '0002_auto_20160226_1747', '2020-03-26 11:36:33.354211');
INSERT INTO `django_migrations` VALUES (24, 'users', '0002_auto_20200326_1148', '2020-03-26 11:50:06.784514');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('awe8wsrv2j3ef0jc2ov21sstdcicu2ng', 'N2Y4OWJmMjExMWUxYmU0MTcwN2Y3ZDkwMjJiNjkwNDc5NzYxZTk4Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NDg0ZWY5ZTEzMTg5YTljNDlkZTZkNzViMDBmOThkMTg5MDBkN2RlIiwiTElTVF9RVUVSWSI6W1siZ29vZHMiLCJnb29kc2NhdGVnb3J5Il0sIiJdfQ==', '2020-04-09 10:35:49.755211');
INSERT INTO `django_session` VALUES ('pd3xyvyjwom92o88obq24mv25ck4988p', 'N2Y4OWJmMjExMWUxYmU0MTcwN2Y3ZDkwMjJiNjkwNDc5NzYxZTk4Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NDg0ZWY5ZTEzMTg5YTljNDlkZTZkNzViMDBmOThkMTg5MDBkN2RlIiwiTElTVF9RVUVSWSI6W1siZ29vZHMiLCJnb29kc2NhdGVnb3J5Il0sIiJdfQ==', '2020-04-09 14:28:52.761927');
INSERT INTO `django_session` VALUES ('z5kbtb1aibn9d7dlwyi4v79u893slgqd', 'N2Y4OWJmMjExMWUxYmU0MTcwN2Y3ZDkwMjJiNjkwNDc5NzYxZTk4Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NDg0ZWY5ZTEzMTg5YTljNDlkZTZkNzViMDBmOThkMTg5MDBkN2RlIiwiTElTVF9RVUVSWSI6W1siZ29vZHMiLCJnb29kc2NhdGVnb3J5Il0sIiJdfQ==', '2020-04-09 08:55:30.416796');

-- ----------------------------
-- Table structure for goods_banner
-- ----------------------------
DROP TABLE IF EXISTS `goods_banner`;
CREATE TABLE `goods_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_banner_goods_id_99e23129_fk_goods_goods_id`(`goods_id`) USING BTREE,
  CONSTRAINT `goods_banner_goods_id_99e23129_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods_goods
-- ----------------------------
DROP TABLE IF EXISTS `goods_goods`;
CREATE TABLE `goods_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_sn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_num` int(11) NOT NULL,
  `sold_num` int(11) NOT NULL,
  `fav_num` int(11) NOT NULL,
  `goods_num` int(11) NOT NULL,
  `market_price` double NOT NULL,
  `shop_price` double NOT NULL,
  `goods_brief` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods_desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ship_free` tinyint(1) NOT NULL,
  `goods_front_image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_new` tinyint(1) NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_goods_category_id_da3507dd_fk_goods_goodscategory_id`(`category_id`) USING BTREE,
  CONSTRAINT `goods_goods_category_id_da3507dd_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_goods
-- ----------------------------
INSERT INTO `goods_goods` VALUES (53, '', '新鲜水果甜蜜香脆单果约800克', 0, 0, 0, 0, 232, 156, '食用百香果可以增加胃部饱腹感，减少余热量的摄入，还可以吸附胆固醇和胆汁之类有机分子，抑制人体对脂肪的吸收。因此，长期食用有利于改善人体营养吸收结构，降低体内脂肪，塑造健康优美体态。', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/1_P_1449024889889.jpg', 0, 0, '2020-03-26 13:54:18.227713', 380);
INSERT INTO `goods_goods` VALUES (54, '', '田然牛肉大黄瓜条生鲜牛肉冷冻真空黄牛', 0, 0, 0, 0, 106, 88, '前腿+后腿+羊排共8斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/2_P_1448945810202.jpg', 0, 0, '2020-03-26 13:54:18.679515', 367);
INSERT INTO `goods_goods` VALUES (55, '', '酣畅家庭菲力牛排10片澳洲生鲜牛肉团购套餐', 0, 0, 0, 0, 286, 238, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/7_P_1448945104883.jpg', 0, 0, '2020-03-26 13:54:18.832193', 375);
INSERT INTO `goods_goods` VALUES (56, '', '日本蒜蓉粉丝扇贝270克6只装', 0, 0, 0, 0, 156, 108, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/47_P_1448946213263.jpg', 0, 0, '2020-03-26 13:54:19.104960', 380);
INSERT INTO `goods_goods` VALUES (57, '', '内蒙新鲜牛肉1斤清真生鲜牛肉火锅食材', 0, 0, 0, 0, 106, 88, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/10_P_1448944572085.jpg', 0, 0, '2020-03-26 13:54:19.241649', 367);
INSERT INTO `goods_goods` VALUES (58, '', '乌拉圭进口牛肉卷特级肥牛卷', 0, 0, 0, 0, 90, 75, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/4_P_1448945381985.jpg', 0, 0, '2020-03-26 13:54:19.428291', 381);
INSERT INTO `goods_goods` VALUES (59, '', '五星眼肉牛排套餐8片装原味原切生鲜牛肉', 0, 0, 0, 0, 150, 125, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/8_P_1448945032810.jpg', 0, 0, '2020-03-26 13:54:19.564090', 383);
INSERT INTO `goods_goods` VALUES (60, '', '澳洲进口120天谷饲牛仔骨4份原味生鲜', 0, 0, 0, 0, 31, 26, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/11_P_1448944388277.jpg', 0, 0, '2020-03-26 13:54:19.838325', 367);
INSERT INTO `goods_goods` VALUES (61, '', '潮香村澳洲进口牛排家庭团购套餐20片', 0, 0, 0, 0, 239, 199, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/6_P_1448945167279.jpg', 0, 0, '2020-03-26 13:54:20.042776', 382);
INSERT INTO `goods_goods` VALUES (62, '', '爱食派内蒙古呼伦贝尔冷冻生鲜牛腱子肉1000g', 0, 0, 0, 0, 202, 168, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/9_P_1448944791617.jpg', 0, 0, '2020-03-26 13:54:20.212851', 380);
INSERT INTO `goods_goods` VALUES (63, '', '澳洲进口牛尾巴300g新鲜肥牛肉', 0, 0, 0, 0, 306, 255, '新鲜羊羔肉整只共15斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/3_P_1448945490837.jpg', 0, 0, '2020-03-26 13:54:20.445400', 362);
INSERT INTO `goods_goods` VALUES (64, '', '新疆巴尔鲁克生鲜牛排眼肉牛扒1200g', 0, 0, 0, 0, 126, 88, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/48_P_1448943988970.jpg', 0, 0, '2020-03-26 13:54:20.597843', 367);
INSERT INTO `goods_goods` VALUES (65, '', '澳洲进口安格斯牛切片上脑牛排1000g', 0, 0, 0, 0, 144, 120, '澳大利亚是国际公认的没有疯牛病和口蹄疫的国家。为了保持澳大利亚产品的高标准，澳大利亚牛肉业和各级政府共同努力简历了严格的标准和体系，以保证生产的整体化和产品的可追溯性', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/5_P_1448945270390.jpg', 0, 0, '2020-03-26 13:54:21.910855', 372);
INSERT INTO `goods_goods` VALUES (66, '', '帐篷出租', 0, 0, 0, 0, 120, 100, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'images/201705/goods_img/53_P_1495068879687.jpg', 0, 0, '2020-03-26 13:54:22.105325', 381);
INSERT INTO `goods_goods` VALUES (67, '', '52度茅台集团国隆双喜酒500mlx6', 0, 0, 0, 0, 23, 19, '贵州茅台酒厂（集团）保健酒业有限公司生产，是以“龙”字打头的酒水。中国龙文化上下8000年，源远而流长，龙的形象是一种符号、一种意绪、一种血肉相联的情感。', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/16_P_1448947194687.jpg', 0, 0, '2020-03-26 13:54:22.189101', 397);
INSERT INTO `goods_goods` VALUES (68, '', '52度水井坊臻酿八號500ml', 0, 0, 0, 0, 43, 36, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/14_P_1448947354031.jpg', 0, 0, '2020-03-26 13:54:22.291827', 396);
INSERT INTO `goods_goods` VALUES (69, '', '53度茅台仁酒500ml', 0, 0, 0, 0, 190, 158, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/12_P_1448947547989.jpg', 0, 0, '2020-03-26 13:54:22.599618', 392);
INSERT INTO `goods_goods` VALUES (70, '', '双响炮洋酒JimBeamwhiskey美国白占边', 0, 0, 0, 0, 38, 28, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/46_P_1448946598711.jpg', 0, 0, '2020-03-26 13:54:22.701526', 389);
INSERT INTO `goods_goods` VALUES (71, '', '西夫拉姆进口洋酒小酒版', 0, 0, 0, 0, 55, 46, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/21_P_1448946793276.jpg', 0, 0, '2020-03-26 13:54:22.837264', 396);
INSERT INTO `goods_goods` VALUES (72, '', '茅台53度飞天茅台500ml', 0, 0, 0, 0, 22, 18, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/15_P_1448947257324.jpg', 0, 0, '2020-03-26 13:54:22.956944', 390);
INSERT INTO `goods_goods` VALUES (73, '', '52度兰陵·紫气东来1600mL山东名酒', 0, 0, 0, 0, 42, 35, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/13_P_1448947460386.jpg', 0, 0, '2020-03-26 13:54:23.092680', 389);
INSERT INTO `goods_goods` VALUES (74, '', 'JohnnieWalker尊尼获加黑牌威士忌', 0, 0, 0, 0, 24, 20, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/50_P_1448946543091.jpg', 0, 0, '2020-03-26 13:54:23.297380', 396);
INSERT INTO `goods_goods` VALUES (75, '', '人头马CLUB特优香槟干邑350ml', 0, 0, 0, 0, 31, 26, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/51_P_1448946466595.jpg', 0, 0, '2020-03-26 13:54:23.434014', 390);
INSERT INTO `goods_goods` VALUES (76, '', '张裕干红葡萄酒750ml*6支', 0, 0, 0, 0, 54, 45, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/17_P_1448947102246.jpg', 0, 0, '2020-03-26 13:54:23.729757', 391);
INSERT INTO `goods_goods` VALUES (77, '', '原瓶原装进口洋酒烈酒法国云鹿XO白兰地', 0, 0, 0, 0, 46, 38, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/20_P_1448946850602.jpg', 0, 0, '2020-03-26 13:54:23.815561', 389);
INSERT INTO `goods_goods` VALUES (78, '', '法国原装进口圣贝克干红葡萄酒750ml', 0, 0, 0, 0, 82, 68, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/19_P_1448946951581.jpg', 0, 0, '2020-03-26 13:54:23.944472', 385);
INSERT INTO `goods_goods` VALUES (79, '', '法国百利威干红葡萄酒AOP级6支装', 0, 0, 0, 0, 67, 56, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/18_P_1448947011435.jpg', 0, 0, '2020-03-26 13:54:24.109033', 385);
INSERT INTO `goods_goods` VALUES (80, '', '芝华士12年苏格兰威士忌700ml', 0, 0, 0, 0, 71, 59, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/22_P_1448946729629.jpg', 0, 0, '2020-03-26 13:54:24.210796', 390);
INSERT INTO `goods_goods` VALUES (81, '', '深蓝伏特加巴维兰利口酒送预调酒', 0, 0, 0, 0, 31, 18, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/45_P_1448946661303.jpg', 0, 0, '2020-03-26 13:54:24.312681', 396);
INSERT INTO `goods_goods` VALUES (82, '', '赣南脐橙特级果10斤装', 0, 0, 0, 0, 43, 36, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/32_P_1448948525620.jpg', 0, 0, '2020-03-26 13:54:24.460126', 422);
INSERT INTO `goods_goods` VALUES (83, '', '泰国菠萝蜜16-18斤1个装', 0, 0, 0, 0, 11, 9, '【懒人吃法】菠萝蜜果肉，冰袋保鲜，收货就吃，冰爽Q脆甜，2斤装，全国顺丰空运包邮，发出后48小时内可达，一线城市基本隔天可达', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/30_P_1448948663450.jpg', 0, 0, '2020-03-26 13:54:25.597580', 426);
INSERT INTO `goods_goods` VALUES (84, '', '四川双流草莓新鲜水果礼盒2盒', 0, 0, 0, 0, 22, 18, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/31_P_1448948598947.jpg', 0, 0, '2020-03-26 13:54:25.751171', 430);
INSERT INTO `goods_goods` VALUES (85, '', '新鲜头茬非洲冰草冰菜', 0, 0, 0, 0, 67, 56, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/35_P_1448948333610.jpg', 0, 0, '2020-03-26 13:54:25.897780', 418);
INSERT INTO `goods_goods` VALUES (86, '', '仿真蔬菜水果果蔬菜模型', 0, 0, 0, 0, 6, 5, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/36_P_1448948234405.jpg', 0, 0, '2020-03-26 13:54:26.052367', 418);
INSERT INTO `goods_goods` VALUES (87, '', '现摘芭乐番石榴台湾珍珠芭乐', 0, 0, 0, 0, 28, 23, '海南产精品释迦果,\n        释迦是水果中的贵族,\n        产量少,\n        味道很甜,\n        奶香十足,\n        非常可口,\n        果裹果园顺丰空运,\n        保证新鲜.果子个大,\n        一斤1-2个左右,\n        大个头的果子更尽兴!\n        ', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/33_P_1448948479966.jpg', 0, 0, '2020-03-26 13:54:26.165502', 422);
INSERT INTO `goods_goods` VALUES (88, '', '潍坊萝卜5斤/箱礼盒', 0, 0, 0, 0, 46, 38, '脐橙规格是65-90MM左右（标准果果径平均70MM左右，精品果果径平均80MM左右），一斤大概有2-4个左右，脐橙产自江西省赣州市信丰县安西镇，全过程都是采用农家有机肥种植，生态天然', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/34_P_1448948399009.jpg', 0, 0, '2020-03-26 13:54:26.319449', 430);
INSERT INTO `goods_goods` VALUES (89, '', '休闲零食膨化食品焦糖/奶油/椒麻味', 0, 0, 0, 0, 154, 99, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/43_P_1448948762645.jpg', 0, 0, '2020-03-26 13:54:26.421308', 434);
INSERT INTO `goods_goods` VALUES (90, '', '蒙牛未来星儿童成长牛奶骨力型190ml*15盒', 0, 0, 0, 0, 84, 70, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/38_P_1448949220255.jpg', 0, 0, '2020-03-26 13:54:26.523840', 465);
INSERT INTO `goods_goods` VALUES (91, '', '蒙牛特仑苏有机奶250ml×12盒', 0, 0, 0, 0, 70, 32, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/44_P_1448948850187.jpg', 0, 0, '2020-03-26 13:54:26.780192', 463);
INSERT INTO `goods_goods` VALUES (92, '', '1元支付测试商品', 0, 0, 0, 0, 1, 1, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'images/201511/goods_img/49_P_1448162819889.jpg', 0, 0, '2020-03-26 13:54:26.882178', 462);
INSERT INTO `goods_goods` VALUES (93, '', '德运全脂新鲜纯牛奶1L*10盒装整箱', 0, 0, 0, 0, 70, 58, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/40_P_1448949038702.jpg', 0, 0, '2020-03-26 13:54:26.966180', 463);
INSERT INTO `goods_goods` VALUES (94, '', '木糖醇红枣早餐奶即食豆奶粉538g', 0, 0, 0, 0, 38, 32, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/39_P_1448949115481.jpg', 0, 0, '2020-03-26 13:54:27.152649', 466);
INSERT INTO `goods_goods` VALUES (95, '', '高钙液体奶200ml*24盒', 0, 0, 0, 0, 26, 22, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/41_P_1448948980358.jpg', 0, 0, '2020-03-26 13:54:27.254623', 467);
INSERT INTO `goods_goods` VALUES (96, '', '新西兰进口全脂奶粉900g', 0, 0, 0, 0, 720, 600, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/37_P_1448949284365.jpg', 0, 0, '2020-03-26 13:54:27.350532', 464);
INSERT INTO `goods_goods` VALUES (97, '', '伊利官方直营全脂营养舒化奶250ml*12盒*2提', 0, 0, 0, 0, 43, 36, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/42_P_1448948895193.jpg', 0, 0, '2020-03-26 13:54:27.503416', 463);
INSERT INTO `goods_goods` VALUES (98, '', '维纳斯橄榄菜籽油5L/桶', 0, 0, 0, 0, 187, 156, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/27_P_1448947771805.jpg', 0, 0, '2020-03-26 13:54:27.588223', 411);
INSERT INTO `goods_goods` VALUES (99, '', '糙米450gx3包粮油米面', 0, 0, 0, 0, 18, 15, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/23_P_1448948070348.jpg', 0, 0, '2020-03-26 13:54:27.690914', 401);
INSERT INTO `goods_goods` VALUES (100, '', '精炼一级大豆油5L色拉油粮油食用油', 0, 0, 0, 0, 54, 45, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/26_P_1448947825754.jpg', 0, 0, '2020-03-26 13:54:27.928787', 416);
INSERT INTO `goods_goods` VALUES (101, '', '橄榄玉米油5L*2桶', 0, 0, 0, 0, 31, 26, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/28_P_1448947699948.jpg', 0, 0, '2020-03-26 13:54:28.048647', 414);
INSERT INTO `goods_goods` VALUES (102, '', '山西黑米农家黑米4斤', 0, 0, 0, 0, 11, 9, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/24_P_1448948023823.jpg', 0, 0, '2020-03-26 13:54:28.448233', 415);
INSERT INTO `goods_goods` VALUES (103, '', '稻园牌稻米油粮油米糠油绿色植物油', 0, 0, 0, 0, 14, 12, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/25_P_1448947875346.jpg', 0, 0, '2020-03-26 13:54:29.375172', 407);
INSERT INTO `goods_goods` VALUES (104, '', '融氏纯玉米胚芽油5l桶', 0, 0, 0, 0, 14, 12, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/29_P_1448947631994.jpg', 0, 0, '2020-03-26 13:54:29.477901', 401);

-- ----------------------------
-- Table structure for goods_goodsbrand
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodsbrand`;
CREATE TABLE `goods_goodsbrand`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_goodsbrand_category_id_6fc84a73_fk_goods_goodscategory_id`(`category_id`) USING BTREE,
  CONSTRAINT `goods_goodsbrand_category_id_6fc84a73_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods_goodscategory
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodscategory`;
CREATE TABLE `goods_goodscategory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category_type` int(11) NOT NULL,
  `is_tab` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `parent_category_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_goodscategory_parent_category_id_ccec2509_fk_goods_goo`(`parent_category_id`) USING BTREE,
  CONSTRAINT `goods_goodscategory_parent_category_id_ccec2509_fk_goods_goo` FOREIGN KEY (`parent_category_id`) REFERENCES `goods_goodscategory` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 361 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_goodscategory
-- ----------------------------
INSERT INTO `goods_goodscategory` VALUES (361, '生鲜食品', 'sxsp', '生鲜食品，生活滋润', 1, 1, '2020-03-26 13:53:00.000000', NULL);
INSERT INTO `goods_goodscategory` VALUES (362, '精品肉类', 'jprl', '', 2, 0, '2020-03-26 13:53:07.254760', 361);
INSERT INTO `goods_goodscategory` VALUES (363, '羊肉', 'yr', '', 3, 0, '2020-03-26 13:53:07.289480', 362);
INSERT INTO `goods_goodscategory` VALUES (364, '禽类', 'ql', '', 3, 0, '2020-03-26 13:53:07.323645', 362);
INSERT INTO `goods_goodscategory` VALUES (365, '猪肉', 'zr', '', 3, 0, '2020-03-26 13:53:07.374767', 362);
INSERT INTO `goods_goodscategory` VALUES (366, '牛肉', 'nr', '', 3, 0, '2020-03-26 13:53:07.425354', 362);
INSERT INTO `goods_goodscategory` VALUES (367, '海鲜水产', 'hxsc', '', 2, 0, '2020-03-26 13:53:07.476689', 361);
INSERT INTO `goods_goodscategory` VALUES (368, '参鲍', 'cb', '', 3, 0, '2020-03-26 13:53:07.510567', 367);
INSERT INTO `goods_goodscategory` VALUES (369, '鱼', 'yu', '', 3, 0, '2020-03-26 13:53:07.545364', 367);
INSERT INTO `goods_goodscategory` VALUES (370, '虾', 'xia', '', 3, 0, '2020-03-26 13:53:07.595382', 367);
INSERT INTO `goods_goodscategory` VALUES (371, '蟹/贝', 'xb', '', 3, 0, '2020-03-26 13:53:07.648045', 367);
INSERT INTO `goods_goodscategory` VALUES (372, '蛋制品', 'dzp', '', 2, 0, '2020-03-26 13:53:07.681139', 361);
INSERT INTO `goods_goodscategory` VALUES (373, '松花蛋/咸鸭蛋', 'xhd_xyd', '', 3, 0, '2020-03-26 13:53:07.714898', 372);
INSERT INTO `goods_goodscategory` VALUES (374, '鸡蛋', 'jd', '', 3, 0, '2020-03-26 13:53:07.765827', 372);
INSERT INTO `goods_goodscategory` VALUES (375, '叶菜类', 'ycl', '', 2, 0, '2020-03-26 13:53:07.817644', 361);
INSERT INTO `goods_goodscategory` VALUES (376, '生菜', 'sc', '', 3, 0, '2020-03-26 13:53:07.867492', 375);
INSERT INTO `goods_goodscategory` VALUES (377, '菠菜', 'bc', '', 3, 0, '2020-03-26 13:53:07.919319', 375);
INSERT INTO `goods_goodscategory` VALUES (378, '圆椒', 'yj', '', 3, 0, '2020-03-26 13:53:08.055955', 375);
INSERT INTO `goods_goodscategory` VALUES (379, '西兰花', 'xlh', '', 3, 0, '2020-03-26 13:53:08.089863', 375);
INSERT INTO `goods_goodscategory` VALUES (380, '根茎类', 'gjl', '', 2, 0, '2020-03-26 13:53:08.140727', 361);
INSERT INTO `goods_goodscategory` VALUES (381, '茄果类', 'qgl', '', 2, 0, '2020-03-26 13:53:08.191872', 361);
INSERT INTO `goods_goodscategory` VALUES (382, '菌菇类', 'jgl', '', 2, 0, '2020-03-26 13:53:08.396305', 361);
INSERT INTO `goods_goodscategory` VALUES (383, '进口生鲜', 'jksx', '', 2, 0, '2020-03-26 13:53:08.431203', 361);
INSERT INTO `goods_goodscategory` VALUES (384, '酒水饮料', 'jsyl', '酒香溢鼻， 活似神仙', 1, 1, '2020-03-26 13:53:00.000000', NULL);
INSERT INTO `goods_goodscategory` VALUES (385, '白酒', 'bk', '', 2, 0, '2020-03-26 13:53:08.533929', 384);
INSERT INTO `goods_goodscategory` VALUES (386, '五粮液', 'wly', '', 3, 0, '2020-03-26 13:53:08.583819', 385);
INSERT INTO `goods_goodscategory` VALUES (387, '泸州老窖', 'lzlj', '', 3, 0, '2020-03-26 13:53:08.635657', 385);
INSERT INTO `goods_goodscategory` VALUES (388, '茅台', 'mt', '', 3, 0, '2020-03-26 13:53:08.686604', 385);
INSERT INTO `goods_goodscategory` VALUES (389, '葡萄酒', 'ptj', '', 2, 0, '2020-03-26 13:53:08.737500', 384);
INSERT INTO `goods_goodscategory` VALUES (390, '洋酒', 'yj', '', 2, 0, '2020-03-26 13:53:08.788463', 384);
INSERT INTO `goods_goodscategory` VALUES (391, '啤酒', 'pj', '', 2, 0, '2020-03-26 13:53:08.822222', 384);
INSERT INTO `goods_goodscategory` VALUES (392, '其他酒品', 'qtjp', '', 2, 0, '2020-03-26 13:53:08.857091', 384);
INSERT INTO `goods_goodscategory` VALUES (393, '其他品牌', 'qtpp', '', 3, 0, '2020-03-26 13:53:08.890854', 392);
INSERT INTO `goods_goodscategory` VALUES (394, '黄酒', 'hj', '', 3, 0, '2020-03-26 13:53:08.941911', 392);
INSERT INTO `goods_goodscategory` VALUES (395, '养生酒', 'ysj', '', 3, 0, '2020-03-26 13:53:08.998993', 392);
INSERT INTO `goods_goodscategory` VALUES (396, '饮料/水', 'yls', '', 2, 0, '2020-03-26 13:53:09.067667', 384);
INSERT INTO `goods_goodscategory` VALUES (397, '红酒', 'hj', '', 2, 0, '2020-03-26 13:53:09.118531', 384);
INSERT INTO `goods_goodscategory` VALUES (398, '白兰地', 'bld', '', 3, 0, '2020-03-26 13:53:09.230268', 397);
INSERT INTO `goods_goodscategory` VALUES (399, '威士忌', 'wsj', '', 3, 0, '2020-03-26 13:53:09.281131', 397);
INSERT INTO `goods_goodscategory` VALUES (400, '粮油副食', '粮油副食', '生活必备， 应有尽有', 1, 1, '2020-03-26 13:53:00.000000', NULL);
INSERT INTO `goods_goodscategory` VALUES (401, '食用油', '食用油', '', 2, 0, '2020-03-26 13:53:09.600640', 400);
INSERT INTO `goods_goodscategory` VALUES (402, '其他食用油', '其他食用油', '', 3, 0, '2020-03-26 13:53:10.487739', 401);
INSERT INTO `goods_goodscategory` VALUES (403, '菜仔油', '菜仔油', '', 3, 0, '2020-03-26 13:53:10.521647', 401);
INSERT INTO `goods_goodscategory` VALUES (404, '花生油', '花生油', '', 3, 0, '2020-03-26 13:53:10.572750', 401);
INSERT INTO `goods_goodscategory` VALUES (405, '橄榄油', '橄榄油', '', 3, 0, '2020-03-26 13:53:10.623861', 401);
INSERT INTO `goods_goodscategory` VALUES (406, '礼盒', '礼盒', '', 3, 0, '2020-03-26 13:53:10.674188', 401);
INSERT INTO `goods_goodscategory` VALUES (407, '米面杂粮', '米面杂粮', '', 2, 0, '2020-03-26 13:53:10.707901', 400);
INSERT INTO `goods_goodscategory` VALUES (408, '面粉/面条', '面粉/面条', '', 3, 0, '2020-03-26 13:53:10.760760', 407);
INSERT INTO `goods_goodscategory` VALUES (409, '大米', '大米', '', 3, 0, '2020-03-26 13:53:10.810627', 407);
INSERT INTO `goods_goodscategory` VALUES (410, '意大利面', '意大利面', '', 3, 0, '2020-03-26 13:53:10.862522', 407);
INSERT INTO `goods_goodscategory` VALUES (411, '厨房调料', '厨房调料', '', 2, 0, '2020-03-26 13:53:10.896397', 400);
INSERT INTO `goods_goodscategory` VALUES (412, '调味油/汁', '调味油/汁', '', 3, 0, '2020-03-26 13:53:10.957726', 411);
INSERT INTO `goods_goodscategory` VALUES (413, '酱油/醋', '酱油/醋', '', 3, 0, '2020-03-26 13:53:11.265308', 411);
INSERT INTO `goods_goodscategory` VALUES (414, '南北干货', '南北干货', '', 2, 0, '2020-03-26 13:53:11.316172', 400);
INSERT INTO `goods_goodscategory` VALUES (415, '方便速食', '方便速食', '', 2, 0, '2020-03-26 13:53:11.368207', 400);
INSERT INTO `goods_goodscategory` VALUES (416, '调味品', '调味品', '', 2, 0, '2020-03-26 13:53:11.418074', 400);
INSERT INTO `goods_goodscategory` VALUES (417, '蔬菜水果', '蔬菜水果', '新鲜蔬菜，琳琅水果', 1, 1, '2020-03-26 13:53:00.000000', NULL);
INSERT INTO `goods_goodscategory` VALUES (418, '有机蔬菜', '有机蔬菜', '', 2, 0, '2020-03-26 13:53:11.520992', 417);
INSERT INTO `goods_goodscategory` VALUES (419, '西红柿', '西红柿', '', 3, 0, '2020-03-26 13:53:11.571946', 418);
INSERT INTO `goods_goodscategory` VALUES (420, '韭菜', '韭菜', '', 3, 0, '2020-03-26 13:53:11.622808', 418);
INSERT INTO `goods_goodscategory` VALUES (421, '青菜', '青菜', '', 3, 0, '2020-03-26 13:53:11.656755', 418);
INSERT INTO `goods_goodscategory` VALUES (422, '精选蔬菜', '精选蔬菜', '', 2, 0, '2020-03-26 13:53:11.707582', 417);
INSERT INTO `goods_goodscategory` VALUES (423, '甘蓝', '甘蓝', '', 3, 0, '2020-03-26 13:53:11.759444', 422);
INSERT INTO `goods_goodscategory` VALUES (424, '胡萝卜', '胡萝卜', '', 3, 0, '2020-03-26 13:53:11.810309', 422);
INSERT INTO `goods_goodscategory` VALUES (425, '黄瓜', '黄瓜', '', 3, 0, '2020-03-26 13:53:11.844218', 422);
INSERT INTO `goods_goodscategory` VALUES (426, '进口水果', '进口水果', '', 2, 0, '2020-03-26 13:53:11.895492', 417);
INSERT INTO `goods_goodscategory` VALUES (427, '火龙果', '火龙果', '', 3, 0, '2020-03-26 13:53:11.946303', 426);
INSERT INTO `goods_goodscategory` VALUES (428, '菠萝蜜', '菠萝蜜', '', 3, 0, '2020-03-26 13:53:12.014995', 426);
INSERT INTO `goods_goodscategory` VALUES (429, '奇异果', '奇异果', '', 3, 0, '2020-03-26 13:53:12.082813', 426);
INSERT INTO `goods_goodscategory` VALUES (430, '国产水果', '国产水果', '', 2, 0, '2020-03-26 13:53:12.133874', 417);
INSERT INTO `goods_goodscategory` VALUES (431, '水果礼盒', '水果礼盒', '', 3, 0, '2020-03-26 13:53:12.349298', 430);
INSERT INTO `goods_goodscategory` VALUES (432, '苹果', '苹果', '', 3, 0, '2020-03-26 13:53:12.384013', 430);
INSERT INTO `goods_goodscategory` VALUES (433, '雪梨', '雪梨', '', 3, 0, '2020-03-26 13:53:12.417923', 430);
INSERT INTO `goods_goodscategory` VALUES (434, '休闲食品', '休闲食品', '休闲食品， 吃货必买', 1, 1, '2020-03-26 13:53:00.000000', NULL);
INSERT INTO `goods_goodscategory` VALUES (435, '休闲零食', '休闲零食', '', 2, 0, '2020-03-26 13:53:12.519832', 434);
INSERT INTO `goods_goodscategory` VALUES (436, '果冻', '果冻', '', 3, 0, '2020-03-26 13:53:12.571512', 435);
INSERT INTO `goods_goodscategory` VALUES (437, '枣类', '枣类', '', 3, 0, '2020-03-26 13:53:12.622375', 435);
INSERT INTO `goods_goodscategory` VALUES (438, '蜜饯', '蜜饯', '', 3, 0, '2020-03-26 13:53:12.668253', 435);
INSERT INTO `goods_goodscategory` VALUES (439, '肉类零食', '肉类零食', '', 3, 0, '2020-03-26 13:53:12.718322', 435);
INSERT INTO `goods_goodscategory` VALUES (440, '坚果炒货', '坚果炒货', '', 3, 0, '2020-03-26 13:53:12.753026', 435);
INSERT INTO `goods_goodscategory` VALUES (441, '糖果', '糖果', '', 2, 0, '2020-03-26 13:53:12.803892', 434);
INSERT INTO `goods_goodscategory` VALUES (442, '创意喜糖', '创意喜糖', '', 3, 0, '2020-03-26 13:53:12.837851', 441);
INSERT INTO `goods_goodscategory` VALUES (443, '口香糖', '口香糖', '', 3, 0, '2020-03-26 13:53:12.888665', 441);
INSERT INTO `goods_goodscategory` VALUES (444, '软糖', '软糖', '', 3, 0, '2020-03-26 13:53:12.940525', 441);
INSERT INTO `goods_goodscategory` VALUES (445, '棒棒糖', '棒棒糖', '', 3, 0, '2020-03-26 13:53:13.271021', 441);
INSERT INTO `goods_goodscategory` VALUES (446, '巧克力', '巧克力', '', 2, 0, '2020-03-26 13:53:14.189918', 434);
INSERT INTO `goods_goodscategory` VALUES (447, '夹心巧克力', '夹心巧克力', '', 3, 0, '2020-03-26 13:53:14.224793', 446);
INSERT INTO `goods_goodscategory` VALUES (448, '白巧克力', '白巧克力', '', 3, 0, '2020-03-26 13:53:14.275842', 446);
INSERT INTO `goods_goodscategory` VALUES (449, '松露巧克力', '松露巧克力', '', 3, 0, '2020-03-26 13:53:14.326520', 446);
INSERT INTO `goods_goodscategory` VALUES (450, '黑巧克力', '黑巧克力', '', 3, 0, '2020-03-26 13:53:14.378382', 446);
INSERT INTO `goods_goodscategory` VALUES (451, '肉干肉脯/豆干', '肉干肉脯/豆干', '', 2, 0, '2020-03-26 13:53:14.429506', 434);
INSERT INTO `goods_goodscategory` VALUES (452, '牛肉干', '牛肉干', '', 3, 0, '2020-03-26 13:53:14.480145', 451);
INSERT INTO `goods_goodscategory` VALUES (453, '猪肉脯', '猪肉脯', '', 3, 0, '2020-03-26 13:53:14.531819', 451);
INSERT INTO `goods_goodscategory` VALUES (454, '牛肉粒', '牛肉粒', '', 3, 0, '2020-03-26 13:53:14.582704', 451);
INSERT INTO `goods_goodscategory` VALUES (455, '猪肉干', '猪肉干', '', 3, 0, '2020-03-26 13:53:14.616613', 451);
INSERT INTO `goods_goodscategory` VALUES (456, '鱿鱼丝/鱼干', '鱿鱼丝/鱼干', '', 2, 0, '2020-03-26 13:53:14.650569', 434);
INSERT INTO `goods_goodscategory` VALUES (457, '鱿鱼足', '鱿鱼足', '', 3, 0, '2020-03-26 13:53:14.701927', 456);
INSERT INTO `goods_goodscategory` VALUES (458, '鱿鱼丝', '鱿鱼丝', '', 3, 0, '2020-03-26 13:53:14.752920', 456);
INSERT INTO `goods_goodscategory` VALUES (459, '墨鱼/乌贼', '墨鱼/乌贼', '', 3, 0, '2020-03-26 13:53:14.804216', 456);
INSERT INTO `goods_goodscategory` VALUES (460, '鱿鱼仔', '鱿鱼仔', '', 3, 0, '2020-03-26 13:53:14.855122', 456);
INSERT INTO `goods_goodscategory` VALUES (461, '鱿鱼片', '鱿鱼片', '', 3, 0, '2020-03-26 13:53:14.906143', 456);
INSERT INTO `goods_goodscategory` VALUES (462, '奶类食品', '奶类食品', '奶类制品， 营养均衡', 1, 1, '2020-03-26 13:53:00.000000', NULL);
INSERT INTO `goods_goodscategory` VALUES (463, '进口奶品', '进口奶品', '', 2, 0, '2020-03-26 13:53:15.008913', 462);
INSERT INTO `goods_goodscategory` VALUES (464, '国产奶品', '国产奶品', '', 2, 0, '2020-03-26 13:53:15.058970', 462);
INSERT INTO `goods_goodscategory` VALUES (465, '奶粉', '奶粉', '', 2, 0, '2020-03-26 13:53:15.110662', 462);
INSERT INTO `goods_goodscategory` VALUES (466, '有机奶', '有机奶', '', 2, 0, '2020-03-26 13:53:15.144794', 462);
INSERT INTO `goods_goodscategory` VALUES (467, '原料奶', '原料奶', '', 2, 0, '2020-03-26 13:53:15.178565', 462);
INSERT INTO `goods_goodscategory` VALUES (468, '天然干货', '天然干货', '零食干货， 应有尽有', 1, 1, '2020-03-26 13:53:00.000000', NULL);
INSERT INTO `goods_goodscategory` VALUES (469, '菌菇类', '菌菇类', '', 2, 0, '2020-03-26 13:53:15.416736', 468);
INSERT INTO `goods_goodscategory` VALUES (470, '腌干海产', '腌干海产', '', 2, 0, '2020-03-26 13:53:15.468597', 468);
INSERT INTO `goods_goodscategory` VALUES (471, '汤料', '汤料', '', 2, 0, '2020-03-26 13:53:15.519468', 468);
INSERT INTO `goods_goodscategory` VALUES (472, '豆类', '豆类', '', 2, 0, '2020-03-26 13:53:15.571323', 468);
INSERT INTO `goods_goodscategory` VALUES (473, '干菜/菜干', '干菜/菜干', '', 2, 0, '2020-03-26 13:53:15.622385', 468);
INSERT INTO `goods_goodscategory` VALUES (474, '干果/果干', '干果/果干', '', 2, 0, '2020-03-26 13:53:15.656096', 468);
INSERT INTO `goods_goodscategory` VALUES (475, '豆制品', '豆制品', '', 2, 0, '2020-03-26 13:53:15.707150', 468);
INSERT INTO `goods_goodscategory` VALUES (476, '腊味', '腊味', '', 2, 0, '2020-03-26 13:53:15.741058', 468);
INSERT INTO `goods_goodscategory` VALUES (477, '精选茗茶', '精选茗茶', '精品名茶，汇集各地', 1, 1, '2020-03-26 13:53:00.000000', NULL);
INSERT INTO `goods_goodscategory` VALUES (478, '白茶', '白茶', '', 2, 0, '2020-03-26 13:53:15.826639', 477);
INSERT INTO `goods_goodscategory` VALUES (479, '红茶', '红茶', '', 2, 0, '2020-03-26 13:53:15.877502', 477);
INSERT INTO `goods_goodscategory` VALUES (480, '绿茶', '绿茶', '', 2, 0, '2020-03-26 13:53:15.929366', 477);

-- ----------------------------
-- Table structure for goods_goodsimage
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodsimage`;
CREATE TABLE `goods_goodsimage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_goodsimage_goods_id_08cb23b1_fk_goods_goods_id`(`goods_id`) USING BTREE,
  CONSTRAINT `goods_goodsimage_goods_id_08cb23b1_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_goodsimage
-- ----------------------------
INSERT INTO `goods_goodsimage` VALUES (92, 'goods/images/1_P_1449024889889.jpg', '2020-03-26 13:54:18.297523', 53);
INSERT INTO `goods_goodsimage` VALUES (93, 'goods/images/1_P_1449024889264.jpg', '2020-03-26 13:54:18.348355', 53);
INSERT INTO `goods_goodsimage` VALUES (94, 'goods/images/1_P_1449024889726.jpg', '2020-03-26 13:54:18.400215', 53);
INSERT INTO `goods_goodsimage` VALUES (95, 'goods/images/1_P_1449024889018.jpg', '2020-03-26 13:54:18.451115', 53);
INSERT INTO `goods_goodsimage` VALUES (96, 'goods/images/1_P_1449024889287.jpg', '2020-03-26 13:54:18.627608', 53);
INSERT INTO `goods_goodsimage` VALUES (97, 'goods/images/2_P_1448945810202.jpg', '2020-03-26 13:54:18.730376', 54);
INSERT INTO `goods_goodsimage` VALUES (98, 'goods/images/2_P_1448945810814.jpg', '2020-03-26 13:54:18.781426', 54);
INSERT INTO `goods_goodsimage` VALUES (99, 'goods/images/7_P_1448945104883.jpg', '2020-03-26 13:54:18.883553', 55);
INSERT INTO `goods_goodsimage` VALUES (100, 'goods/images/7_P_1448945104734.jpg', '2020-03-26 13:54:18.934453', 55);
INSERT INTO `goods_goodsimage` VALUES (101, 'goods/images/47_P_1448946213263.jpg', '2020-03-26 13:54:19.155876', 56);
INSERT INTO `goods_goodsimage` VALUES (102, 'goods/images/47_P_1448946213157.jpg', '2020-03-26 13:54:19.189734', 56);
INSERT INTO `goods_goodsimage` VALUES (103, 'goods/images/10_P_1448944572085.jpg', '2020-03-26 13:54:19.292515', 57);
INSERT INTO `goods_goodsimage` VALUES (104, 'goods/images/10_P_1448944572532.jpg', '2020-03-26 13:54:19.344357', 57);
INSERT INTO `goods_goodsimage` VALUES (105, 'goods/images/10_P_1448944572872.jpg', '2020-03-26 13:54:19.377289', 57);
INSERT INTO `goods_goodsimage` VALUES (106, 'goods/images/4_P_1448945381985.jpg', '2020-03-26 13:54:19.480238', 58);
INSERT INTO `goods_goodsimage` VALUES (107, 'goods/images/4_P_1448945381013.jpg', '2020-03-26 13:54:19.514189', 58);
INSERT INTO `goods_goodsimage` VALUES (108, 'goods/images/8_P_1448945032810.jpg', '2020-03-26 13:54:19.615915', 59);
INSERT INTO `goods_goodsimage` VALUES (109, 'goods/images/8_P_1448945032646.jpg', '2020-03-26 13:54:19.804414', 59);
INSERT INTO `goods_goodsimage` VALUES (110, 'goods/images/11_P_1448944388277.jpg', '2020-03-26 13:54:19.889186', 60);
INSERT INTO `goods_goodsimage` VALUES (111, 'goods/images/11_P_1448944388034.jpg', '2020-03-26 13:54:19.923096', 60);
INSERT INTO `goods_goodsimage` VALUES (112, 'goods/images/11_P_1448944388201.jpg', '2020-03-26 13:54:19.974141', 60);
INSERT INTO `goods_goodsimage` VALUES (113, 'goods/images/6_P_1448945167279.jpg', '2020-03-26 13:54:20.093881', 61);
INSERT INTO `goods_goodsimage` VALUES (114, 'goods/images/6_P_1448945167015.jpg', '2020-03-26 13:54:20.161698', 61);
INSERT INTO `goods_goodsimage` VALUES (115, 'goods/images/9_P_1448944791617.jpg', '2020-03-26 13:54:20.274878', 62);
INSERT INTO `goods_goodsimage` VALUES (116, 'goods/images/9_P_1448944791129.jpg', '2020-03-26 13:54:20.309593', 62);
INSERT INTO `goods_goodsimage` VALUES (117, 'goods/images/9_P_1448944791077.jpg', '2020-03-26 13:54:20.343502', 62);
INSERT INTO `goods_goodsimage` VALUES (118, 'goods/images/9_P_1448944791229.jpg', '2020-03-26 13:54:20.394367', 62);
INSERT INTO `goods_goodsimage` VALUES (119, 'goods/images/3_P_1448945490837.jpg', '2020-03-26 13:54:20.496099', 63);
INSERT INTO `goods_goodsimage` VALUES (120, 'goods/images/3_P_1448945490084.jpg', '2020-03-26 13:54:20.548067', 63);
INSERT INTO `goods_goodsimage` VALUES (121, 'goods/images/48_P_1448943988970.jpg', '2020-03-26 13:54:20.650506', 64);
INSERT INTO `goods_goodsimage` VALUES (122, 'goods/images/48_P_1448943988898.jpg', '2020-03-26 13:54:20.700371', 64);
INSERT INTO `goods_goodsimage` VALUES (123, 'goods/images/48_P_1448943988439.jpg', '2020-03-26 13:54:20.752233', 64);
INSERT INTO `goods_goodsimage` VALUES (124, 'goods/images/5_P_1448945270390.jpg', '2020-03-26 13:54:21.962706', 65);
INSERT INTO `goods_goodsimage` VALUES (125, 'goods/images/5_P_1448945270067.jpg', '2020-03-26 13:54:22.019554', 65);
INSERT INTO `goods_goodsimage` VALUES (126, 'goods/images/5_P_1448945270432.jpg', '2020-03-26 13:54:22.070468', 65);
INSERT INTO `goods_goodsimage` VALUES (127, 'images/201705/goods_img/53_P_1495068879687.jpg', '2020-03-26 13:54:22.156190', 66);
INSERT INTO `goods_goodsimage` VALUES (128, 'goods/images/16_P_1448947194687.jpg', '2020-03-26 13:54:22.240962', 67);
INSERT INTO `goods_goodsimage` VALUES (129, 'goods/images/14_P_1448947354031.jpg', '2020-03-26 13:54:22.343687', 68);
INSERT INTO `goods_goodsimage` VALUES (130, 'goods/images/14_P_1448947354433.jpg', '2020-03-26 13:54:22.547941', 68);
INSERT INTO `goods_goodsimage` VALUES (131, 'goods/images/12_P_1448947547989.jpg', '2020-03-26 13:54:22.650483', 69);
INSERT INTO `goods_goodsimage` VALUES (132, 'goods/images/46_P_1448946598711.jpg', '2020-03-26 13:54:22.752492', 70);
INSERT INTO `goods_goodsimage` VALUES (133, 'goods/images/46_P_1448946598301.jpg', '2020-03-26 13:54:22.803354', 70);
INSERT INTO `goods_goodsimage` VALUES (134, 'goods/images/21_P_1448946793276.jpg', '2020-03-26 13:54:22.888321', 71);
INSERT INTO `goods_goodsimage` VALUES (135, 'goods/images/21_P_1448946793153.jpg', '2020-03-26 13:54:22.922231', 71);
INSERT INTO `goods_goodsimage` VALUES (136, 'goods/images/15_P_1448947257324.jpg', '2020-03-26 13:54:23.007970', 72);
INSERT INTO `goods_goodsimage` VALUES (137, 'goods/images/15_P_1448947257580.jpg', '2020-03-26 13:54:23.041723', 72);
INSERT INTO `goods_goodsimage` VALUES (138, 'goods/images/13_P_1448947460386.jpg', '2020-03-26 13:54:23.143756', 73);
INSERT INTO `goods_goodsimage` VALUES (139, 'goods/images/13_P_1448947460276.jpg', '2020-03-26 13:54:23.195679', 73);
INSERT INTO `goods_goodsimage` VALUES (140, 'goods/images/13_P_1448947460353.jpg', '2020-03-26 13:54:23.246516', 73);
INSERT INTO `goods_goodsimage` VALUES (141, 'goods/images/50_P_1448946543091.jpg', '2020-03-26 13:54:23.348295', 74);
INSERT INTO `goods_goodsimage` VALUES (142, 'goods/images/50_P_1448946542182.jpg', '2020-03-26 13:54:23.400106', 74);
INSERT INTO `goods_goodsimage` VALUES (143, 'goods/images/51_P_1448946466595.jpg', '2020-03-26 13:54:23.484880', 75);
INSERT INTO `goods_goodsimage` VALUES (144, 'goods/images/51_P_1448946466208.jpg', '2020-03-26 13:54:23.535907', 75);
INSERT INTO `goods_goodsimage` VALUES (145, 'goods/images/17_P_1448947102246.jpg', '2020-03-26 13:54:23.781618', 76);
INSERT INTO `goods_goodsimage` VALUES (146, 'goods/images/20_P_1448946850602.jpg', '2020-03-26 13:54:23.888332', 77);
INSERT INTO `goods_goodsimage` VALUES (147, 'goods/images/19_P_1448946951581.jpg', '2020-03-26 13:54:24.023263', 78);
INSERT INTO `goods_goodsimage` VALUES (148, 'goods/images/19_P_1448946951726.jpg', '2020-03-26 13:54:24.057171', 78);
INSERT INTO `goods_goodsimage` VALUES (149, 'goods/images/18_P_1448947011435.jpg', '2020-03-26 13:54:24.159093', 79);
INSERT INTO `goods_goodsimage` VALUES (150, 'goods/images/22_P_1448946729629.jpg', '2020-03-26 13:54:24.261624', 80);
INSERT INTO `goods_goodsimage` VALUES (151, 'goods/images/45_P_1448946661303.jpg', '2020-03-26 13:54:24.392275', 81);
INSERT INTO `goods_goodsimage` VALUES (152, 'goods/images/32_P_1448948525620.jpg', '2020-03-26 13:54:25.563624', 82);
INSERT INTO `goods_goodsimage` VALUES (153, 'goods/images/30_P_1448948663450.jpg', '2020-03-26 13:54:25.648631', 83);
INSERT INTO `goods_goodsimage` VALUES (154, 'goods/images/30_P_1448948662571.jpg', '2020-03-26 13:54:25.683353', 83);
INSERT INTO `goods_goodsimage` VALUES (155, 'goods/images/30_P_1448948663221.jpg', '2020-03-26 13:54:25.716296', 83);
INSERT INTO `goods_goodsimage` VALUES (156, 'goods/images/31_P_1448948598947.jpg', '2020-03-26 13:54:25.802069', 84);
INSERT INTO `goods_goodsimage` VALUES (157, 'goods/images/31_P_1448948598475.jpg', '2020-03-26 13:54:25.846962', 84);
INSERT INTO `goods_goodsimage` VALUES (158, 'goods/images/35_P_1448948333610.jpg', '2020-03-26 13:54:25.949640', 85);
INSERT INTO `goods_goodsimage` VALUES (159, 'goods/images/35_P_1448948333313.jpg', '2020-03-26 13:54:26.000505', 85);
INSERT INTO `goods_goodsimage` VALUES (160, 'goods/images/36_P_1448948234405.jpg', '2020-03-26 13:54:26.097441', 86);
INSERT INTO `goods_goodsimage` VALUES (161, 'goods/images/36_P_1448948234250.jpg', '2020-03-26 13:54:26.131596', 86);
INSERT INTO `goods_goodsimage` VALUES (162, 'goods/images/33_P_1448948479966.jpg', '2020-03-26 13:54:26.217169', 87);
INSERT INTO `goods_goodsimage` VALUES (163, 'goods/images/33_P_1448948479886.jpg', '2020-03-26 13:54:26.267709', 87);
INSERT INTO `goods_goodsimage` VALUES (164, 'goods/images/34_P_1448948399009.jpg', '2020-03-26 13:54:26.370288', 88);
INSERT INTO `goods_goodsimage` VALUES (165, 'goods/images/43_P_1448948762645.jpg', '2020-03-26 13:54:26.471977', 89);
INSERT INTO `goods_goodsimage` VALUES (166, 'goods/images/38_P_1448949220255.jpg', '2020-03-26 13:54:26.728331', 90);
INSERT INTO `goods_goodsimage` VALUES (167, 'goods/images/44_P_1448948850187.jpg', '2020-03-26 13:54:26.831018', 91);
INSERT INTO `goods_goodsimage` VALUES (168, 'images/201511/goods_img/49_P_1448162819889.jpg', '2020-03-26 13:54:26.932238', 92);
INSERT INTO `goods_goodsimage` VALUES (169, 'goods/images/40_P_1448949038702.jpg', '2020-03-26 13:54:27.035963', 93);
INSERT INTO `goods_goodsimage` VALUES (170, 'goods/images/39_P_1448949115481.jpg', '2020-03-26 13:54:27.202829', 94);
INSERT INTO `goods_goodsimage` VALUES (171, 'goods/images/41_P_1448948980358.jpg', '2020-03-26 13:54:27.316648', 95);
INSERT INTO `goods_goodsimage` VALUES (172, 'goods/images/37_P_1448949284365.jpg', '2020-03-26 13:54:27.452405', 96);
INSERT INTO `goods_goodsimage` VALUES (173, 'goods/images/42_P_1448948895193.jpg', '2020-03-26 13:54:27.554279', 97);
INSERT INTO `goods_goodsimage` VALUES (174, 'goods/images/27_P_1448947771805.jpg', '2020-03-26 13:54:27.639055', 98);
INSERT INTO `goods_goodsimage` VALUES (175, 'goods/images/23_P_1448948070348.jpg', '2020-03-26 13:54:27.894681', 99);
INSERT INTO `goods_goodsimage` VALUES (176, 'goods/images/26_P_1448947825754.jpg', '2020-03-26 13:54:27.980455', 100);
INSERT INTO `goods_goodsimage` VALUES (177, 'goods/images/28_P_1448947699948.jpg', '2020-03-26 13:54:28.099564', 101);
INSERT INTO `goods_goodsimage` VALUES (178, 'goods/images/28_P_1448947699777.jpg', '2020-03-26 13:54:28.150568', 101);
INSERT INTO `goods_goodsimage` VALUES (179, 'goods/images/24_P_1448948023823.jpg', '2020-03-26 13:54:29.273482', 102);
INSERT INTO `goods_goodsimage` VALUES (180, 'goods/images/24_P_1448948023977.jpg', '2020-03-26 13:54:29.324350', 102);
INSERT INTO `goods_goodsimage` VALUES (181, 'goods/images/25_P_1448947875346.jpg', '2020-03-26 13:54:29.426073', 103);
INSERT INTO `goods_goodsimage` VALUES (182, 'goods/images/29_P_1448947631994.jpg', '2020-03-26 13:54:29.527820', 104);

-- ----------------------------
-- Table structure for goods_hotsearchwords
-- ----------------------------
DROP TABLE IF EXISTS `goods_hotsearchwords`;
CREATE TABLE `goods_hotsearchwords`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods_indexad
-- ----------------------------
DROP TABLE IF EXISTS `goods_indexad`;
CREATE TABLE `goods_indexad`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_indexad_category_id_cf834e34_fk_goods_goodscategory_id`(`category_id`) USING BTREE,
  INDEX `goods_indexad_goods_id_e1361e4f_fk_goods_goods_id`(`goods_id`) USING BTREE,
  CONSTRAINT `goods_indexad_category_id_cf834e34_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `goods_indexad_goods_id_e1361e4f_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for trade_ordergoods
-- ----------------------------
DROP TABLE IF EXISTS `trade_ordergoods`;
CREATE TABLE `trade_ordergoods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_num` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `trade_ordergoods_goods_id_e77dc520_fk_goods_goods_id`(`goods_id`) USING BTREE,
  INDEX `trade_ordergoods_order_id_e046f633_fk_trade_orderinfo_id`(`order_id`) USING BTREE,
  CONSTRAINT `trade_ordergoods_goods_id_e77dc520_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `trade_ordergoods_order_id_e046f633_fk_trade_orderinfo_id` FOREIGN KEY (`order_id`) REFERENCES `trade_orderinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trade_ordergoods
-- ----------------------------
INSERT INTO `trade_ordergoods` VALUES (2, 1, '2020-03-26 14:31:21.478095', 53, 4);
INSERT INTO `trade_ordergoods` VALUES (3, 1, '2020-03-26 14:33:07.992974', 67, 5);
INSERT INTO `trade_ordergoods` VALUES (4, 1, '2020-03-26 14:35:25.535111', 68, 6);

-- ----------------------------
-- Table structure for trade_orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `trade_orderinfo`;
CREATE TABLE `trade_orderinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nonce_str` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trade_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pay_status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pay_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_script` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_mount` double NOT NULL,
  `pay_time` datetime(6) NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `signer_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `singer_mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `order_sn`(`order_sn`) USING BTREE,
  UNIQUE INDEX `nonce_str`(`nonce_str`) USING BTREE,
  UNIQUE INDEX `trade_no`(`trade_no`) USING BTREE,
  INDEX `trade_orderinfo_user_id_08ffa22c_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `trade_orderinfo_user_id_08ffa22c_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trade_orderinfo
-- ----------------------------
INSERT INTO `trade_orderinfo` VALUES (3, '20200326142943161', NULL, NULL, 'paying', 'alipay', '测试', 1000, NULL, '测试', '测试', '15135361648', '2020-03-26 14:29:43.058387', 1);
INSERT INTO `trade_orderinfo` VALUES (4, '20200326143121116', NULL, NULL, 'paying', 'alipay', '1111', 156, NULL, '山西省临汾市襄汾县测试', '测试', '15135361648', '2020-03-26 14:31:21.378018', 1);
INSERT INTO `trade_orderinfo` VALUES (5, '20200326143307147', NULL, NULL, 'paying', 'alipay', '1122', 19, NULL, '山西省临汾市襄汾县测试', '测试', '15135361648', '2020-03-26 14:33:07.952084', 1);
INSERT INTO `trade_orderinfo` VALUES (6, '20200326143525114', NULL, NULL, 'paying', 'alipay', '1111', 36, NULL, '山西省临汾市襄汾县测试', '测试', '15135361648', '2020-03-26 14:35:25.478262', 1);

-- ----------------------------
-- Table structure for trade_shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `trade_shoppingcart`;
CREATE TABLE `trade_shoppingcart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `trade_shoppingcart_user_id_goods_id_92225e66_uniq`(`user_id`, `goods_id`) USING BTREE,
  INDEX `trade_shoppingcart_goods_id_8b0f3cb4_fk_goods_goods_id`(`goods_id`) USING BTREE,
  CONSTRAINT `trade_shoppingcart_goods_id_8b0f3cb4_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `trade_shoppingcart_user_id_da423c9c_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_operation_useraddress
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_useraddress`;
CREATE TABLE `user_operation_useraddress`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `district` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `signer_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `signer_mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_operation_usera_user_id_fe128593_fk_users_use`(`user_id`) USING BTREE,
  CONSTRAINT `user_operation_usera_user_id_fe128593_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_operation_useraddress
-- ----------------------------
INSERT INTO `user_operation_useraddress` VALUES (1, '山西省', '临汾市', '襄汾县', '测试', '测试', '15135361648', '2020-03-26 13:36:26.960928', 1);

-- ----------------------------
-- Table structure for user_operation_userfav
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_userfav`;
CREATE TABLE `user_operation_userfav`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_operation_userfav_user_id_goods_id_2dbadda7_uniq`(`user_id`, `goods_id`) USING BTREE,
  INDEX `user_operation_userfav_goods_id_57fc554f_fk_goods_goods_id`(`goods_id`) USING BTREE,
  CONSTRAINT `user_operation_userfav_goods_id_57fc554f_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_operation_userfav_user_id_4e4de070_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_operation_userleavingmessage
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_userleavingmessage`;
CREATE TABLE `user_operation_userleavingmessage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_type` int(11) NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_operation_userl_user_id_70d909d6_fk_users_use`(`user_id`) USING BTREE,
  CONSTRAINT `user_operation_userl_user_id_70d909d6_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `gender` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES (1, 'pbkdf2_sha256$100000$5wPT5mYkPXi2$phVtDL52F//K1KYUBG44B07af/slqu5T/RWl79qxphI=', '2020-03-26 13:46:32.447690', 1, 'admin', '', '', 1, 1, '2020-03-26 00:11:46.227350', NULL, NULL, 'female', '', '1305999617@qq.com');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq`(`userprofile_id`, `group_id`) USING BTREE,
  INDEX `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq`(`userprofile_id`, `permission_id`) USING BTREE,
  INDEX `users_userprofile_us_permission_id_393136b6_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users_verifycode
-- ----------------------------
DROP TABLE IF EXISTS `users_verifycode`;
CREATE TABLE `users_verifycode`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `query` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_bookmark_content_type_id_60941679_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id`(`content_type_id`) USING BTREE,
  INDEX `xadmin_log_user_id_bb16a176_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES (1, '2020-03-26 10:24:46.583621', '127.0.0.1', '357', '精选茗茶', 'change', '修改 desc，is_tab 和 add_time', 14, 1);
INSERT INTO `xadmin_log` VALUES (2, '2020-03-26 10:25:11.669355', '127.0.0.1', '348', '天然干货', 'change', '修改 desc，is_tab 和 add_time', 14, 1);
INSERT INTO `xadmin_log` VALUES (3, '2020-03-26 10:25:30.882849', '127.0.0.1', '342', '奶类食品', 'change', '修改 desc，is_tab 和 add_time', 14, 1);
INSERT INTO `xadmin_log` VALUES (4, '2020-03-26 10:25:52.716744', '127.0.0.1', '314', '休闲食品', 'change', '修改 desc，is_tab 和 add_time', 14, 1);
INSERT INTO `xadmin_log` VALUES (5, '2020-03-26 10:26:18.651684', '127.0.0.1', '297', '蔬菜水果', 'change', '修改 desc 和 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (6, '2020-03-26 10:26:41.513073', '127.0.0.1', '280', '粮油副食', 'change', '修改 desc，is_tab 和 add_time', 14, 1);
INSERT INTO `xadmin_log` VALUES (7, '2020-03-26 10:27:49.800942', '127.0.0.1', '264', '酒水饮料', 'change', '修改 desc，is_tab 和 add_time', 14, 1);
INSERT INTO `xadmin_log` VALUES (8, '2020-03-26 10:28:21.738137', '127.0.0.1', '241', '生鲜食品', 'change', '修改 desc，is_tab 和 add_time', 14, 1);
INSERT INTO `xadmin_log` VALUES (9, '2020-03-26 10:28:51.719446', '127.0.0.1', '237', '精选茗茶', 'change', '修改 desc，is_tab 和 add_time', 14, 1);
INSERT INTO `xadmin_log` VALUES (10, '2020-03-26 10:29:18.188544', '127.0.0.1', '228', '天然干货', 'change', '修改 desc 和 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (11, '2020-03-26 10:29:33.725540', '127.0.0.1', '222', '奶类食品', 'change', '修改 desc 和 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (12, '2020-03-26 10:29:51.748640', '127.0.0.1', '194', '休闲食品', 'change', '修改 desc 和 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (13, '2020-03-26 10:30:15.417793', '127.0.0.1', '74', '休闲食品', 'change', '修改 desc 和 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (14, '2020-03-26 10:30:52.795368', '127.0.0.1', '177', '蔬菜水果', 'change', '修改 desc 和 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (15, '2020-03-26 10:31:18.655521', '127.0.0.1', '57', '蔬菜水果', 'change', '修改 desc 和 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (16, '2020-03-26 10:31:53.055363', '127.0.0.1', '160', '粮油副食', 'change', '修改 desc 和 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (17, '2020-03-26 10:32:10.384128', '127.0.0.1', '40', '粮油副食', 'change', '修改 desc 和 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (18, '2020-03-26 10:32:42.749498', '127.0.0.1', '144', '酒水饮料', 'change', '修改 desc 和 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (19, '2020-03-26 10:32:56.272935', '127.0.0.1', '24', '酒水饮料', 'change', '修改 desc 和 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (20, '2020-03-26 10:33:18.946754', '127.0.0.1', '121', '生鲜食品', 'change', '修改 desc 和 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (21, '2020-03-26 10:33:33.532209', '127.0.0.1', '1', '生鲜食品', 'change', '修改 desc 和 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (22, '2020-03-26 10:33:58.883152', '127.0.0.1', '117', '精选茗茶', 'change', '修改 desc 和 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (23, '2020-03-26 10:34:17.890321', '127.0.0.1', '108', '天然干货', 'change', '修改 desc 和 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (24, '2020-03-26 10:34:48.368781', '127.0.0.1', '102', '奶类食品', 'change', '修改 desc 和 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (25, '2020-03-26 10:35:34.088095', '127.0.0.1', '357', '精选茗茶', 'change', '没有字段被修改。', 14, 1);
INSERT INTO `xadmin_log` VALUES (26, '2020-03-26 13:47:27.190303', '127.0.0.1', '237', '精选茗茶', 'change', '修改 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (27, '2020-03-26 13:47:40.496726', '127.0.0.1', '228', '天然干货', 'change', '修改 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (28, '2020-03-26 13:48:02.215410', '127.0.0.1', '222', '奶类食品', 'change', '修改 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (29, '2020-03-26 13:49:18.463760', '127.0.0.1', '1', '生鲜食品', 'change', '修改 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (30, '2020-03-26 13:49:26.935729', '127.0.0.1', '24', '酒水饮料', 'change', '修改 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (31, '2020-03-26 13:49:37.744553', '127.0.0.1', '40', '粮油副食', 'change', '修改 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (32, '2020-03-26 13:49:46.140323', '127.0.0.1', '57', '蔬菜水果', 'change', '修改 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (33, '2020-03-26 13:49:58.539668', '127.0.0.1', '74', '休闲食品', 'change', '修改 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (34, '2020-03-26 13:50:13.673046', '127.0.0.1', '102', '奶类食品', 'change', '修改 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (35, '2020-03-26 13:51:56.578048', '127.0.0.1', NULL, '', 'delete', '批量删除 360 个 商品类别', NULL, 1);
INSERT INTO `xadmin_log` VALUES (36, '2020-03-26 14:18:51.021724', '127.0.0.1', '477', '精选茗茶', 'change', '修改 desc 和 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (37, '2020-03-26 14:19:12.856660', '127.0.0.1', '468', '天然干货', 'change', '修改 desc 和 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (38, '2020-03-26 14:19:45.919542', '127.0.0.1', '462', '奶类食品', 'change', '修改 desc 和 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (39, '2020-03-26 14:20:06.674217', '127.0.0.1', '434', '休闲食品', 'change', '修改 desc 和 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (40, '2020-03-26 14:21:04.092958', '127.0.0.1', '417', '蔬菜水果', 'change', '修改 desc 和 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (41, '2020-03-26 14:21:23.133968', '127.0.0.1', '400', '粮油副食', 'change', '修改 desc 和 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (42, '2020-03-26 14:22:07.196985', '127.0.0.1', '384', '酒水饮料', 'change', '修改 desc 和 is_tab', 14, 1);
INSERT INTO `xadmin_log` VALUES (43, '2020-03-26 14:22:32.617522', '127.0.0.1', '361', '生鲜食品', 'change', '修改 desc 和 is_tab', 14, 1);

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '', 1);

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `widget_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

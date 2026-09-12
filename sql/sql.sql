-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mall_system
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
                         `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                         `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名称',
                         `password` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
                         `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
                         `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
                         `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
                         `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
                         `status` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态',
                         `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                         PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` VALUES (1,'admin','123456','管理员','http://localhost:1000/file/8826e8c280cb3bec6a4fbeb61514ee74.png','123456','123456@h.com','启用','2024-12-07 17:29:35');

--
-- Table structure for table `advertising`
--

DROP TABLE IF EXISTS `advertising`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advertising` (
                               `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                               `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '位置',
                               `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
                               `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '链接',
                               `main_img` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '封面图',
                               `sort` int NOT NULL COMMENT '排序',
                               `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                               PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='广告位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertising`
--

INSERT INTO `advertising` VALUES (1,'轮播图左侧','热卖推荐','/productList?name=家居','http://localhost:1000/file/23884cccf4bf4994a2969e5c6b658f8a.avif',0,'2025-01-10 14:14:45');
INSERT INTO `advertising` VALUES (2,'轮播图右侧','年货节','/productList?name=手机','http://localhost:1000/file/399495e78d7e5c3f7938bf5a4ce54d99.avif',0,'2025-01-10 14:15:12');
INSERT INTO `advertising` VALUES (3,'顶部','年货节','/productList?shopId=1','http://localhost:1000/file/ecb3d93eb4d71854bc5ead5c13b7fdef.png',0,'2025-01-13 14:19:26');

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
                           `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                           `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
                           `main_img` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '封面图',
                           `img_list` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '详细图片',
                           `product_type_id` int NOT NULL COMMENT '分类',
                           `price` float NOT NULL COMMENT '价格',
                           `stock` int NOT NULL COMMENT '库存',
                           `sales_volume` int NOT NULL COMMENT '销量',
                           `intro` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '简介',
                           `shop_id` int NOT NULL COMMENT '商家',
                           `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                           PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

INSERT INTO `product` VALUES (1,'苹果 iPhone 16 Pro Max 港版 双卡双待5G手机 16 promax 白色钛金属 6.9英寸 256GB 官方标配+全国联保','http://localhost:1000/file/5c35ee9ce99a19a25fd9eda8147f5925.png','http://localhost:1000/file/467fc31654a8dbf9763c38cfe0dc101c.png,http://localhost:1000/file/02c2ef4d3e1ea129a2e9557e9c610999.png,http://localhost:1000/file/4f5d79b309535f323c247872809f9698.png,http://localhost:1000/file/da043f91bde90d25dc2f7ca58b9504c6.png',1,9199,97,3,'<p><img src=\"http://localhost:1000/file/f0484536c77bc9f2c1a4aacbca970d36.jpg\" alt=\"f0484536c77bc9f2c1a4aacbca970d36.jpg\" data-href=\"http://localhost:1000/file/f0484536c77bc9f2c1a4aacbca970d36.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/7f6a4e71149162d8aea409f58ae87873.jpg\" alt=\"7f6a4e71149162d8aea409f58ae87873.jpg\" data-href=\"http://localhost:1000/file/7f6a4e71149162d8aea409f58ae87873.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/febb26a9309e6953224dfb034c0ec037.jpg\" alt=\"febb26a9309e6953224dfb034c0ec037.jpg\" data-href=\"http://localhost:1000/file/febb26a9309e6953224dfb034c0ec037.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/43f84a42374c280e039e7da688f729e1.jpg\" alt=\"43f84a42374c280e039e7da688f729e1.jpg\" data-href=\"http://localhost:1000/file/43f84a42374c280e039e7da688f729e1.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/a52c2430fe0ec0e4288fe772957913f5.jpg\" alt=\"a52c2430fe0ec0e4288fe772957913f5.jpg\" data-href=\"http://localhost:1000/file/a52c2430fe0ec0e4288fe772957913f5.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/6fb42f34e705f4ed951fb74107626934.jpg\" alt=\"6fb42f34e705f4ed951fb74107626934.jpg\" data-href=\"http://localhost:1000/file/6fb42f34e705f4ed951fb74107626934.jpg\" style=\"\"/></p>',1,'2025-01-04 17:45:23');
INSERT INTO `product` VALUES (2,'华为mate70 新品手机上市 雪域白 12GB+512GB全网通 官方标配','http://localhost:1000/file/f41dab56cdb12c3f144650a20c79eb18.png','http://localhost:1000/file/fb75dbeabe339c569f0122ab5f59dc02.png,http://localhost:1000/file/632da25230e9adb0d6736e2774eefe13.png,http://localhost:1000/file/9d8622ba3dfa598a47b6a02b34931e3a.png',1,5999,98,2,'<p><img src=\"http://localhost:1000/file/054b8f1b878e0c559183ac024044b627.jpg\" alt=\"054b8f1b878e0c559183ac024044b627.jpg\" data-href=\"http://localhost:1000/file/054b8f1b878e0c559183ac024044b627.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/97997410242d4c32df95c0aeda5b7aa5.jpg\" alt=\"97997410242d4c32df95c0aeda5b7aa5.jpg\" data-href=\"http://localhost:1000/file/97997410242d4c32df95c0aeda5b7aa5.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/1fda21216bc2dd038f5fe5de3dcffa19.jpg\" alt=\"1fda21216bc2dd038f5fe5de3dcffa19.jpg\" data-href=\"http://localhost:1000/file/1fda21216bc2dd038f5fe5de3dcffa19.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/137675baee6079b0187bec883ffe398e.jpg\" alt=\"137675baee6079b0187bec883ffe398e.jpg\" data-href=\"http://localhost:1000/file/137675baee6079b0187bec883ffe398e.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/3b05ab9c583f67375427541a0a575dcd.jpg\" alt=\"3b05ab9c583f67375427541a0a575dcd.jpg\" data-href=\"http://localhost:1000/file/3b05ab9c583f67375427541a0a575dcd.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/8ab95475eb5b191b8b433192ec8cd047.jpg\" alt=\"8ab95475eb5b191b8b433192ec8cd047.jpg\" data-href=\"http://localhost:1000/file/8ab95475eb5b191b8b433192ec8cd047.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/8ab95475eb5b191b8b433192ec8cd047.jpg\" alt=\"8ab95475eb5b191b8b433192ec8cd047.jpg\" data-href=\"http://localhost:1000/file/8ab95475eb5b191b8b433192ec8cd047.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/ea1fcbdedf1540890b07a6ae62fc7463.jpg\" alt=\"ea1fcbdedf1540890b07a6ae62fc7463.jpg\" data-href=\"http://localhost:1000/file/ea1fcbdedf1540890b07a6ae62fc7463.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/edecc312da1f8426724713a19e728c2c.jpg\" alt=\"edecc312da1f8426724713a19e728c2c.jpg\" data-href=\"http://localhost:1000/file/edecc312da1f8426724713a19e728c2c.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/98291d55d6bacd1eabc3e60ccad6ce4c.jpg\" alt=\"98291d55d6bacd1eabc3e60ccad6ce4c.jpg\" data-href=\"http://localhost:1000/file/98291d55d6bacd1eabc3e60ccad6ce4c.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/a8210c13b4d5ef9768a043437623911d.jpg\" alt=\"a8210c13b4d5ef9768a043437623911d.jpg\" data-href=\"http://localhost:1000/file/a8210c13b4d5ef9768a043437623911d.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/223eededd30aa59d382ed058d82bd40d.jpg\" alt=\"223eededd30aa59d382ed058d82bd40d.jpg\" data-href=\"http://localhost:1000/file/223eededd30aa59d382ed058d82bd40d.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/bc984e3492720f8e0dbcd4909f8ff62a.jpg\" alt=\"bc984e3492720f8e0dbcd4909f8ff62a.jpg\" data-href=\"http://localhost:1000/file/bc984e3492720f8e0dbcd4909f8ff62a.jpg\" style=\"\"/></p>',1,'2025-01-04 18:05:26');
INSERT INTO `product` VALUES (3,'农夫山泉 饮用纯净水 天然水源绿瓶 整箱装 550ml*12瓶*2包','http://localhost:1000/file/e26938e757fee706b17aba1795c8d356.png','http://localhost:1000/file/f04ad8a12d50e91e6564bd71407f89f4.png,http://localhost:1000/file/3f10bb3d1d2fc3ea5b80c2123cca6a41.png,http://localhost:1000/file/67c0a0a76f8955052ccd5f0ad2c4815e.png',5,19.8,64,36,'<p><img src=\"http://localhost:1000/file/7c540f1e1401b6530dad450ae2dba960.jpg\" alt=\"7c540f1e1401b6530dad450ae2dba960.jpg\" data-href=\"http://localhost:1000/file/7c540f1e1401b6530dad450ae2dba960.jpg\" style=\"width: 100%;\"/><img src=\"http://localhost:1000/file/f7c8229b8c13cfbdc4e9d84fceffbe8f.jpg\" alt=\"f7c8229b8c13cfbdc4e9d84fceffbe8f.jpg\" data-href=\"http://localhost:1000/file/f7c8229b8c13cfbdc4e9d84fceffbe8f.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/a82316bcb0b1e861f0c917014efb19e3.jpg\" alt=\"a82316bcb0b1e861f0c917014efb19e3.jpg\" data-href=\"http://localhost:1000/file/a82316bcb0b1e861f0c917014efb19e3.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/87c4b00b0ea87197eb12aeef232cb330.jpg\" alt=\"87c4b00b0ea87197eb12aeef232cb330.jpg\" data-href=\"http://localhost:1000/file/87c4b00b0ea87197eb12aeef232cb330.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/78fb7e67bd8d63251af30d81b3a4a809.jpg\" alt=\"78fb7e67bd8d63251af30d81b3a4a809.jpg\" data-href=\"http://localhost:1000/file/78fb7e67bd8d63251af30d81b3a4a809.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/7d870ec7b9bf386a9efad9f160778934.jpg\" alt=\"7d870ec7b9bf386a9efad9f160778934.jpg\" data-href=\"http://localhost:1000/file/7d870ec7b9bf386a9efad9f160778934.jpg\" style=\"\"/></p>',1,'2025-01-04 18:12:26');
INSERT INTO `product` VALUES (4,'李宁袜子官方正品 男女同款吸汗透气防臭青年跑步纯棉通勤运动袜','http://localhost:1000/file/293ce2abb736b4aed289561b73203b29.png','http://localhost:1000/file/760ad7c00056925e68be281ecc6592b8.png,http://localhost:1000/file/e426e9559ad2716c76f7b798123f3151.png,http://localhost:1000/file/857426311adb4e372f09c58439534657.png',2,22,100,0,'<p><img src=\"http://localhost:1000/file/741ef52f7054aa7e8d887300b1cb3876.jpg\" alt=\"741ef52f7054aa7e8d887300b1cb3876.jpg\" data-href=\"http://localhost:1000/file/741ef52f7054aa7e8d887300b1cb3876.jpg\" style=\"width: 100%;\"/><img src=\"http://localhost:1000/file/4d794fc16cd4d58217618f7cee3451c9.jpg\" alt=\"4d794fc16cd4d58217618f7cee3451c9.jpg\" data-href=\"http://localhost:1000/file/4d794fc16cd4d58217618f7cee3451c9.jpg\" style=\"width: 100%;\"/><img src=\"http://localhost:1000/file/a4d3c77852b719f16699d9dd2c7b64fe.jpg\" alt=\"a4d3c77852b719f16699d9dd2c7b64fe.jpg\" data-href=\"http://localhost:1000/file/a4d3c77852b719f16699d9dd2c7b64fe.jpg\" style=\"width: 100%;\"/></p><p><br></p>',1,'2025-01-10 14:40:48');
INSERT INTO `product` VALUES (5,'德国DHA神经酸焕活备考学生儿童青少年脑力记忆补充磷脂酰丝氨酸','http://localhost:1000/file/d43d19f238c27395419d5765ce2c641b.png','http://localhost:1000/file/1bb54f950fb1af5101df230cc8f8f366.png,http://localhost:1000/file/c9c71df173e96f217fa14d503ad1dd04.png',10,480,100,0,'<p><img src=\"http://localhost:1000/file/41767b74afc51ec46b3e85da7ed6a39b.jpg\" alt=\"41767b74afc51ec46b3e85da7ed6a39b.jpg\" data-href=\"http://localhost:1000/file/41767b74afc51ec46b3e85da7ed6a39b.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/83b4b975da8928ffd25cc60bf3bd2b7b.jpg\" alt=\"83b4b975da8928ffd25cc60bf3bd2b7b.jpg\" data-href=\"http://localhost:1000/file/83b4b975da8928ffd25cc60bf3bd2b7b.jpg\" style=\"\"/></p>',1,'2025-01-10 14:44:20');
INSERT INTO `product` VALUES (6,'大希地火山石脆皮烤肠纯地道肉肠空气炸锅食材肉香肠热狗肠黑胡椒','http://localhost:1000/file/c5706fa60d4bdce9e464059b0a29bf27.png','http://localhost:1000/file/70a1d1ed4a5ed9cf4f0c61ea5dcf04ab.png,http://localhost:1000/file/616c322aefb4609a7bb553ab8917aca0.png',5,23.9,100,0,'<p><img src=\"http://localhost:1000/file/d15106f7b1b4b5bf5de5090f2c1bfd55.jpg\" alt=\"d15106f7b1b4b5bf5de5090f2c1bfd55.jpg\" data-href=\"http://localhost:1000/file/d15106f7b1b4b5bf5de5090f2c1bfd55.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/0ad51459e2a7513abbe86233e951bbe3.jpg\" alt=\"0ad51459e2a7513abbe86233e951bbe3.jpg\" data-href=\"http://localhost:1000/file/0ad51459e2a7513abbe86233e951bbe3.jpg\" style=\"\"/></p>',1,'2025-01-10 14:47:26');
INSERT INTO `product` VALUES (7,'雪中飞2024秋新款男女情侣摇粒绒立领外套户外休闲外套','http://localhost:1000/file/1f3212d255785aace60a7894fe9a7f6b.png','http://localhost:1000/file/ea4c32128e57f2bff5196b85ac82a4f3.png,http://localhost:1000/file/feb1aeb58e50eb42e951f84ec4332eb6.png',2,130,100,0,'<p><img src=\"http://localhost:1000/file/099037b4bdf80b516b370479629569f9.jpg\" alt=\"099037b4bdf80b516b370479629569f9.jpg\" data-href=\"http://localhost:1000/file/099037b4bdf80b516b370479629569f9.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/dc13cc480d18e7e9df8d31a3c26d7b02.jpg\" alt=\"dc13cc480d18e7e9df8d31a3c26d7b02.jpg\" data-href=\"http://localhost:1000/file/dc13cc480d18e7e9df8d31a3c26d7b02.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/16b6331719e3b6787dd88bae561611f0.jpg\" alt=\"16b6331719e3b6787dd88bae561611f0.jpg\" data-href=\"http://localhost:1000/file/16b6331719e3b6787dd88bae561611f0.jpg\" style=\"\"/></p>',1,'2025-01-10 14:49:30');
INSERT INTO `product` VALUES (8,'全友家居现代简约单人板式床架出租房屋用1米5卧室双人大床106302','http://localhost:1000/file/f95095a312ad8966545e3d41e9299c4a.png','http://localhost:1000/file/2213143812ff6fd4fe1c4e55e21adfbc.png,http://localhost:1000/file/caccefdc4a8aa75efde9d693b6249923.png',3,629,100,0,'<p><img src=\"http://localhost:1000/file/a5a32f457ada3e294a307f5c74ba02ec.jpg\" alt=\"a5a32f457ada3e294a307f5c74ba02ec.jpg\" data-href=\"http://localhost:1000/file/a5a32f457ada3e294a307f5c74ba02ec.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/339b458dcca19db095fd615411cf7e56.jpg\" alt=\"339b458dcca19db095fd615411cf7e56.jpg\" data-href=\"http://localhost:1000/file/339b458dcca19db095fd615411cf7e56.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/3e07de038c8d80586c2ab41449de674f.jpg\" alt=\"3e07de038c8d80586c2ab41449de674f.jpg\" data-href=\"http://localhost:1000/file/3e07de038c8d80586c2ab41449de674f.jpg\" style=\"\"/></p>',1,'2025-01-10 14:52:32');
INSERT INTO `product` VALUES (9,'百补【三只松鼠罐装每日坚果500g】孕妇健康休闲零食混合干果','http://localhost:1000/file/090b0325bbd065c0ef2c4fdd7b4d4fe2.png','http://localhost:1000/file/40aea365d179861b64979e5c660f3e89.png,http://localhost:1000/file/5198d9885212fb663cd33a4290ab0c8f.png,http://localhost:1000/file/a5cd391a0997303d3fa526abcbd53e1c.png',5,26.9,100,0,'<p><img src=\"http://localhost:1000/file/289ecb3147989f1b5efd73016d4627c7.jpg\" alt=\"289ecb3147989f1b5efd73016d4627c7.jpg\" data-href=\"http://localhost:1000/file/289ecb3147989f1b5efd73016d4627c7.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/6c21b5775aeaadfe8931356d3ba03764.jpg\" alt=\"6c21b5775aeaadfe8931356d3ba03764.jpg\" data-href=\"http://localhost:1000/file/6c21b5775aeaadfe8931356d3ba03764.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/6b9e66306a5130793ec1011540bc67f9.jpg\" alt=\"6b9e66306a5130793ec1011540bc67f9.jpg\" data-href=\"http://localhost:1000/file/6b9e66306a5130793ec1011540bc67f9.jpg\" style=\"\"/></p>',1,'2025-01-10 14:55:42');
INSERT INTO `product` VALUES (10,'小米米家可套近视眼镜太阳镜防紫外线偏光开车潮墨镜套镜防晒男女','http://localhost:1000/file/7edb76bbd8f39d6ebac92fdc4a822555.png','http://localhost:1000/file/b80c545ba9bdafe5b95592f9add934dd.png,http://localhost:1000/file/981840062ddf0aa447d669c3c2c9cc13.png,http://localhost:1000/file/7edb76bbd8f39d6ebac92fdc4a822555.png',6,129,100,0,'<p><img src=\"http://localhost:1000/file/69e3df0775da321adffca2b6c1ca6288.jpg\" alt=\"69e3df0775da321adffca2b6c1ca6288.jpg\" data-href=\"http://localhost:1000/file/69e3df0775da321adffca2b6c1ca6288.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/9dac80ac2377a3c17d6952b501ed9803.jpg\" alt=\"9dac80ac2377a3c17d6952b501ed9803.jpg\" data-href=\"http://localhost:1000/file/9dac80ac2377a3c17d6952b501ed9803.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/c386b1e92efdd90731cd1428a60f1d29.jpg\" alt=\"c386b1e92efdd90731cd1428a60f1d29.jpg\" data-href=\"http://localhost:1000/file/c386b1e92efdd90731cd1428a60f1d29.jpg\" style=\"\"/></p>',1,'2025-01-10 14:57:41');
INSERT INTO `product` VALUES (11,'半亩花田氨基酸慕斯洗面奶洁面温和深层清洁旗舰店官方正品','http://localhost:1000/file/742703ae9be9c90f718fb12955cd0adc.png','http://localhost:1000/file/742703ae9be9c90f718fb12955cd0adc.png',4,39.9,100,0,'<p><img src=\"http://localhost:1000/file/9e8a38b52644492a8e9e05e1d5623713.jpg\" alt=\"9e8a38b52644492a8e9e05e1d5623713.jpg\" data-href=\"http://localhost:1000/file/9e8a38b52644492a8e9e05e1d5623713.jpg\" style=\"\"/></p><p><img src=\"http://localhost:1000/file/513b0c095207815d1a8a851ea1e9c676.jpg\" alt=\"513b0c095207815d1a8a851ea1e9c676.jpg\" data-href=\"http://localhost:1000/file/513b0c095207815d1a8a851ea1e9c676.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/c2014a1408b48049f22553002368a3fc.jpg\" alt=\"c2014a1408b48049f22553002368a3fc.jpg\" data-href=\"http://localhost:1000/file/c2014a1408b48049f22553002368a3fc.jpg\" style=\"\"/></p>',1,'2025-01-10 15:00:52');
INSERT INTO `product` VALUES (12,'倍思手机车载支架2024新款汽车手机架出风口导航专用支撑固定车用','http://localhost:1000/file/72a963c512eb54ea1fea8565b10848ed.png','http://localhost:1000/file/72a963c512eb54ea1fea8565b10848ed.png',8,30.8,100,0,'<p><img src=\"http://localhost:1000/file/d1bb7be390118bd008300b442cb7877b.jpg\" alt=\"d1bb7be390118bd008300b442cb7877b.jpg\" data-href=\"http://localhost:1000/file/d1bb7be390118bd008300b442cb7877b.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/8c7310a7eae5219a0ba5650e1bd0f050.jpg\" alt=\"8c7310a7eae5219a0ba5650e1bd0f050.jpg\" data-href=\"http://localhost:1000/file/8c7310a7eae5219a0ba5650e1bd0f050.jpg\" style=\"\"/><img src=\"http://localhost:1000/file/3b2339ae0c1ad8f323a55d1af170de24.jpg\" alt=\"3b2339ae0c1ad8f323a55d1af170de24.jpg\" data-href=\"http://localhost:1000/file/3b2339ae0c1ad8f323a55d1af170de24.jpg\" style=\"\"/></p>',1,'2025-01-10 15:02:43');

--
-- Table structure for table `product_browsing_history`
--

DROP TABLE IF EXISTS `product_browsing_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_browsing_history` (
                                            `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                                            `product_id` int NOT NULL COMMENT '商品',
                                            `user_id` int NOT NULL COMMENT '用户',
                                            `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                            PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='商品浏览历史';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_browsing_history`
--

INSERT INTO `product_browsing_history` VALUES (139,3,1,'2025-01-10 15:54:44');
INSERT INTO `product_browsing_history` VALUES (140,1,1,'2025-01-12 03:54:01');
INSERT INTO `product_browsing_history` VALUES (141,4,1,'2025-01-12 03:54:02');
INSERT INTO `product_browsing_history` VALUES (143,2,1,'2025-01-12 03:54:04');
INSERT INTO `product_browsing_history` VALUES (144,11,1,'2025-01-12 03:54:05');
INSERT INTO `product_browsing_history` VALUES (146,5,1,'2025-01-12 03:54:09');
INSERT INTO `product_browsing_history` VALUES (175,7,1,'2025-01-13 13:55:03');
INSERT INTO `product_browsing_history` VALUES (176,9,1,'2025-01-13 13:55:13');
INSERT INTO `product_browsing_history` VALUES (177,6,1,'2025-01-13 13:55:24');
INSERT INTO `product_browsing_history` VALUES (179,8,1,'2025-01-13 14:42:15');
INSERT INTO `product_browsing_history` VALUES (182,12,1,'2025-01-13 14:57:24');
INSERT INTO `product_browsing_history` VALUES (183,10,1,'2025-01-13 14:57:38');

--
-- Table structure for table `product_collect`
--

DROP TABLE IF EXISTS `product_collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_collect` (
                                   `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                                   `product_id` int NOT NULL COMMENT '商品',
                                   `user_id` int NOT NULL COMMENT '用户',
                                   `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                   PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='商品收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_collect`
--

INSERT INTO `product_collect` VALUES (7,1,1,'2025-01-05 12:36:53');
INSERT INTO `product_collect` VALUES (8,2,1,'2025-01-05 12:36:55');
INSERT INTO `product_collect` VALUES (17,3,1,'2025-01-07 14:39:17');

--
-- Table structure for table `product_order`
--

DROP TABLE IF EXISTS `product_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_order` (
                                 `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                                 `product_id` int NOT NULL COMMENT '商品',
                                 `shop_id` int NOT NULL COMMENT '店铺',
                                 `total_money` int NOT NULL COMMENT '总金额',
                                 `quantity` int NOT NULL COMMENT '数量',
                                 `user_id` int NOT NULL COMMENT '用户',
                                 `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态',
                                 `consignee_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '收货人姓名',
                                 `consignee_tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '收货人电话',
                                 `consignee_address` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '收货人地址',
                                 `tracking_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '物流单号',
                                 `remark` text COLLATE utf8mb4_unicode_ci COMMENT '备注',
                                 `order_evaluate_id` int DEFAULT NULL COMMENT '评价Id',
                                 `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                 PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='商品订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_order`
--

INSERT INTO `product_order` VALUES (1,3,1,20,1,1,'已完成','张三','13888888888','湖北省武汉市武昌区松园东路武汉大学体育部南门东南侧菜鸟驿站','SF1234',NULL,NULL,'2025-01-10 15:55:35');

--
-- Table structure for table `product_order_evaluate`
--

DROP TABLE IF EXISTS `product_order_evaluate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_order_evaluate` (
                                          `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                                          `user_id` int NOT NULL COMMENT '用户',
                                          `product_id` int NOT NULL COMMENT '商品',
                                          `product_order_id` int NOT NULL COMMENT '订单',
                                          `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
                                          `rate` int NOT NULL COMMENT '评分',
                                          `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                          PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='订单评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_order_evaluate`
--

INSERT INTO `product_order_evaluate` VALUES (1,1,3,1,'非常好',3,'2025-01-06 13:08:53');
INSERT INTO `product_order_evaluate` VALUES (2,1,3,2,'这个质量非常好，家人非常喜欢，还喝起来很清爽。还会买来的。就是希望京东平台多做些活动，喝起来很方便，容量也大呢，比山泉品牌好多了。刚才看了下，这个里面的成分也多，营养物质比较丰富',5,'2025-01-06 13:31:08');

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_type` (
                                `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                                `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
                                `remark` text COLLATE utf8mb4_unicode_ci COMMENT '备注',
                                `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` VALUES (1,'电子产品','手机、电脑、平板等','2025-01-04 17:17:44');
INSERT INTO `product_type` VALUES (2,'服装','男装、女装、童装等','2025-01-04 17:17:54');
INSERT INTO `product_type` VALUES (3,'家居用品','家具、厨房用品、装饰品等','2025-01-04 17:18:05');
INSERT INTO `product_type` VALUES (4,'美容护肤','化妆品、护肤品、个人护理用品等','2025-01-04 17:18:15');
INSERT INTO `product_type` VALUES (5,'食品饮料','干货、零食、饮品等','2025-01-04 17:18:24');
INSERT INTO `product_type` VALUES (6,'运动户外','运动服、健身器械、露营装备等','2025-01-04 17:18:33');
INSERT INTO `product_type` VALUES (7,'母婴用品','婴儿服装、玩具、奶粉等','2025-01-04 17:18:45');
INSERT INTO `product_type` VALUES (8,'汽车用品','配件、清洁用品、维修工具等','2025-01-04 17:18:56');
INSERT INTO `product_type` VALUES (9,'书籍音像','书籍、电子书、音乐、电影等','2025-01-04 17:19:08');
INSERT INTO `product_type` VALUES (10,'健康产品','保健品、医疗器械、运动营养等','2025-01-04 17:19:21');

--
-- Table structure for table `shipping_address`
--

DROP TABLE IF EXISTS `shipping_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_address` (
                                    `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                                    `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
                                    `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '电话',
                                    `address` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '地址',
                                    `user_id` int NOT NULL COMMENT '用户',
                                    `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='收货地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_address`
--

INSERT INTO `shipping_address` VALUES (1,'张三','13888888888','湖北省武汉市武昌区松园东路武汉大学体育部南门东南侧菜鸟驿站',1,'2025-01-05 11:18:11');

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop` (
                        `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                        `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
                        `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
                        `nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '昵称',
                        `avatar_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '头像',
                        `tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
                        `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
                        `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态',
                        `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
                        `fans_count` int NOT NULL COMMENT '粉丝数量',
                        `aptitude_imgs` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '资质',
                        `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                        PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='店铺';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` VALUES (1,'shop1','123456','店铺1','http://localhost:1000/file/e5764188ea16f355ffc2dfc84858b48f.png',NULL,NULL,'启用','小店',1,'http://localhost:1000/file/dc9de1f67958e006b16d311d68f443aa.png,http://localhost:1000/file/318fff7a0c8a3fa14ef5523a0dafb057.png,http://localhost:1000/file/dc9de1f67958e006b16d311d68f443aa.png','2025-01-04 17:07:57');

--
-- Table structure for table `shop_collect`
--

DROP TABLE IF EXISTS `shop_collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_collect` (
                                `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                                `shop_id` int NOT NULL COMMENT '店铺',
                                `user_id` int NOT NULL COMMENT '用户',
                                `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='店铺收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_collect`
--

INSERT INTO `shop_collect` VALUES (25,1,1,'2025-01-09 14:11:40');

--
-- Table structure for table `shopping_cart`
--

DROP TABLE IF EXISTS `shopping_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_cart` (
                                 `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                                 `product_id` int NOT NULL COMMENT '商品',
                                 `user_id` int NOT NULL COMMENT '用户',
                                 `quantity` int NOT NULL COMMENT '数量',
                                 `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                 PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='购物车';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart`
--

INSERT INTO `shopping_cart` VALUES (7,2,1,300,'2025-01-08 14:52:07');

--
-- Table structure for table `slideshow`
--

DROP TABLE IF EXISTS `slideshow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slideshow` (
                             `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                             `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
                             `main_img` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '封面图',
                             `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '链接',
                             `sort` int NOT NULL COMMENT '排序',
                             `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                             PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='轮播图';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slideshow`
--

INSERT INTO `slideshow` VALUES (1,'年货节','http://localhost:1000/file/a8957d9860ac8a71a9291c0f0ac6e6c3.jpg','/productList?shopId=1',0,'2025-01-09 14:54:49');
INSERT INTO `slideshow` VALUES (2,'活动','http://localhost:1000/file/9b154206f59174d422bab8f742a910f8.png','/productList?shopId=1',0,'2025-01-09 14:56:15');
INSERT INTO `slideshow` VALUES (3,'补贴','http://localhost:1000/file/d656b2da074e2407a7093217e2e25e03.jpg','/productList?shopId=1',0,'2025-01-09 14:56:31');

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
                        `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                        `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
                        `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
                        `nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '昵称',
                        `avatar_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '头像',
                        `tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
                        `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
                        `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态',
                        `balance` float(11,2) NOT NULL COMMENT '余额',
                        `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                        PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='普通用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

INSERT INTO `user` VALUES (1,'user1','123456','用户1','http://localhost:1000/file/3f4eb8467121541bb8bea3600b378016.png',NULL,NULL,'启用',9603,'2025-01-04 17:04:40');
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-13 23:12:24

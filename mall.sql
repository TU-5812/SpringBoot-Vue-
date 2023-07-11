/*
 Navicat Premium Data Transfer

 Source Server         : MySQL57
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : ssmmall

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 23/05/2023 16:19:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `link_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系人',
  `link_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系地址',
  `link_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系电话',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '所属用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '收货地址' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, '哈喽', '北京市前门大街120号', '13909768928', 21);
INSERT INTO `address` VALUES (4, '哈哈哈', '南京', '13988776655', 21);
INSERT INTO `address` VALUES (5, 'jerry', 'asss', '17816851454', 23);
INSERT INTO `address` VALUES (6, '文韬', '杭州', '17816851454', 23);
INSERT INTO `address` VALUES (7, 'ss1', 'we', '123123', 23);
INSERT INTO `address` VALUES (8, 'qwe', 'qwe', 'qwe', 29);
INSERT INTO `address` VALUES (9, 'wemt', '112', '13', 32);
INSERT INTO `address` VALUES (10, '123', '123', '123', 34);

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系方式',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updatetime` datetime(0) NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username_key`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '13988997788', NULL, '2022-10-08 22:21:26', '2023-04-04 14:56:04', 'ead08e95e9c867a2ee833c232bf55dbc', 1);
INSERT INTO `admin` VALUES (2, 'admin1', '13877889900', 'admin1@qq.com', '2022-10-10 21:28:42', '2022-10-11 20:39:41', 'a7dbef0f88b54fad3f91d010a30eff55', 1);
INSERT INTO `admin` VALUES (3, 'tu', '17816851454', '2635030465@qq.com', '2023-02-10 22:26:40', '2023-04-04 14:56:08', 'c0f7e7f02bd12dd3b105870c8ac2d745', 1);

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图片地址',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '关联url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '轮播图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES (1, 'http://localhost:9090/api/files/1622091454711', 'http://www.taobao.com');
INSERT INTO `banner` VALUES (2, 'http://localhost:9090/api/files/1622091460427', 'http://www.jd.com');
INSERT INTO `banner` VALUES (3, 'http://localhost:9090/api/files/1622091465428', 'http://www.baidu.com');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `goods_id` bigint(20) NULL DEFAULT NULL COMMENT '商品id',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `count` int(11) NULL DEFAULT NULL COMMENT '商品数量',
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `goods_user`(`goods_id`, `user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '购物车' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (1, 25, 23, 1, '2023-04-12');
INSERT INTO `cart` VALUES (2, 25, 35, 10, '2023-04-12');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `categoryname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类名称',
  `no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '图书', '1001');
INSERT INTO `category` VALUES (2, '物联网设备', '1002');
INSERT INTO `category` VALUES (4, '手机', '1005');

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `goods_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品名称',
  `goods_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品图片',
  `goods_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品id',
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户id',
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (9, 'Vivo X90Pro+ 全网通', 'http://localhost:9090/api/files/2eff9e794da53f050b0ce712ed45345', '8', '23', '2023-03-30');
INSERT INTO `collect` VALUES (11, '适用于arduino uno r3入门学习套件 scratch物联网创客编程开发板', 'http://localhost:9090/api/files/1676718575821', '18', '23', '2023-04-02');
INSERT INTO `collect` VALUES (12, 'ESP32开发板', 'http://localhost:9090/api/files/1676718507779', '17', '23', '2023-04-02');
INSERT INTO `collect` VALUES (13, 'NB物联网智能开关模块手机远程控制器改装抽水泵路灯定制共享设备', 'http://localhost:9090/api/files/1676718458005', '16', '23', '2023-04-02');
INSERT INTO `collect` VALUES (15, 'Vivo X90Pro+ 全网通', 'http://localhost:9090/api/files/2eff9e794da53f050b0ce712ed45345', '8', '29', '2023-04-03');
INSERT INTO `collect` VALUES (16, 'Vivo X90Pro+ 全网通', 'http://localhost:9090/api/files/2eff9e794da53f050b0ce712ed45345', '8', '32', '2023-04-04');
INSERT INTO `collect` VALUES (17, '独立思考：谁在影响谁', 'http://localhost:9090/api/files/1622092102515', '3', '23', '2023-04-04');
INSERT INTO `collect` VALUES (18, 'Iphone 14 Pro Max', 'http://localhost:9090/api/files/1680590608460', '2', '34', '2023-04-07');
INSERT INTO `collect` VALUES (19, '足球', 'http://localhost:9090/api/files/1681259871110', '25', '23', '2023-04-12');
INSERT INTO `collect` VALUES (20, '足球', 'http://localhost:9090/api/files/1681259871110', '25', '35', '2023-04-12');

-- ----------------------------
-- Table structure for content
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `goods_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(255) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '评论',
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of content
-- ----------------------------
INSERT INTO `content` VALUES (1, '1', 23, 'tu', 'hahaha', NULL);
INSERT INTO `content` VALUES (23, '8', 24, 'tu', 'hahaha哈哈哈', NULL);
INSERT INTO `content` VALUES (26, '2', 23, 'jerry', '傻瓜才买', '2023-04-02 17:20:18');
INSERT INTO `content` VALUES (29, '8', 23, 'jerry', 'asd', '2023-04-04 16:00:41');
INSERT INTO `content` VALUES (30, '8', 34, 'jianbing', '太贵了，奸商', '2023-04-07 23:50:47');
INSERT INTO `content` VALUES (31, '25', 23, 'jerry', 'dasdsa', '2023-04-12 08:39:56');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `user_id` int(11) NULL DEFAULT NULL,
  `seller_phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品名称',
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品描述',
  `no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品编号',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '原价',
  `discount` double(10, 2) NULL DEFAULT NULL COMMENT '折扣',
  `store` int(11) NULL DEFAULT NULL COMMENT '库存',
  `praise` int(11) NULL DEFAULT 0 COMMENT '点赞数',
  `sales` int(11) NULL DEFAULT 0 COMMENT '销量',
  `category_id` bigint(20) NULL DEFAULT NULL COMMENT '分类id',
  `imgs` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品图片',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `recommend` tinyint(1) NULL DEFAULT NULL COMMENT '是否推荐：0不推荐，1推荐',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态：1启用 0禁用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, 23, '17816851451', '希望之线（东野圭吾新代表作，高分作品TOP5！）', '《白夜行》《嫌疑人X的献身》《解忧杂货店》《恶意》后，豆瓣东野圭吾第五高分新作！好看到爆炸的人情推理长篇。上市首周登顶日本畅销书总榜，周刊文春推理榜年度推荐。', 'g1001', 35.00, 0.90, 998, 3, 2, 1, 'http://localhost:9090/api/files/1622098971802', '2023-04-07 23:48:47', 1, 1);
INSERT INTO `goods` VALUES (2, 23, '17816851452', 'Iphone 14 Pro Max', '14系列', 'g1003', 10999.00, 0.95, 100, 0, 0, 4, 'http://localhost:9090/api/files/1680590608460', '2023-04-07 23:48:46', 1, 1);
INSERT INTO `goods` VALUES (3, 23, '17816851453', '独立思考：谁在影响谁', '独立思考是获取自由与成功的*重要能力之一，是终身学习的践行核心，本系列书籍已经影响10,000,000人投入学习、阅读和践行', 'g1002', 49.00, 0.50, 97, 0, 3, 1, 'http://localhost:9090/api/files/1622092102515', '2023-04-07 23:48:47', 1, 1);
INSERT INTO `goods` VALUES (4, 23, '17816851454', '文城（余华新书，时隔8年重磅归来，《活着》之后又一精彩力作！）', '余华时隔8年重磅新作！写《活着》的余华又回来了！人生就是自己的往事和他人的序章。关于一个人和他一生的寻找，以及一群人和一个汹涌的年代。精彩过瘾，不负等待！易烊千玺挚爱作家。限量赠送余华珍藏生肖漫画！', 'g1004', 39.50, 0.90, 995, 0, 5, 1, 'http://localhost:9090/api/files/1622092112546', '2023-04-06 10:00:26', 1, 1);
INSERT INTO `goods` VALUES (5, 23, '17816851455', '艺术是什么：极简西方美术史', 'B站27万人喜欢上的西方美术史课', 'g1006', 79.00, 0.47, 998, 0, 2, 1, 'http://localhost:9090/api/files/1622092120531', '2023-04-06 10:00:27', 1, 1);
INSERT INTO `goods` VALUES (6, 23, '17816851456', '艺术是什么：极简西方美术史', 'B站27万人喜欢上的西方美术史课', 'g1006', 80.00, 0.47, 998, 0, 2, 1, 'http://localhost:9090/api/files/1622092120531', '2023-04-06 10:00:27', 1, 1);
INSERT INTO `goods` VALUES (7, 23, '17816851457', '希望之线（东野圭吾新代表作，高分作品TOP5！）', '《白夜行》《嫌疑人X的献身》《解忧杂货店》《恶意》后，豆瓣东野圭吾第五高分新作！好看到爆炸的人情推理长篇。上市首周登顶日本畅销书总榜，周刊文春推理榜年度推荐。', 'g1001', 35.00, 0.90, 998, 3, 2, 1, 'http://localhost:9090/api/files/1622098971802', '2023-04-12 08:35:57', 1, 1);
INSERT INTO `goods` VALUES (8, 23, '17816851458', 'Vivo X90Pro+ 全网通', 'Vivo X90Pro+ 全网通', 'g1003', 6599.00, 0.95, 5, 0, 3, 4, 'http://localhost:9090/api/files/2eff9e794da53f050b0ce712ed45345', '2023-04-06 10:00:28', 1, 1);
INSERT INTO `goods` VALUES (16, 23, '17816851459', 'NB物联网智能开关模块手机远程控制器改装抽水泵路灯定制共享设备', '本产品即买即用，配套免费的微信小程序同时兼容安卓和Ios设备', '123456', 95.00, 0.80, 8, 0, 0, 2, 'http://localhost:9090/api/files/1676718458005', '2023-04-06 10:00:29', 1, 1);
INSERT INTO `goods` VALUES (17, 3, '17816851460', 'ESP32开发板', '裸板', '1231564', 20.00, 0.95, 886, 0, 0, 2, 'http://localhost:9090/api/files/1676718507779', '2023-04-06 10:00:29', 1, 1);
INSERT INTO `goods` VALUES (18, 3, '17816851461', '适用于arduino uno r3入门学习套件 scratch物联网创客编程开发板', '不要钱关注嘉然免费送', '5555', 498.00, 0.10, 1, 0, 0, 2, 'http://localhost:9090/api/files/1676718575821', '2023-04-06 10:00:30', 1, 1);
INSERT INTO `goods` VALUES (22, 23, '17816851462', '133', '33', '1', 213.00, 123.00, 123, 0, 0, 4, 'http://localhost:9090/api/files/1680511206074', '2023-04-06 10:00:31', 0, 0);
INSERT INTO `goods` VALUES (23, 23, '123123123', '123', '123', NULL, 132123.00, 0.90, 2, 0, 0, 1, 'http://localhost:9090/api/files/1680746656370', '2023-04-06 10:04:17', 0, 0);
INSERT INTO `goods` VALUES (24, 23, '测试1', '测试1', '测试1', '292356013695176704', 123.00, 1.00, 22, 0, 0, 2, 'http://localhost:9090/api/files/1680746789850', '2023-04-06 10:06:48', 0, 0);
INSERT INTO `goods` VALUES (25, 35, '111', '足球', '11', '294507959004696576', 111.00, 111.00, 11, 0, 0, 1, 'http://localhost:9090/api/files/1681259871110', '2023-04-12 08:38:41', 0, 1);

-- ----------------------------
-- Table structure for order_goods
-- ----------------------------
DROP TABLE IF EXISTS `order_goods`;
CREATE TABLE `order_goods`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `order_no` bigint(20) NULL DEFAULT NULL COMMENT '订单id',
  `goods_id` bigint(20) NULL DEFAULT NULL COMMENT '商品id',
  `count` int(11) NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '订单商品关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_goods
-- ----------------------------
INSERT INTO `order_goods` VALUES (1, 291305646999998464, 8, 2);
INSERT INTO `order_goods` VALUES (2, 291305646999998464, 2, 4);
INSERT INTO `order_goods` VALUES (3, 291305646999998464, 18, 1);
INSERT INTO `order_goods` VALUES (4, 291306563866464256, 8, 2);
INSERT INTO `order_goods` VALUES (5, 291306563866464256, 2, 4);
INSERT INTO `order_goods` VALUES (6, 291306563866464256, 18, 1);
INSERT INTO `order_goods` VALUES (7, 291331737567367168, 8, 2);
INSERT INTO `order_goods` VALUES (8, 291331737567367168, 2, 8);
INSERT INTO `order_goods` VALUES (9, 291331737567367168, 18, 1);
INSERT INTO `order_goods` VALUES (10, 291332034092077056, 8, 2);
INSERT INTO `order_goods` VALUES (11, 291332034092077056, 2, 8);
INSERT INTO `order_goods` VALUES (12, 291332034092077056, 18, 1);
INSERT INTO `order_goods` VALUES (13, 291334328401530880, 2, 1);
INSERT INTO `order_goods` VALUES (14, 291334328401530880, 7, 1);
INSERT INTO `order_goods` VALUES (15, 291334328401530880, 8, 4);
INSERT INTO `order_goods` VALUES (16, 291334754953859072, 8, 1);
INSERT INTO `order_goods` VALUES (17, 291371918014025728, 7, 1);
INSERT INTO `order_goods` VALUES (18, 291371918014025728, 8, 1);
INSERT INTO `order_goods` VALUES (19, 291372020959023104, 3, 14);
INSERT INTO `order_goods` VALUES (20, 291388953800478720, 2, 1);
INSERT INTO `order_goods` VALUES (21, 291389288208142336, 2, 1);
INSERT INTO `order_goods` VALUES (22, 291389411545845760, 17, 1);
INSERT INTO `order_goods` VALUES (23, 291641145581113344, 2, 3);
INSERT INTO `order_goods` VALUES (24, 291641297112928256, 8, 1);
INSERT INTO `order_goods` VALUES (25, 291738818967506944, 2, 1);
INSERT INTO `order_goods` VALUES (26, 291738818967506944, 16, 1);
INSERT INTO `order_goods` VALUES (27, 291738818967506944, 18, 1);
INSERT INTO `order_goods` VALUES (28, 291738818967506944, 17, 1);
INSERT INTO `order_goods` VALUES (29, 292352390001070080, 2, 1);
INSERT INTO `order_goods` VALUES (30, 292446691582283776, 7, 1);
INSERT INTO `order_goods` VALUES (31, 292926018845413376, 2, 10);
INSERT INTO `order_goods` VALUES (32, 292926018845413376, 8, 1);
INSERT INTO `order_goods` VALUES (33, 292926018845413376, 17, 1);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `order_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '订单编号',
  `total_price` decimal(10, 2) NOT NULL COMMENT '总价',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '下单人id',
  `link_user` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系人',
  `link_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系电话',
  `link_address` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '送货地址',
  `state` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '待付款' COMMENT '状态',
  `is_Del` int(255) NULL DEFAULT NULL COMMENT '是否删除0:未删除1:已删除',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, '20210602115530120326', 175.00, 21, '张三', '13909768928', '北京市前门大街120号', '已发货', 0, '2021-06-02 11:55:30');
INSERT INTO `orders` VALUES (4, '20210606113132315324', 22845.00, 21, '张三', '13909768928', '北京市前门大街120号', '已发货', 0, '2021-06-06 11:31:32');
INSERT INTO `orders` VALUES (5, '20210606142208712260', 31.50, 21, '张三', '13909768928', '北京市前门大街120号', '待发货', 0, '2021-06-06 14:22:08');
INSERT INTO `orders` VALUES (6, '20210606142338521670', 4569.00, 21, '张三', '13909768928', '北京市前门大街120号', '已发货', 0, '2021-06-06 14:23:38');
INSERT INTO `orders` VALUES (7, '20210606223033775406', 217.40, 21, '张三', '13909768928', '北京市前门大街120号', '已发货', 0, '2021-06-06 22:30:33');
INSERT INTO `orders` VALUES (8, '20220121225225592406', 9222.55, 21, '张三', '13909768928', '北京市前门大街120号', '已发货', 0, '2022-01-21 22:52:25');
INSERT INTO `orders` VALUES (9, '20220216210337905723', 31.50, 22, '夹克', '13099887799', '合肥', '已发货', 0, '2022-02-16 21:03:37');
INSERT INTO `orders` VALUES (10, '20220216210447949603', 25.50, 21, '哈哈哈', '13988776655', '南京', '待发货', 0, '2022-02-16 21:04:47');
INSERT INTO `orders` VALUES (11, '291305004927553536', 29950.10, 21, '哈哈哈', '13988776655', '南京', '已下单', NULL, '2023-04-03 12:30:28');
INSERT INTO `orders` VALUES (12, '291306563866464256', 29950.10, 23, 'jerry', '17816851454', 'asss', '已下单', NULL, '2023-04-03 00:00:00');
INSERT INTO `orders` VALUES (13, '291331737567367168', 47312.30, 23, 'jerry', '17816851454', 'asss', '已下单', NULL, '2023-04-03 00:00:00');
INSERT INTO `orders` VALUES (14, '291332034092077056', 47312.30, 23, '文韬', '17816851454', '杭州', '已下单', NULL, '2023-04-03 00:00:00');
INSERT INTO `orders` VALUES (15, '291334328401530880', 29448.25, 23, '文韬', '17816851454', '杭州', '已下单', NULL, '2023-04-03 00:00:00');
INSERT INTO `orders` VALUES (16, '291334754953859072', 6269.05, 23, '文韬', '17816851454', '杭州', '已下单', NULL, '2023-04-03 00:00:00');
INSERT INTO `orders` VALUES (17, '291371918014025728', 6300.55, 23, '文韬', '17816851454', '杭州', '已下单', NULL, '2023-04-03 00:00:00');
INSERT INTO `orders` VALUES (18, '291372020959023104', 343.00, 23, '文韬', '17816851454', '杭州', '已下单', NULL, '2023-04-03 00:00:00');
INSERT INTO `orders` VALUES (19, '291388953800478720', 4340.55, 29, 'qwe', 'qwe', 'qwe', '已下单', NULL, '2023-04-03 00:00:00');
INSERT INTO `orders` VALUES (20, '291389288208142336', 4340.55, 29, 'qwe', 'qwe', 'qwe', '已下单', NULL, '2023-04-03 00:00:00');
INSERT INTO `orders` VALUES (21, '291389411545845760', 19.00, 29, 'qwe', 'qwe', 'qwe', '已下单', NULL, '2023-04-03 00:00:00');
INSERT INTO `orders` VALUES (22, '291641145581113344', 13021.65, 32, 'wemt', '13', '112', '已下单', NULL, '2023-04-04 00:00:00');
INSERT INTO `orders` VALUES (23, '291641297112928256', 6269.05, 32, 'wemt', '13', '112', '已下单', NULL, '2023-04-04 00:00:00');
INSERT INTO `orders` VALUES (24, '291738818967506944', 10593.85, 23, '文韬', '17816851454', '杭州', '已下单', NULL, '2023-04-04 00:00:00');
INSERT INTO `orders` VALUES (25, '292352390001070080', 10449.05, 23, '文韬', '17816851454', '杭州', '已下单', NULL, '2023-04-06 00:00:00');
INSERT INTO `orders` VALUES (26, '292446691582283776', 31.50, 23, '文韬', '17816851454', '杭州', '已下单', NULL, '2023-04-06 00:00:00');
INSERT INTO `orders` VALUES (27, '292926018845413376', 110778.55, 34, '123', '123', '123', '已下单', NULL, '2023-04-07 00:00:00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `account` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '账户余额',
  `identify` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username`, `nick_name`, `email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (23, 'jerry', 'c0f7e7f02bd12dd3b105870c8ac2d745', '杰瑞', 'jerry@163.com', '13696965656', '北京', 21, 0.00, '0');
INSERT INTO `user` VALUES (24, 'tu', 'c0f7e7f02bd12dd3b105870c8ac2d745', '文韬', '2635030465', '17816851454', '杭州', 23, 999.00, '1');
INSERT INTO `user` VALUES (29, '123', '06fc9b1fb49a9082dbd04ba6759f4e96', '123', '123', '123', '123', 123, 0.00, '0');
INSERT INTO `user` VALUES (32, 'qq', 'dd376a7fb92712b55b4189f28cd98448', 'qq', NULL, '17816851454', NULL, 19, 0.00, '0');
INSERT INTO `user` VALUES (33, '444', '74e984487519f3fa547a080525c66721', '44', NULL, '17816851454', NULL, 23, 0.00, '0');
INSERT INTO `user` VALUES (34, 'jianbing', '06fc9b1fb49a9082dbd04ba6759f4e96', '煎饼', '123', '15257703277', 'fihfd', 23, 0.00, '0');
INSERT INTO `user` VALUES (35, 'qqqq', 'e67190e56c6160cb734c91b392cfe2d2', 'nick', 'asd', '13616512380', '213', 19, 0.00, '0');

SET FOREIGN_KEY_CHECKS = 1;

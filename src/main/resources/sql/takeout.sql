/*
Navicat MySQL Data Transfer

Source Server         : blm
Source Server Version : 80016
Source Host           : 47.98.117.19:3306
Source Database       : takeout

Target Server Type    : MYSQL
Target Server Version : 80016
File Encoding         : 65001

Date: 2019-06-25 11:46:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `loginname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `isvalid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '1',
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for `checkfood`
-- ----------------------------
DROP TABLE IF EXISTS `checkfood`;
CREATE TABLE `checkfood` (
  `foodid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `foodtype` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `keywords` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `storeid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`foodid`),
  CONSTRAINT `checkfood_ibfk_1` FOREIGN KEY (`foodid`) REFERENCES `fooddetail` (`foodid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of checkfood
-- ----------------------------
INSERT INTO `checkfood` VALUES ('1', '水果', '1', '10');
INSERT INTO `checkfood` VALUES ('10', '中餐', '1', '1');
INSERT INTO `checkfood` VALUES ('100', '晚餐', '1', '9');
INSERT INTO `checkfood` VALUES ('101', '中餐', '1', '4');
INSERT INTO `checkfood` VALUES ('102', '中餐', '1', '4');
INSERT INTO `checkfood` VALUES ('103', '中餐', '1', '4');
INSERT INTO `checkfood` VALUES ('104', '中餐', '1', '4');
INSERT INTO `checkfood` VALUES ('105', '中餐', '1', '4');
INSERT INTO `checkfood` VALUES ('106', '中餐', '1', '4');
INSERT INTO `checkfood` VALUES ('107', '中餐', '1', '4');
INSERT INTO `checkfood` VALUES ('108', '中餐', '1', '4');
INSERT INTO `checkfood` VALUES ('109', '中餐', '1', '4');
INSERT INTO `checkfood` VALUES ('11', '零食', '1', '12');
INSERT INTO `checkfood` VALUES ('110', '中餐', '1', '4');
INSERT INTO `checkfood` VALUES ('12', '面条馄饨', '1', '5');
INSERT INTO `checkfood` VALUES ('13', '盖浇饭', null, '6');
INSERT INTO `checkfood` VALUES ('14', '油炸麻花', null, '2');
INSERT INTO `checkfood` VALUES ('15', '生鲜蔬菜', null, '10');
INSERT INTO `checkfood` VALUES ('16', '早餐', null, '6');
INSERT INTO `checkfood` VALUES ('17', '夜宵', null, '11');
INSERT INTO `checkfood` VALUES ('19', '生鲜肉类', null, '10');
INSERT INTO `checkfood` VALUES ('2', '水果', '1', '8');
INSERT INTO `checkfood` VALUES ('20', '生鲜肉类', '1', '10');
INSERT INTO `checkfood` VALUES ('21', '生鲜肉类', '1', '10');
INSERT INTO `checkfood` VALUES ('23', '低脂肪', '1', '12');
INSERT INTO `checkfood` VALUES ('24', '低脂肪', '1', '12');
INSERT INTO `checkfood` VALUES ('25', '便当', '1', '3');
INSERT INTO `checkfood` VALUES ('26', '谷物类', '1', '12');
INSERT INTO `checkfood` VALUES ('27', '快餐', '1', '3');
INSERT INTO `checkfood` VALUES ('28', '生鲜蔬菜', '1', '10');
INSERT INTO `checkfood` VALUES ('29', '异国料理', '1', '12');
INSERT INTO `checkfood` VALUES ('3', '面条馄饨', '1', '5');
INSERT INTO `checkfood` VALUES ('30', '零食', '1', '12');
INSERT INTO `checkfood` VALUES ('31', '下午茶', '1', '2');
INSERT INTO `checkfood` VALUES ('32', '地方菜品', '1', '1');
INSERT INTO `checkfood` VALUES ('33', '油炸食品', '1', '7');
INSERT INTO `checkfood` VALUES ('34', '油炸食品', '1', '7');
INSERT INTO `checkfood` VALUES ('35', '饮品', '1', '2');
INSERT INTO `checkfood` VALUES ('36', '饮品', '1', '11');
INSERT INTO `checkfood` VALUES ('37', '中餐', '1', '1');
INSERT INTO `checkfood` VALUES ('38', '中餐', '1', '1');
INSERT INTO `checkfood` VALUES ('39', '中餐', '1', '1');
INSERT INTO `checkfood` VALUES ('4', '面条馄饨', '1', '5');
INSERT INTO `checkfood` VALUES ('40', '中餐', '1', '1');
INSERT INTO `checkfood` VALUES ('41', '地方菜品', '1', '11');
INSERT INTO `checkfood` VALUES ('42', '地方菜品', '1', '11');
INSERT INTO `checkfood` VALUES ('43', '地方菜品', '1', '11');
INSERT INTO `checkfood` VALUES ('44', '中餐', '1', '1');
INSERT INTO `checkfood` VALUES ('45', '中餐', '1', '1');
INSERT INTO `checkfood` VALUES ('46', '下午茶', '1', '2');
INSERT INTO `checkfood` VALUES ('47', '晚餐', '1', '9');
INSERT INTO `checkfood` VALUES ('48', '夜宵', '1', '11');
INSERT INTO `checkfood` VALUES ('49', '地方菜品', '1', '6');
INSERT INTO `checkfood` VALUES ('5', '生鲜肉类', '1', '10');
INSERT INTO `checkfood` VALUES ('50', '饮品', '1', '8');
INSERT INTO `checkfood` VALUES ('51', '地方菜品', '1', '1');
INSERT INTO `checkfood` VALUES ('52', '生鲜蔬菜', '1', '10');
INSERT INTO `checkfood` VALUES ('53', '芹菜', '1', '10');
INSERT INTO `checkfood` VALUES ('54', '中餐', '1', '1');
INSERT INTO `checkfood` VALUES ('55', '小米', '1', '10');
INSERT INTO `checkfood` VALUES ('56', '大米', '1', '10');
INSERT INTO `checkfood` VALUES ('57', '中餐', '1', '1');
INSERT INTO `checkfood` VALUES ('58', '生鲜肉类', '1', '10');
INSERT INTO `checkfood` VALUES ('59', '下午茶', '1', '2');
INSERT INTO `checkfood` VALUES ('60', '异国料理', '1', '3');
INSERT INTO `checkfood` VALUES ('61', '低脂肪', '1', '12');
INSERT INTO `checkfood` VALUES ('62', '零食', '1', '12');
INSERT INTO `checkfood` VALUES ('63', '零食', '1', '12');
INSERT INTO `checkfood` VALUES ('64', '零食', '1', '12');
INSERT INTO `checkfood` VALUES ('65', '零食', '1', '12');
INSERT INTO `checkfood` VALUES ('66', '零食', '1', '12');
INSERT INTO `checkfood` VALUES ('67', '零食', '1', '12');
INSERT INTO `checkfood` VALUES ('68', '零食', '1', '12');
INSERT INTO `checkfood` VALUES ('69', '水果', '1', '8');
INSERT INTO `checkfood` VALUES ('70', '水果', '1', '8');
INSERT INTO `checkfood` VALUES ('71', '水果', '1', '8');
INSERT INTO `checkfood` VALUES ('72', '水果', '1', '8');
INSERT INTO `checkfood` VALUES ('73', '水果', '1', '8');
INSERT INTO `checkfood` VALUES ('74', '水果', '1', '8');
INSERT INTO `checkfood` VALUES ('75', '油炸食品', '1', '3');
INSERT INTO `checkfood` VALUES ('76', '油炸食品', '1', '3');
INSERT INTO `checkfood` VALUES ('77', '油炸食品', '1', '3');
INSERT INTO `checkfood` VALUES ('78', '油炸食品', '1', '3');
INSERT INTO `checkfood` VALUES ('79', '油炸食品', '1', '3');
INSERT INTO `checkfood` VALUES ('8', '饮品', '1', '1');
INSERT INTO `checkfood` VALUES ('80', '生鲜蔬菜', '1', '10');
INSERT INTO `checkfood` VALUES ('81', '生鲜蔬菜', '1', '10');
INSERT INTO `checkfood` VALUES ('82', '生鲜蔬菜', '1', '10');
INSERT INTO `checkfood` VALUES ('83', '生鲜蔬菜', '1', '10');
INSERT INTO `checkfood` VALUES ('84', '生鲜蔬菜', '1', '10');
INSERT INTO `checkfood` VALUES ('85', '生鲜蔬菜', '1', '10');
INSERT INTO `checkfood` VALUES ('86', '生鲜蔬菜', '1', '10');
INSERT INTO `checkfood` VALUES ('87', '生鲜蔬菜', '1', '10');
INSERT INTO `checkfood` VALUES ('88', '生鲜蔬菜', '1', '10');
INSERT INTO `checkfood` VALUES ('89', '生鲜肉类', '1', '10');
INSERT INTO `checkfood` VALUES ('9', '水果', '1', '8');
INSERT INTO `checkfood` VALUES ('90', '生鲜肉类', '1', '10');
INSERT INTO `checkfood` VALUES ('91', '生鲜肉类', '1', '10');
INSERT INTO `checkfood` VALUES ('92', '生鲜肉类', '1', '10');
INSERT INTO `checkfood` VALUES ('93', '晚餐', '1', '9');
INSERT INTO `checkfood` VALUES ('94', '晚餐', '1', '9');
INSERT INTO `checkfood` VALUES ('95', '晚餐', '1', '9');
INSERT INTO `checkfood` VALUES ('96', '晚餐', '1', '9');
INSERT INTO `checkfood` VALUES ('97', '晚餐', '1', '9');
INSERT INTO `checkfood` VALUES ('98', '晚餐', '1', '9');
INSERT INTO `checkfood` VALUES ('99', '晚餐', '1', '9');

-- ----------------------------
-- Table structure for `fooddetail`
-- ----------------------------
DROP TABLE IF EXISTS `fooddetail`;
CREATE TABLE `fooddetail` (
  `foodid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `foodname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `othername` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `price` float(100,0) DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `picpath` varchar(100) DEFAULT NULL,
  `isvalid` int(100) DEFAULT '1',
  PRIMARY KEY (`foodid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of fooddetail
-- ----------------------------
INSERT INTO `fooddetail` VALUES ('1', '荔枝', '水果', '100', '非常好吃，水分很足，刚买来用冰水泡着，闲暇时可以吃一吃，糖分很足，非常甜的那种。价格也不贵，已经推荐朋友购买。', '1561387732604.jpg', '1');
INSERT INTO `fooddetail` VALUES ('10', '火锅', '中餐', '100', '好吃啊，作为一个串霸，很负责任的说串串很实惠，种类也很多，四个人团购的，最爱肥肠和去骨鸭掌和鸡脚，很有嚼劲，吃一口滋溜滋溜，青菜也很新鲜，推荐一波，团购更实惠，鸳鸯锅推荐中辣。', '1561387756573.jpg', '1');
INSERT INTO `fooddetail` VALUES ('100', '梭子蟹海螺花甲毛蛤蜊生蚝海蛎子水产组合', '晚餐', '198', '材料很全，用来做火锅食材刚好，都包括全了，很满意的一次体验！', null, '1');
INSERT INTO `fooddetail` VALUES ('101', '宫保鸡丁', '中餐', '16', '酸辣土豆丝很可口 菠萝咕咾肉美味经典 韭菜炒鸡蛋味道好', null, '1');
INSERT INTO `fooddetail` VALUES ('102', '干锅千叶豆腐', '中餐', '20', '酸辣土豆丝很可口 菠萝咕咾肉美味经典 韭菜炒鸡蛋味道好', null, '1');
INSERT INTO `fooddetail` VALUES ('103', '招牌酸菜黑鱼+红烧排骨酸辣土豆丝2份米饭', '中餐', '100', '一如既往地好，环境大气档次高、菜品地道纯正，服务也好，吃过很多次了，很是推荐', null, '1');
INSERT INTO `fooddetail` VALUES ('104', '鸡块烧毛豆', '中餐', '24', '环境很好，服务很周到，菜品的味道一直很不错。推荐！', null, '1');
INSERT INTO `fooddetail` VALUES ('105', '杏鲍菇炒肉片', '中餐', '20', '感觉味道没有以前好了，西瓜汁也是怪怪的味道，米饭还不错，现在接待多的还是旅行团感觉。所以菜的质量不如以前精致了', null, '1');
INSERT INTO `fooddetail` VALUES ('106', '酸辣土豆丝', '中餐', '8', '口味还不错，经常去吃，比较正的川辣口味，量不大，价格偏上 。\r\n', null, '1');
INSERT INTO `fooddetail` VALUES ('107', '啤酒鸭', '中餐', '38', '离得近，包间多，随时预定都有，主要还是方便', null, '1');
INSERT INTO `fooddetail` VALUES ('108', '鱼香肉丝', '中餐', '18', '请朋友吃饭，2人去的，菜的口味还可以', null, '1');
INSERT INTO `fooddetail` VALUES ('109', '五香螺蛳', '中餐', '12', '每次来蜀国演义，都是一种满意的体验。尤其是姓伞的服务员热情周到，使人有宾至如归的感觉。', null, '1');
INSERT INTO `fooddetail` VALUES ('11', '脆脆鲨', '零食', '10', '蛋糕很好吃，还有参加生日party的孩子妈妈问我蛋糕哪里买的。口感细腻，又不会太甜。', '1561387797391.jpg', '1');
INSERT INTO `fooddetail` VALUES ('110', '红烧排骨', '中餐', '38', '菜味很好，喜欢吃辣的强烈推荐，尤其是毛血旺非常好吃\r\n菜味很好，喜欢吃辣的强烈推荐，尤其是毛血旺非常好吃\r\n菜味很好，喜欢吃辣的强烈推荐，尤其是毛血旺非常好吃', null, '1');
INSERT INTO `fooddetail` VALUES ('12', '猪肉大葱水饺', '面条馄饨', '20', '.路过顺便尝尝这家开了好多家店的水饺..感觉应该蛮香的最起码好吃啊....煮熟后吃着口味一般.没感觉好吃也没感觉出难吃..反正就是个饺子.凑合着吃吧.', '1561387824308.jpg', '1');
INSERT INTO `fooddetail` VALUES ('13', '青椒肉丝盖浇饭', '盖浇饭', '15', '很大一碗，味道很棒，辣味很明显很香，不会太辣又吃的很爽。有两三根青菜和好多好多细面。 ', '1561388107986.png', '1');
INSERT INTO `fooddetail` VALUES ('14', '油炸麻花', '油炸食品', '5', '去丰台永旺喜欢吃，不过不要总吃，热量比较大，它家夏天有点儿夏威夷沙滩风，很多小孩子喜欢在这面点超大份的冰淇淋 #特大什锦拼盘# #特大巴菲# #奶油蘑菇意面#', '1561388155493.png', '1');
INSERT INTO `fooddetail` VALUES ('15', '西兰花', '生鲜蔬菜', '5', '菜品很新鲜！', '1561388225461.png', '1');
INSERT INTO `fooddetail` VALUES ('16', '狗不理包子', '早餐', '30', '上菜速度超快，套餐也性价比超高！没想到狗不理出的烤鸭也不错，老公说我们另外要的椒盐鸭架最好吃，鸭脖子那快肉特多。量挺大两个人吃半天也没吃完，包子都没吃几个全打包了，我觉得猪肉包最好吃。', '1561388338528.png', '1');
INSERT INTO `fooddetail` VALUES ('17', '炒鸡柳', '夜宵', '5', '虽说是油炸的，但是一点都不腻，10块钱一大份可以吃饱，上完网下来买一份超满足！', '1561388404916.png', '1');
INSERT INTO `fooddetail` VALUES ('19', '猪排', '生鲜肉类', '19', '很新鲜！', '1561388480007.png', '1');
INSERT INTO `fooddetail` VALUES ('2', '火龙果', '水果', '30', '美味好吃的水果，新鲜，服务到位，常来这家店里消费，老板人不错，没有来过的记得来几次，千万不要错过了这家店哦', '1561388514974.png', '1');
INSERT INTO `fooddetail` VALUES ('20', '猪前腿肉', '生鲜肉类', '21', '很新鲜', '1561388626912.jpg', '1');
INSERT INTO `fooddetail` VALUES ('21', '泰森鸡胸肉', '生鲜肉类', '23', '很大一块，夏天减脂必备！快点行动起来吧。', '1561388650465.png', '1');
INSERT INTO `fooddetail` VALUES ('23', '全麦面包', '低脂肪', '12', '面包很新鲜，是新做的，很好厚实，适合做三明治。', '1561388680802.png', '1');
INSERT INTO `fooddetail` VALUES ('24', '泰森鸡胸肉', '低脂肪', '12', '很新鲜！', '1561388650465.png', '1');
INSERT INTO `fooddetail` VALUES ('25', '爱的心形便当', '便当', '15', '小姐姐很用心了，外观很好看，适合拍照，味道也一级棒，有好多口味可选，下次还订这家！', '1561388799899.png', '1');
INSERT INTO `fooddetail` VALUES ('26', '燕麦片', '谷物类', '20', '很大一包，性价比高，夏天减脂必备！', '1561388847073.png', '1');
INSERT INTO `fooddetail` VALUES ('27', '鸡排饭', '快餐', '15', '很快送到了，很大一份，鸡排量很足，值得购买！', '1561388945190.png', '1');
INSERT INTO `fooddetail` VALUES ('28', '西红柿', '生鲜蔬菜', '3', '又红又大的西红柿！', '1561388976952.png', '1');
INSERT INTO `fooddetail` VALUES ('29', '螺丝意大利面', '异国料理', '10', '很好吃，在家就能学做外国菜了！', '1561389011713.png', '1');
INSERT INTO `fooddetail` VALUES ('3', '白菜猪肉饺', '面条馄饨', '20', '还不错，套餐比较划算，四个人要了四个不同口味，觉得还可以。和家里吃的了饺子味道差不多，嘴馋手懒的可以吃这家。合生汇里能吃的性价比不错的简餐里，推荐这家。', '1561389037233.jpg', '1');
INSERT INTO `fooddetail` VALUES ('30', '薯片', '零食', '5', '很好吃！', '1561389071217.png', '1');
INSERT INTO `fooddetail` VALUES ('31', '摩卡咖啡', '下午茶', '10', '很好喝的一款咖啡，环境也不错，下班后来一杯不要太爽。', '1561389094992.png', '1');
INSERT INTO `fooddetail` VALUES ('32', '酸菜鱼', '地方菜品', '13', '量很足，味道还可以，点一份两个人够吃。', '1561389135447.png', '1');
INSERT INTO `fooddetail` VALUES ('33', '炸鸡腿', '油炸食品', '10', '炸鸡很好吃，很新鲜，现炸现买，每次都围一堆人，要排队很久。', '1561389346117.png', '1');
INSERT INTO `fooddetail` VALUES ('34', '炸鸡排', '油炸食品', '10', '炸鸡排很好吃，很新鲜，现炸现买，每次都围一堆人，要排队很久。', '1561389362080.png', '1');
INSERT INTO `fooddetail` VALUES ('35', '珍珠奶茶', '饮品', '10', '奶茶很大杯，珍珠也很好吃，点单10分钟就能到。', '1561389409370.png', '1');
INSERT INTO `fooddetail` VALUES ('36', '扎啤', '饮品', '20', '开怀畅饮！不限时！不限时！不限时！不限时！', '1561389432550.png', '1');
INSERT INTO `fooddetail` VALUES ('37', '大盘鸡', '中餐', '80', '超级好吃的一家店，朋友聚会去的，团购还有优惠，玩得很开心，值得推荐！', '1561389471300.png', '1');
INSERT INTO `fooddetail` VALUES ('38', '鱼香肉丝', '中餐', '30', '超级好吃的一家店，朋友聚会去的，团购还有优惠，玩得很开心，值得推荐！菜品又多，很实惠！', '1561389614713.png', '1');
INSERT INTO `fooddetail` VALUES ('39', '地锅鸡', '中餐', '50', '超级好吃的一家店，朋友聚会去的，团购还有优惠，玩得很开心，值得推荐！菜品又多，很实惠！', '1561389746115.png', '1');
INSERT INTO `fooddetail` VALUES ('4', '虾仁水饺', '面条馄饨', '20', '水饺味道不错，一盘15个，对于女生来说刚刚好，还会继续来的', '1561389183665.png', '1');
INSERT INTO `fooddetail` VALUES ('40', '毛血旺', '中餐', '50', '超级好吃的一家店，朋友聚会去的，团购还有优惠，玩得很开心，值得推荐！菜品又多，很实惠！', '1561389764620.png', '1');
INSERT INTO `fooddetail` VALUES ('41', '烤羊肉串', '地方菜品', '15', '传统的兰州拉面，要的宽面，种类非常多，默认的是细面，还有什么二细，毛细，数不过来，肉真的是非常少，不用心看根本看不见，面刚刚好够一个人吃吧，请真的地盘，可以加一份牛肉，上面倒是很快，连锁的味道，都懂得', '1561389808229.png', '1');
INSERT INTO `fooddetail` VALUES ('42', '牛肉凉拌面', '地方菜品', '20', '传统的兰州拉面，要的宽面，种类非常多，默认的是细面，还有什么二细，毛细，数不过来，肉真的是非常少，不用心看根本看不见，面刚刚好够一个人吃吧，请真的地盘，可以加一份牛肉，上面倒是很快，连锁的味道，都懂得', '1561389844726.png', '1');
INSERT INTO `fooddetail` VALUES ('43', '烤大腰子', '地方菜品', '10', '腰子很大很补，孜然辣椒比较重，一口下去美滋滋！爽的一批！', '1561389912994.png', '1');
INSERT INTO `fooddetail` VALUES ('44', '涮肉', '中餐', '100', '这次来的新店，味道一如既往的好。小哥哥小姐姐服务很热情，价格很合适，我们去的时候快9点了，吃到10:40，只有我们自己一桌了。', '1561389951795.png', '1');
INSERT INTO `fooddetail` VALUES ('45', '烤鱼', '中餐', '100', '这家烤鱼店算是良心店家了，100超大一份，三个人没吃完，口味有辣、中辣、重辣，特别解馋！', '1561390019134.png', '1');
INSERT INTO `fooddetail` VALUES ('46', '雪媚娘', '下午茶', '20', '我超级爱吃雪媚娘，软软糯糯的口感不错。', '1561390127439.png', '1');
INSERT INTO `fooddetail` VALUES ('47', '海鲜大咖', '晚餐', '198', '味道好，量大，我已经强烈推荐给同事，同时加班餐都是定你家的了，会持续来的。', '1561390212792.png', '1');
INSERT INTO `fooddetail` VALUES ('48', '火爆鱿鱼', '夜宵', '50', '味道不错。鱿鱼很大，一口咬下去就能吃到鱿鱼，不像别家那样全是面疙瘩。值得推荐。', '1561390276998.png', '1');
INSERT INTO `fooddetail` VALUES ('49', '烤全羊', '地方菜品', '200', '服务员都很好，分量很足，好吃，满足，环境特别有感觉，下次有机会还来', '1561390342706.png', '1');
INSERT INTO `fooddetail` VALUES ('5', '猪蹄', '生鲜肉类', '20', '买的一个猪蹄，一点鸡肉，一个豆腐卷，一个海带卷，味道好像比以前重了，个人感觉鸡肉跟以前味道不太一样，团购价格还是可以的', '1561389245541.png', '1');
INSERT INTO `fooddetail` VALUES ('50', '百世可乐', '饮品', '5', '服务还不错，价格合理，值得购买基本不用等位', '1561390402147.png', '1');
INSERT INTO `fooddetail` VALUES ('51', '小龙虾', '地方菜品', '30', '物美价廉环境挺好的，味道也特别好，量也很大。两个人肯定是吃不完了，三个人勉强能吃完，门口很多等位的，每天人特别多。', '1561390477553.png', '1');
INSERT INTO `fooddetail` VALUES ('52', '鲜玉米', '生鲜蔬菜', '3', '这个玉米真的是很好吃，秒杀什么水果玉米一万条街，真的1就是东北家里煮出的黏玉米，很软糯，自带爆浆，不是脆脆的，一个小缺点就是个别玉米上面有点小尘土，最好洗洗再蒸着吃，还会回购的。', '1561390538731.png', '1');
INSERT INTO `fooddetail` VALUES ('53', '芹菜', '生鲜蔬菜', '5', '香芹菜 非常好吃的芹菜 等待有个好收成 老客户了 值得信赖的店家 平时有什么蔬菜成长上的问题 一个图片拍给客服就能得到帮助', '1561390625464.png', '1');
INSERT INTO `fooddetail` VALUES ('54', '溜肥肠', '中餐', '30', '宫廷菜，享受可以，菜量有点少。可以去尝尝，菜都挺正中的，推荐鸭汤不错！滋补型 #老鸭汤# #农家小炒肉#', '1561390698807.png', '1');
INSERT INTO `fooddetail` VALUES ('55', '小米', '谷物类', '5', '很适合煮粥！', '1561390755782.png\r\n1561390755782.png\r\n1561390755782.png', null);
INSERT INTO `fooddetail` VALUES ('56', '大米', '谷物类', '5', '米很好吃，很软，不过不香，真空袋包装，保质期新鲜。快递不错公司服务态度很好。搞活动买很划算！平常上班很忙，今天有时间就评论哦', '1561390776113.png', '1');
INSERT INTO `fooddetail` VALUES ('57', '黄焖羊肉', '中餐', '50', '环境优雅干净卫生 食材新鲜 份量足喜欢这种味道正宗的红焖羊肉 肉鲜美汤底浓郁 涮菜特别好吃 总体满分 #红焖羊肉# #炸腐竹# #拽面', '1561390868772.png', '1');
INSERT INTO `fooddetail` VALUES ('58', '牦牛肉', '生鲜肉类', '200', '是真的牦牛肉，很少见，特别劲道，一口咬下去，肉味很浓！', '1561390954238.png', '1');
INSERT INTO `fooddetail` VALUES ('59', '生日蛋糕', '下午茶', '100', '生日快乐！', '1561391105415.png', '1');
INSERT INTO `fooddetail` VALUES ('60', '牛排', '异国料理', '80', '很有情调，店里适合拍照，网红打卡地。', '1561391232176.png', '1');
INSERT INTO `fooddetail` VALUES ('61', '黑麦全麦面包', '低脂肪', '10', '好吃，早上做三明治太方便了，煎个蛋加个黄瓜生菜番茄，超级方便。想做就做。以前为了做三明治去面包店一买一大包总是吃不完浪费', null, '1');
INSERT INTO `fooddetail` VALUES ('62', '黑加仑葡萄干', '零食', '64', '质量真的好，推荐给很多同事，好东西一起分享，还送了枣干，开心。黑加仑葡萄干图片中右边，带有细杆柄，看起来很干净，也很大个，吃起来口感甜，非常好吃。', null, '1');
INSERT INTO `fooddetail` VALUES ('63', '香辣柴火鱼小鱼仔', '零食', '28', '第二次买这家的农家菜了，换了个菜，味道依然很棒。小鱼仔是正宗的湖南口味，下饭一流。赞赞赞', null, '1');
INSERT INTO `fooddetail` VALUES ('64', '牛肉干内蒙古1000g', '零食', '108', '包装还是不错，看上去整洁，精致，卫生，吃了一个孜然味的感觉味道还是不错的，很香，但是个人感觉一点点的偏咸，再淡一点就更好了', null, '1');
INSERT INTO `fooddetail` VALUES ('65', '香辣豆干', '零食', '7', '买回来本来是不看好，但是吃了以后真的很好吃，店家也很好，很客气，希望您的生意像您一样，越做越好', null, '1');
INSERT INTO `fooddetail` VALUES ('66', '南瓜子饼', '零食', '75', '第N次买了，女儿一岁多，当早餐和零食吃的，儿子17岁最喜欢吃南瓜子饼和一品酥蛋条，一罐一下子就吃完了，希望能保证食品质量安全，尤其是黑芝麻，千万不要有发霉的，上次有个黑芝麻饼吃出了石沙，希望能改进', null, '1');
INSERT INTO `fooddetail` VALUES ('67', '特级大枣500g', '零食', '135', '特别好吃，颗粒均匀很大！皮薄肉多种子小！价廉物美，值得购买', null, '1');
INSERT INTO `fooddetail` VALUES ('68', '去皮原味生核桃仁', '零食', '68', '客服小妹很贴心，耐心及时解决问题，核桃一如既往的好，吃完这波再来！', null, '1');
INSERT INTO `fooddetail` VALUES ('69', '正宗无锡阳山水蜜桃', '水果', '128', '收到时有点生，放了几天渐熟了。超级好吃的水蜜桃，想要一直不断买下去，所以从早桃就开始买，这个水蜜桃的皮很好撕，水分一直淌，好久好久没吃到这么正宗的阳山水蜜桃了，吃完又买。', null, '1');
INSERT INTO `fooddetail` VALUES ('70', '海南妃子笑荔枝', '水果', '198', '常新鲜，办公室的人都要买荔枝汁甜味美，深受我们的喜爱。荔枝一生生长在树上，一般是六七个月成熟，长成后呈球形或卵形，熟时为红色，果皮有明显的突起的硬皮质疙疙瘩瘩的小瘤体', null, '1');
INSERT INTO `fooddetail` VALUES ('71', '黄肉黄心油桃', '水果', '59', '买的十斤装，和三块一斤，不比超市六块一斤的差。 好吃实惠。', null, '1');
INSERT INTO `fooddetail` VALUES ('72', '四川攀枝花凯特芒果', '水果', '58', '青芒收到了，个头大均匀，立马品尝一下，个大核小，咬一口饱满的果汁四溅，甜甜的味道很好，物美价廉，物流很快，物有所值，值得推荐。', null, '1');
INSERT INTO `fooddetail` VALUES ('73', '蓝莓鲜果', '水果', '118', '蓝莓口感是酸酸甜甜的，女儿很喜欢吃，水分很足颗粒饱满。都是一小把一小把的吃才过瘾！蓝莓快吃完了，人多力量大，放了一夜，口感还是很不错的。', null, '1');
INSERT INTO `fooddetail` VALUES ('74', '浦江巨峰葡萄', '水果', '136', '大大大大大大大大大大大大大大大大大大大大大大大大大大大大大大葡萄！', null, '1');
INSERT INTO `fooddetail` VALUES ('75', '肯德基超值生日双人桶', '油炸食品', '65', '已经吃完啦，点单速度好快哦，店家配好餐会发短信过来，挺好的！！！！', null, '1');
INSERT INTO `fooddetail` VALUES ('76', '肯德基 20份香辣鸡翅', '油炸食品', '210', '便宜实惠！', null, '1');
INSERT INTO `fooddetail` VALUES ('77', '肯德基早餐', '油炸食品', '20', '哇哦，肯德基蛋挞！12块钱四个！我的天，想都不敢想！哈哈哈！买不了吃亏，买不了上当！你值得拥有', null, '1');
INSERT INTO `fooddetail` VALUES ('78', '蓝威薯条', '油炸食品', '24', '比我想象中的还好，收到货之后马上就用了，确实很不错，价格又便宜，东西质量要好，能买到这样的东西，很惊喜哦，所以我又在搜搜看还有没有更好的，然后再来买哦。', null, '1');
INSERT INTO `fooddetail` VALUES ('79', '肯德基四人套餐', '油炸食品', '140', '人出生之初，禀性本身都是善良的。天性也都相差不多，只是后天所处的环境不同和所受教育不同，彼此的习性才形成了巨大的差别。', null, '1');
INSERT INTO `fooddetail` VALUES ('8', '怡宝', '饮品', '3', '比上次买贵了点。可能天气热了饮料也涨价了。东西没问题很好。快递员也给送上三楼了很不错。', '1561389268530.png', '1');
INSERT INTO `fooddetail` VALUES ('80', '青梗柳叶空心菜', '生鲜蔬菜', '22', '又到了种菜的季节了，经同事推荐买了这家的菜种子，颗粒饱满，特别喜欢吃空心菜，期待收获', null, '1');
INSERT INTO `fooddetail` VALUES ('81', '大土豆新鲜5斤', '生鲜蔬菜', '45', '土豆不错的～很大～我是买来给狗子做窝头的～削的时候看得出真的很新鲜～有少量坏的～需要清理～', null, '1');
INSERT INTO `fooddetail` VALUES ('82', '黄瓜小水果新鲜5斤', '生鲜蔬菜', '29', '小黄瓜挺好的，满满的一箱，个头比预期中要小多了，挺新鲜的，口感也还不错，满分好评！', null, '1');
INSERT INTO `fooddetail` VALUES ('83', '时令圆茄子', '生鲜蔬菜', '48', '茄子一大箱到了 包装很不错 那么远的路程一个都没有坏 炒茄子 煮茄子都是很香 最主要的是喜欢吃素茄子 我们老家才会有的一道菜 热天必备 杠杠的 比菜市场买的新鲜多了 不怕有激素催熟的 特别放心', null, '1');
INSERT INTO `fooddetail` VALUES ('84', '新鲜薄皮大青椒', '生鲜蔬菜', '33', '大园椒收到。真好。只有二个压裂了。不影响吃。中午马上炒牛肉木耳。好吃。还准备包饺子。应该更好。赶快吃。吃完再来。', null, '1');
INSERT INTO `fooddetail` VALUES ('85', '罗马生菜500g', '生鲜蔬菜', '25', '很好很新鲜', null, '1');
INSERT INTO `fooddetail` VALUES ('86', '大头菜咸菜疙瘩', '生鲜蔬菜', '38', '很好吃，不是很咸，喝粥的时候吃又是一种味道', null, '1');
INSERT INTO `fooddetail` VALUES ('87', '广西小米椒超辣', '生鲜蔬菜', '108', '网购过三次小米辣，虽然小米辣都涨价了但这家的性价比很高，小米辣品质很好，到手很新鲜，没有一个坏的。', null, '1');
INSERT INTO `fooddetail` VALUES ('88', '山东大葱5斤', '生鲜蔬菜', '29', '宝贝刚收到，比我想象的超好，非常满意，货物和商家描述的一样，感谢卖家！还会再购的，给五星！', null, '1');
INSERT INTO `fooddetail` VALUES ('89', '精牛肉牛腱臀肉健身4斤', '生鲜肉类', '318', '特别好，是一整块肉，都是红肉还有牛筋，本来是买给猫咪吃的，没想到这么好，自己也吃，猫咪也', null, '1');
INSERT INTO `fooddetail` VALUES ('9', '香蕉', '水果', '5', '香蕉份量很足，一大串，收到是青的，然后和熟苹果一起放几天就熟了，软软糯糯超好吃！比外边水果店卖的更好吃更香！', '1561389297613.png', '1');
INSERT INTO `fooddetail` VALUES ('90', '羊后腿肉', '生鲜肉类', '300', '包装很好，可惜只有一半腿肉，一半软肋肉，和说的不一样。', null, '1');
INSERT INTO `fooddetail` VALUES ('91', '西冷牛腩肉4斤装', '生鲜肉类', '277', '牛腩肉很正宗，做出来的牛腩汤味道鲜美看包装就知道非常专业，里三层外三层的包装让牛腩在路上还是冰的送到手上还是冰的牛腩是肯定新鲜的，就是牛腩太大块了需要自己切一下', null, '1');
INSERT INTO `fooddetail` VALUES ('92', '大西冷进口调理雪花牛排8片*150g', '生鲜肉类', '448', '这家应该是我买过的牛排中最好的一家了，肉很新鲜，一看就是雪花好牛排，快递发货特别快，收到冰袋还没化，牛排份量足，送了海盐黑胡椒酱、安佳黄油和刀叉，很齐全啊，真心满意。', null, '1');
INSERT INTO `fooddetail` VALUES ('93', '野生海参', '晚餐', '198', '是野生的，小就是野生的，大的才是养值，我就喜欢小小的', null, '1');
INSERT INTO `fooddetail` VALUES ('94', '白蛤', '晚餐', '198', '老客户了 东西很干净 老板人很好 新鲜好吃', null, '1');
INSERT INTO `fooddetail` VALUES ('95', '舟山鲜活海虾', '晚餐', '198', '正宗野生海虾没错啦！', null, '1');
INSERT INTO `fooddetail` VALUES ('96', '小墨鱼仔', '晚餐', '198', '喜欢这个，喜欢喜欢。别煮太久。。。会缩成一点点。。。哈哈', null, '1');
INSERT INTO `fooddetail` VALUES ('97', '扇贝', '晚餐', '198', '里里外外好几层 这么热的天里面的冰袋一点没化保证了扇贝的新鲜 扇贝不小非常满意！ 赞！', null, '1');
INSERT INTO `fooddetail` VALUES ('98', '皮皮虾鲜活', '晚餐', '198', '虾菇图片上看着挺大的，到手很大的只有两只，大部分是中等的，还两只小的。', null, '1');
INSERT INTO `fooddetail` VALUES ('99', '象拔蚌', '晚餐', '198', '口感和1000左右的没差，常常鲜。', null, '1');

-- ----------------------------
-- Table structure for `orderblm`
-- ----------------------------
DROP TABLE IF EXISTS `orderblm`;
CREATE TABLE `orderblm` (
  `orderid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `storeid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `foodid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `foodname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `totalprice` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `isvalid` int(50) DEFAULT '1',
  `remarks` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`orderid`),
  KEY `orderuserid` (`userid`) USING BTREE,
  CONSTRAINT `orderblm_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of orderblm
-- ----------------------------
INSERT INTO `orderblm` VALUES ('1', '1', '老王', '1', null, null, '50', '2019-06-14 09:28:19', '1', null);

-- ----------------------------
-- Table structure for `orderdetail`
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail` (
  `orderdetailid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `foodid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `orderid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`orderdetailid`),
  KEY `orderdetailfoodid` (`foodid`) USING BTREE,
  KEY `orderdetailorderid` (`orderid`) USING BTREE,
  CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`foodid`) REFERENCES `fooddetail` (`foodid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`orderid`) REFERENCES `orderblm` (`orderid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------
INSERT INTO `orderdetail` VALUES ('1', '10', '1');
INSERT INTO `orderdetail` VALUES ('2', '11', '1');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `roleid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `rolename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '用户');
INSERT INTO `role` VALUES ('2', '商家');
INSERT INTO `role` VALUES ('3', '管理员');

-- ----------------------------
-- Table structure for `storedetail`
-- ----------------------------
DROP TABLE IF EXISTS `storedetail`;
CREATE TABLE `storedetail` (
  `storeid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `userid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `storename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `storeaddress` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `certurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `shopfronturl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `area` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `isvalid` int(100) DEFAULT NULL,
  PRIMARY KEY (`storeid`),
  KEY `storedetailuserid` (`userid`) USING BTREE,
  CONSTRAINT `storedetail_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of storedetail
-- ----------------------------
INSERT INTO `storedetail` VALUES ('1', '1', '13912852257', '1297799065@qq.com', '杨杨小酒家', '海安', '如图', '338475004de9e4fbe345f79af51d8jpeg.webp', '从海安到如皋', '1');
INSERT INTO `storedetail` VALUES ('10', '2', '17768493689', 'laowang@qq,com', '农贸菜市场', '如皋', null, null, '如皋', '1');
INSERT INTO `storedetail` VALUES ('11', '3', null, null, '人民市场', '如皋', null, null, '如皋', null);
INSERT INTO `storedetail` VALUES ('12', '12', '17826263333', 'laozhao@qq.com', '赵氏零食纺', '如皋', null, null, '如皋', null);
INSERT INTO `storedetail` VALUES ('2', '4', '18651087556', '18651087556@qq.com', '炸鸡汉堡奶茶小吃店', '如皋', 'zhizhao.jpg', '8c1d0d90648d8c68428aeb5ae46d2jpeg (1).webp', '如皋', '1');
INSERT INTO `storedetail` VALUES ('3', '5', '18651087556', '18651087556@qq.com', '肯德基宅急送（南通莲花店）\r\n (24)\r\n\r\n', '如皋', 'zhizhao.jpg', '8aa96b11789b45bf53d92e470acacjpeg.webp', '如皋', '1');
INSERT INTO `storedetail` VALUES ('4', '6', '18651087556', '18651087556@qq.com', '一品私房菜', '如皋', null, '67274e0c4835b317963c5a2701ffbjpeg.webp', '如皋', '1');
INSERT INTO `storedetail` VALUES ('5', '7', '18999880932', '18999880932@qq.com', '大娘水饺(南通虹桥路文峰店)', '如皋', null, '8d4138f86e847e37e3e7e9d157dd5png.webp', '如皋', '1');
INSERT INTO `storedetail` VALUES ('6', '8', '17786557889', '17786557889@qq.com', '甬兴福大食堂', '如皋', null, '70ef83f137e46de93ee27ce165b39png.webp', '如皋', '1');
INSERT INTO `storedetail` VALUES ('7', '9', '13333322211', '13333322211@qq.com', '炸鸡', '如皋', null, '81582dff7c79abcff1734d6c591d4jpeg.webp', null, '1');
INSERT INTO `storedetail` VALUES ('8', '10', '17826263689', 'laowang@qq.com', '老王水果店', '如皋', null, null, '如皋', '1');
INSERT INTO `storedetail` VALUES ('9', '11', '17826260689', 'laozhao@qq.com', '老赵海鲜自助', '如皋', null, null, '如皋', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `roleid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `isvalid` int(100) NOT NULL DEFAULT '1',
  PRIMARY KEY (`userid`),
  KEY `roleid` (`roleid`) USING BTREE,
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleid`) REFERENCES `role` (`roleid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '周宇', '$2a$10$c8.b9dP/33KHLXq2eqHo2eFm5FdZ8NYQ7Gs7VjB2j8E1FiLb6GUBG', '17826263689', '2019-06-20 23:46:02', '2', '1');
INSERT INTO `user` VALUES ('10', '006', '$10$c8.b9dP/33KHLXq2eqHo2eFm5FdZ8NYQ7Gs7VjB2j8E1FiLb6GUBG', '213123', '2019-06-24 21:06:11', '2', '1');
INSERT INTO `user` VALUES ('11', '007', '$10$c8.b9dP/33KHLXq2eqHo2eFm5FdZ8NYQ7Gs7VjB2j8E1FiLb6GUBG', '123123', '2019-05-29 21:06:24', '2', '1');
INSERT INTO `user` VALUES ('12', '鸡儿赵', '$10$c8.b9dP/33KHLXq2eqHo2eFm5FdZ8NYQ7Gs7VjB2j8E1FiLb6GUBG', '13912852257', '2019-06-04 21:31:24', '2', '1');
INSERT INTO `user` VALUES ('13', '蔡徐坤', '$10$c8.b9dP/33KHLXq2eqHo2eFm5FdZ8NYQ7Gs7VjB2j8E1FiLb6GUBG', '1111', '2019-06-05 21:32:15', '1', '1');
INSERT INTO `user` VALUES ('14', '杨幂', '$10$c8.b9dP/33KHLXq2eqHo2eFm5FdZ8NYQ7Gs7VjB2j8E1FiLb6GUBG', '13912852257', '2019-06-12 21:32:39', '1', '1');
INSERT INTO `user` VALUES ('15', '杨紫', '$10$c8.b9dP/33KHLXq2eqHo2eFm5FdZ8NYQ7Gs7VjB2j8E1FiLb6GUBG', '12977990651', '2019-06-22 21:32:59', '1', '1');
INSERT INTO `user` VALUES ('16', '杨颖', '$10$c8.b9dP/33KHLXq2eqHo2eFm5FdZ8NYQ7Gs7VjB2j8E1FiLb6GUBG', '11111111111', '2019-05-30 21:33:29', '1', '1');
INSERT INTO `user` VALUES ('17', '赵丽颖', '$10$c8.b9dP/33KHLXq2eqHo2eFm5FdZ8NYQ7Gs7VjB2j8E1FiLb6GUBG', '22222222222', '2019-06-28 21:33:51', '1', '1');
INSERT INTO `user` VALUES ('18', '景甜', '$10$c8.b9dP/33KHLXq2eqHo2eFm5FdZ8NYQ7Gs7VjB2j8E1FiLb6GUBG', '33333333333', '2019-06-05 21:34:18', '1', '1');
INSERT INTO `user` VALUES ('19', '唐嫣', '$10$c8.b9dP/33KHLXq2eqHo2eFm5FdZ8NYQ7Gs7VjB2j8E1FiLb6GUBG', '44444444444', '2019-06-29 21:34:41', '1', '1');
INSERT INTO `user` VALUES ('2', 'gyy', '$2a$10$c8.b9dP/33KHLXq2eqHo2eFm5FdZ8NYQ7Gs7VjB2j8E1FiLb6GUBG', '1111111111', '2019-06-04 16:12:08', '2', '1');
INSERT INTO `user` VALUES ('20', '鞠婧祎', '$10$c8.b9dP/33KHLXq2eqHo2eFm5FdZ8NYQ7Gs7VjB2j8E1FiLb6GUBG', '55555555555', '2019-06-12 21:35:06', '1', '1');
INSERT INTO `user` VALUES ('21', '关晓彤', '$10$c8.b9dP/33KHLXq2eqHo2eFm5FdZ8NYQ7Gs7VjB2j8E1FiLb6GUBG', '66666666666', '2019-06-27 21:35:31', '1', '1');
INSERT INTO `user` VALUES ('3', 'zkk', '$10$c8.b9dP/33KHLXq2eqHo2eFm5FdZ8NYQ7Gs7VjB2j8E1FiLb6GUBG', '12312', '2019-06-24 21:01:42', '2', '1');
INSERT INTO `user` VALUES ('4', '001', '$10$c8.b9dP/33KHLXq2eqHo2eFm5FdZ8NYQ7Gs7VjB2j8E1FiLb6GUBG', '131231231', '2019-06-24 21:03:48', '2', '1');
INSERT INTO `user` VALUES ('5', '002', '$10$c8.b9dP/33KHLXq2eqHo2eFm5FdZ8NYQ7Gs7VjB2j8E1FiLb6GUBG', '21312321', '2019-05-27 21:04:20', '2', '1');
INSERT INTO `user` VALUES ('6', '003', '$10$c8.b9dP/33KHLXq2eqHo2eFm5FdZ8NYQ7Gs7VjB2j8E1FiLb6GUBG', '312312312', '2019-06-24 21:04:35', '2', '1');
INSERT INTO `user` VALUES ('7', 'kris', '$2a$10$/BpNUjd1ZIDo3UGLTUqrce68g0ce5Zs7tf8a6XOpQfZ7EoUKMdpCO', '17826263701', '2019-06-22 07:10:21', '2', '1');
INSERT INTO `user` VALUES ('8', '004', '$10$c8.b9dP/33KHLXq2eqHo2eFm5FdZ8NYQ7Gs7VjB2j8E1FiLb6GUBG', '123123', '2019-06-24 21:05:38', '2', '1');
INSERT INTO `user` VALUES ('9', '005', '$10$c8.b9dP/33KHLXq2eqHo2eFm5FdZ8NYQ7Gs7VjB2j8E1FiLb6GUBG', '2313', '2019-06-24 21:05:59', '2', '1');

-- ----------------------------
-- Table structure for `userdetail`
-- ----------------------------
DROP TABLE IF EXISTS `userdetail`;
CREATE TABLE `userdetail` (
  `userid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`userid`),
  CONSTRAINT `userdetail_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of userdetail
-- ----------------------------
INSERT INTO `userdetail` VALUES ('1', '上海');

/*
 Navicat Premium Data Transfer

 Source Server         : Dzy
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : micro

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 01/06/2021 20:31:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ml_course
-- ----------------------------
DROP TABLE IF EXISTS `ml_course`;
CREATE TABLE `ml_course`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `school` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `upload_id` int(20) DEFAULT NULL,
  `upload_time` datetime(0) DEFAULT NULL,
  `permission` int(10) DEFAULT 0 COMMENT '0:待审核 1：审核通过 ，2：审核不通过',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cover_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `studying_count` int(20) DEFAULT 0,
  `memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `del` int(10) DEFAULT 0,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '被驳回理由',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ml_course
-- ----------------------------
INSERT INTO `ml_course` VALUES (34, '年的那就', '大大撒', '湖南理工学院', '李教授', '农学', 1, '2021-04-30 22:12:06', 1, 'F:/2021fileUpload/video/20210430221206_2021王道数据结构.pdf', 'http://172.20.10.8:9898/images/cover/file.png', 'http://172.20.10.8:9898/images/video/20210430221206_2021王道数据结构.pdf', 116, NULL, 0, NULL);
INSERT INTO `ml_course` VALUES (35, '年的那就01', '大大撒10', '湖南理工学院', '李教授', '经济', 5, '2021-04-30 22:12:30', 1, 'F:/2021fileUpload/video/20210430221230_316的故事.mp4', 'http://172.20.10.8:9898/images/cover/20210430221230.jpg', 'http://172.20.10.8:9898/images/video/20210430221230_316的故事.mp4', 100, NULL, 0, NULL);
INSERT INTO `ml_course` VALUES (41, '316的故事', '这是一个神秘的课程...', '湖南理工学院', '李教授', '管理', 5, '2021-04-30 22:42:35', 1, 'F:/2021fileUpload/video/20210430224235_316的故事.mp4', 'http://172.20.10.8:9898/images/cover/20210430224235.jpg', 'http://172.20.10.8:9898/images/video/20210430224235_316的故事.mp4', 61, NULL, 0, NULL);
INSERT INTO `ml_course` VALUES (42, '2021王道数据结构', '这是一个神秘的课程...', '湖南理工学院', '李教授', '医学', 5, '2021-04-30 22:42:36', 1, 'F:/2021fileUpload/video/20210430224236_2021王道数据结构.pdf', 'http://172.20.10.8:9898/images/cover/file.png', 'http://172.20.10.8:9898/images/video/20210430224236_2021王道数据结构.pdf', 120, NULL, 0, NULL);
INSERT INTO `ml_course` VALUES (43, '9999', '9999', '999', '王教授', '文学', 5, '2021-04-30 22:43:17', 1, 'F:/2021fileUpload/video/20210430224317_316的故事.mp4', 'http://172.20.10.8:9898/images/cover/20210430224317.jpg', 'http://172.20.10.8:9898/images/video/20210430224317_316的故事.mp4', 15, NULL, 0, NULL);
INSERT INTO `ml_course` VALUES (44, '000', '00', '0000', '王教授', '农学', 5, '2021-04-30 22:48:57', 1, 'F:/2021fileUpload/video/20210430224857_316的故事.mp4', 'http://172.20.10.8:9898/images/cover/20210430224857.jpg', 'http://172.20.10.8:9898/images/video/20210430224857_316的故事.mp4', 1, NULL, 0, NULL);
INSERT INTO `ml_course` VALUES (45, '01010', '0101', '011', '王教授', '医学', 5, '2021-04-30 22:51:02', 1, 'F:/2021fileUpload/video/20210430225102_316的故事.mp4', 'http://172.20.10.8:9898/images/cover/20210430225102.jpg', 'http://172.20.10.8:9898/images/video/20210430225102_316的故事.mp4', 0, NULL, 0, NULL);
INSERT INTO `ml_course` VALUES (46, '316的故事', '这是一个神秘的课程...', '湖南理工学院', '王教授', '工学', 5, '2021-04-30 22:51:22', 1, 'F:/2021fileUpload/video/20210430225122_316的故事.mp4', 'http://172.20.10.8:9898/images/cover/20210430225122.jpg', 'http://172.20.10.8:9898/images/video/20210430225122_316的故事.mp4', 14, NULL, 0, NULL);
INSERT INTO `ml_course` VALUES (47, '2021王道数据结构', '这是一个神秘的课程...', '湖南理工学院', '王教授', '工学', 5, '2021-04-30 22:51:24', 2, 'F:/2021fileUpload/video/20210430225124_2021王道数据结构.pdf', 'http://172.20.10.8:9898/images/cover/file.png', 'http://172.20.10.8:9898/images/video/20210430225124_2021王道数据结构.pdf', 0, NULL, 0, '01101010');
INSERT INTO `ml_course` VALUES (48, '4444', '444', '444', '王教授', '农学', 5, '2021-04-30 22:58:16', 2, 'F:/2021fileUpload/video/20210430225816_316的故事.mp4', 'http://172.20.10.8:9898/images/cover/20210430225816.jpg', 'http://172.20.10.8:9898/images/video/20210430225816_316的故事.mp4', 0, NULL, 0, '12321');
INSERT INTO `ml_course` VALUES (49, '316的故事', '这是一个神秘的课程...', '湖南理工学院', '董政宇', '工学', 5, '2021-04-30 22:58:33', 1, 'F:/2021fileUpload/video/20210430225833_316的故事.mp4', 'http://172.20.10.8:9898/images/cover/20210430225833.jpg', 'http://172.20.10.8:9898/images/video/20210430225833_316的故事.mp4', 3, NULL, 0, NULL);
INSERT INTO `ml_course` VALUES (50, '2021王道数据结构', '这是一个神秘的课程...', '湖南理工学院', '董政宇', '工学', 5, '2021-04-30 22:58:34', 2, 'F:/2021fileUpload/video/20210430225834_2021王道数据结构.pdf', 'http://172.20.10.8:9898/images/cover/file.png', 'http://172.20.10.8:9898/images/video/20210430225834_2021王道数据结构.pdf', 15, NULL, 0, '作品有违规内容容');
INSERT INTO `ml_course` VALUES (51, '316的故事', '这是一个神秘的课程...', '湖南理工学院', '董同学', '艺术', 1, '2021-05-01 11:52:07', 1, 'F:/2021fileUpload/video/20210501115207_316的故事.mp4', 'http://172.20.10.8:9898/images/cover/20210501115207.jpg', 'http://172.20.10.8:9898/images/video/20210501115207_316的故事.mp4', 166, NULL, 0, NULL);
INSERT INTO `ml_course` VALUES (52, '2021王道数据结构', '这是一个神秘的课程...', '湖南理工学院', '王俊凯', '工学', 1, '2021-05-01 11:52:10', 1, 'F:/2021fileUpload/video/20210501115210_2021王道数据结构.pdf', 'http://172.20.10.8:9898/images/cover/file.png', 'http://172.20.10.8:9898/images/video/20210501115210_2021王道数据结构.pdf', 12, NULL, 0, NULL);
INSERT INTO `ml_course` VALUES (53, '建筑学基础第一篇', '建筑学基础是为物业管理、物业设施管理专业高职、高专、成教、自考、职业培训撰写的通用系列教材之一，既可作为专科（高职、高专、电大、成教）学生的教材和物业管理、物业设施管理从业人员的参考书，也可作为房地产经营管理、工程管理、建筑学、工民建专业普及建筑学知识的一般性教材。', '湖南理工学院', '华仁杰', '工学', 6, '2021-05-01 12:37:07', 1, 'F:/2021fileUpload/video/20210501123707_bandicam 2021-04-02 18-55-00-958.mp4', 'http://172.20.10.8:9898/images/cover/20210501123712.jpg', 'http://172.20.10.8:9898/images/video/20210501123707_bandicam 2021-04-02 18-55-00-958.mp4', 114, NULL, 0, '');
INSERT INTO `ml_course` VALUES (54, '建筑学基础第二篇', '建筑学基础是为物业管理、物业设施管理专业高职、高专、成教、自考、职业培训撰写的通用系列教材之一，既可作为专科（高职、高专、电大、成教）学生的教材和物业管理、物业设施管理从业人员的参考书，也可作为房地产经营管理、工程管理、建筑学、工民建专业普及建筑学知识的一般性教材。', '湖南理工学院', '华仁杰', '工学', 6, '2021-05-01 12:37:07', 1, 'F:/2021fileUpload/video/20210501123707_bandicam 2021-03-27 19-16-45-080.mp4', 'http://172.20.10.8:9898/images/cover/20210501123716.jpg', 'http://172.20.10.8:9898/images/video/20210501123707_bandicam 2021-03-27 19-16-45-080.mp4', 150, NULL, 0, '');
INSERT INTO `ml_course` VALUES (55, '我就是测试测试名字的', '这是一个神秘的课程...', '湖南理工学院', '菠萝赤血', '艺术', 1, '2021-05-01 12:38:07', 1, 'F:/2021fileUpload/video/20210501123807_bandicam 2021-04-17 14-02-57-553.mp4', 'http://172.20.10.8:9898/images/cover/20210501123811.jpg', 'http://172.20.10.8:9898/images/video/20210501123807_bandicam 2021-04-17 14-02-57-553.mp4', 124, NULL, 0, NULL);
INSERT INTO `ml_course` VALUES (56, '那年夏天', '国庆节，和小伙伴一起出去玩耍，非常开心的日子', '江苏大学', '董政宇', '艺术', 6, '2021-05-03 01:08:07', 2, 'F:/2021fileUpload/video/20210503010807_316的故事.mp4', 'http://172.20.10.8:9898/images/cover/20210503010807.jpg', 'http://172.20.10.8:9898/images/video/20210503010807_316的故事.mp4', 3, NULL, 0, '内容违规');
INSERT INTO `ml_course` VALUES (57, '文艺复兴-阿尔伯蒂', '文艺复兴-阿尔伯蒂是法国的一场无产阶级斗争', '湖南理工学院', '华仁杰', '文学', 3, '2021-05-03 15:17:53', 1, 'F:/2021fileUpload/video/20210503151753_文艺复兴-阿尔伯蒂.pdf', 'http://172.20.10.8:9898/images/cover/file.jpg', 'http://172.20.10.8:9898/images/video/20210503151753_文艺复兴-阿尔伯蒂.pdf', 159, NULL, 0, NULL);
INSERT INTO `ml_course` VALUES (58, '计算机组成原理第四章', '计算机系统由两大部分组成：硬件和软件。软件又包括系统软件和应用软件。  系统软件可以管理整个计算机系统：  语言处理程序（将高级语言转换为机器可以懂的指令） 操作系统 服务性程序（比如数学库、MPI服务程序进行并行之间的通信） 数据库管理系统 网络软件 应用软件是按照任务需要编制成的程序。', '湖南理工学院', '聂老师', '工学', 6, '2021-05-03 15:29:04', 1, 'F:/2021fileUpload/video/20210503152904_计算机组成原理第四章.pdf', 'http://172.20.10.8:9898/images/cover/file.png', 'http://172.20.10.8:9898/images/video/20210503152904_计算机组成原理第四章.pdf', 181, NULL, 0, '');
INSERT INTO `ml_course` VALUES (59, '暗夜猎手', '肖娜·薇恩是一位无情的德玛西亚怪物猎手。终其一生，她都在寻找杀害她全家的恶魔。她的手臂上装着十字弩，心中燃烧着熊熊的复仇怒火，从暗影中射出圣银弩箭的风暴，薇恩只有在杀死那些为黑暗魔法所控制的人和生物时，才能真正感到愉悦 [2]  。', '德玛西亚学院', 'Hide', '教育', 5, '2021-05-06 18:25:20', 1, 'F:/2021fileUpload/video/20210506182520_vnLoL.mp4', 'http://172.20.10.8:9898/images/cover/20210506182520.jpg', 'http://172.20.10.8:9898/images/video/20210506182520_vnLoL.mp4', 108, NULL, 0, '');
INSERT INTO `ml_course` VALUES (60, '虚空卡萨丁', '在世界上最黑暗的地方，卡萨丁切出了一道燃烧的裂口，他知道自己已经时日无多。他曾是恕瑞玛地区的向导和冒险家，后来选择在恕瑞玛南方平静的部落中安家落户——直到那一天，他的村庄被虚空吞噬。卡萨丁发誓要报仇雪恨，于是整合了许多秘法器物和禁忌之术，以便应对前方的险阻。最后，卡萨丁动身前往艾卡西亚的废土，准备面对任何虚空的造物，寻找那位自封的先知，玛尔扎哈 [1]  。', '德玛西亚学院', 'Hide', '教育', 5, '2021-05-06 18:26:32', 10, 'F:/2021fileUpload/video/20210506182632_KASAD.mp4', 'http://172.20.10.8:9898/images/cover/20210506182632.jpg', 'http://172.20.10.8:9898/images/video/20210506182632_KASAD.mp4', 30, NULL, 0, NULL);
INSERT INTO `ml_course` VALUES (61, '龙的传人', '李青是艾欧尼亚古老武术的大师，讲原则、重信义的他能将神龙之灵的精粹运用自如，助他面对任何挑战。虽然他多年前便已双目失明，但这位武僧依然献出自己的全部力量，用生命捍卫家园，抵御任何胆敢打破这里神圣均衡的人。所有因他安静冥想的举动而掉以轻心的敌人都将品尝他燃烧的拳头和炽烈的回旋踢 [3]  ', '德玛西亚学院', '李青', '教育', 5, '2021-05-06 18:29:09', 1, 'F:/2021fileUpload/video/20210506182909_liQing.mp4', 'http://172.20.10.8:9898/images/cover/20210506182909.jpg', 'http://172.20.10.8:9898/images/video/20210506182909_liQing.mp4', 8, NULL, 0, '');
INSERT INTO `ml_course` VALUES (62, '测试课程', '就是一个简单的测试', '测试学院', '测试员12138', '管理', 5, '2021-05-07 01:26:36', 2, 'F:/2021fileUpload/video/20210507012636_vnLoL.mp4', 'http://172.20.10.8:9898/images/cover/20210507012636.jpg', 'http://172.20.10.8:9898/images/video/20210507012636_vnLoL.mp4', 2, NULL, 0, '现场踩踩踩');
INSERT INTO `ml_course` VALUES (63, 'ceshi', '课程介绍', '湖南理工学院', '测试', '教育', 6, '2021-05-07 15:33:44', 2, 'F:/2021fileUpload/video/20210507153344_bandicam 2021-04-09 19-01-50-879.mp4', 'http://172.20.10.8:9898/images/cover/20210507153347.jpg', 'http://172.20.10.8:9898/images/video/20210507153344_bandicam 2021-04-09 19-01-50-879.mp4', 8, NULL, 0, '放大放大方法');
INSERT INTO `ml_course` VALUES (64, '316的故事', '这是一个神秘的课程...', '未设置', '无名', '工学', 6, '2021-05-07 15:37:45', 2, 'F:/2021fileUpload/video/20210507153745_316的故事.mp4', 'http://172.20.10.8:9898/images/cover/20210507153745.jpg', 'http://172.20.10.8:9898/images/video/20210507153745_316的故事.mp4', 3, NULL, 0, '111111111');
INSERT INTO `ml_course` VALUES (65, 'liQing', '这是一个神秘的课程...', '未设置', '又名', '文学', 6, '2021-05-07 15:37:45', 2, 'F:/2021fileUpload/video/20210507153745_liQing.mp4', 'http://172.20.10.8:9898/images/cover/20210507153745.jpg', 'http://172.20.10.8:9898/images/video/20210507153745_liQing.mp4', 10, NULL, 0, '零七');
INSERT INTO `ml_course` VALUES (66, '大数据云计算', '此课程讲述的是大数据智能应用', '湖南理工学院', '吴名教授', '工学', 6, '2021-05-13 21:47:53', 0, 'F:/2021fileUpload/video/20210513214753_bandicam 2021-04-17 14-02-57-553.mp4', 'http://172.20.10.8:9898/images/cover/20210513214756.jpg', 'http://172.20.10.8:9898/images/video/20210513214753_bandicam 2021-04-17 14-02-57-553.mp4', 0, NULL, 0, NULL);
INSERT INTO `ml_course` VALUES (67, '316的故事', '这是一个神秘的课程...', '未设置', '无名', '工学', 6, '2021-05-13 21:50:16', 0, 'F:/2021fileUpload/video/20210513215016_316的故事.mp4', 'http://172.20.10.8:9898/images/cover/20210513215016.jpg', 'http://172.20.10.8:9898/images/video/20210513215016_316的故事.mp4', 0, NULL, 0, NULL);
INSERT INTO `ml_course` VALUES (68, '文艺复兴-阿尔伯蒂', '这是一个神秘的课程...', '未设置', '无名', '工学', 6, '2021-05-13 21:50:17', 1, 'F:/2021fileUpload/video/20210513215017_文艺复兴-阿尔伯蒂.pdf', 'http://172.20.10.8:9898/images/cover/file.png', 'http://172.20.10.8:9898/images/video/20210513215017_文艺复兴-阿尔伯蒂.pdf', 3, NULL, 0, '');
INSERT INTO `ml_course` VALUES (69, '测试课程', '好课程', '湖南理工', '0', '工学', 3, '2021-05-29 01:34:46', 1, 'F:/2021fileUpload/video/20210529013446_bandicam 2021-04-09 19-01-50-879.mp4', 'http://172.20.10.8:9898/images/cover/20210529013448.jpg', 'http://172.20.10.8:9898/images/video/20210529013446_bandicam 2021-04-09 19-01-50-879.mp4', 3, NULL, 1, '');
INSERT INTO `ml_course` VALUES (70, '123', 'aaa', 'dddd', '111', '工学', 3, '2021-05-29 08:42:56', 0, 'F:/2021fileUpload/video/20210529084256_bandicam 2021-04-02 18-55-00-958.mp4', 'http://172.20.10.8:9898/images/cover/20210529084258.jpg', 'http://172.20.10.8:9898/images/video/20210529084256_bandicam 2021-04-02 18-55-00-958.mp4', 0, NULL, 0, NULL);

-- ----------------------------
-- Table structure for ml_course_train
-- ----------------------------
DROP TABLE IF EXISTS `ml_course_train`;
CREATE TABLE `ml_course_train`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `course_id` int(20) DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `selection` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `del` int(10) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ml_course_train
-- ----------------------------
INSERT INTO `ml_course_train` VALUES (1, 41, '单选题', '下列哪一个你看着好看？', '1,2,3,4', 'A', NULL, 1);
INSERT INTO `ml_course_train` VALUES (2, 41, '单选题', '下面那个是正确答案呢？', '4,5,6,7', 'C', NULL, 1);
INSERT INTO `ml_course_train` VALUES (3, 41, '单选题', '下列选项中哪一个表述是正确的？', '中国的最基本国情是我国仍处于并将长期处于社会主义初级阶段,毛泽东指出：“认清中国社会的性质，就是说，认清中国的国情”,所谓初级阶段，就是不发达阶段,分清有利和不利因素，是为了国家的发展，扬长避短', 'B', NULL, 0);
INSERT INTO `ml_course_train` VALUES (4, 41, '单选题', '胡适提出“国语的文学，文学的国语”这-主张的文章是？', '《文学改良刍议》,《历史的文学观念论》,《易卜生主义》,《建设的文学革命论》', 'A', NULL, 0);
INSERT INTO `ml_course_train` VALUES (5, 41, '单选题', '以针砭时弊、文风幽默泼辣著称的新文学社团是', '南国社,语丝社,弥洒社,浅草一沉钟社', 'D', NULL, 0);
INSERT INTO `ml_course_train` VALUES (6, 51, '单选题', '下列选项中哪一个表述是正确的？', '中国的最基本国情是我国仍处于并将长期处于社会主义初级阶段,毛泽东指出：“认清中国社会的性质，就是说，认清中国的国情”,所谓初级阶段，就是不发达阶段,分清有利和不利因素，是为了国家的发展，扬长避短', 'B', NULL, 0);
INSERT INTO `ml_course_train` VALUES (7, 51, '单选题', '胡适提出“国语的文学，文学的国语”这-主张的文章是？', '《文学改良刍议》,《历史的文学观念论》,《易卜生主义》,《建设的文学革命论》', 'A', NULL, 0);
INSERT INTO `ml_course_train` VALUES (8, 51, '单选题', '以针砭时弊、文风幽默泼辣著称的新文学社团是', '南国社,语丝社,弥洒社,浅草一沉钟社', 'D', NULL, 0);
INSERT INTO `ml_course_train` VALUES (9, 63, '单选题', '123', '1,2,3,4', 'A', NULL, 0);
INSERT INTO `ml_course_train` VALUES (10, 68, '单选题', 'huge', '1111,52222,5555,88888', 'B', NULL, 0);
INSERT INTO `ml_course_train` VALUES (11, 57, '单选题', '杰里·布罗顿在其《文艺复兴简史》中发现：19世纪的西方学者眼中的文艺复兴，与20世纪西方学者眼中的文艺复兴，形象大相径庭。前者喜欢颂扬文艺复兴的辉煌，后者则热衷于揭示文艺复兴的黑暗。出现这一现象的主要原因是', '学术竞争导致观点分歧,后人对前人的不断超越,文艺复兴运动的两面性,时代变迁影响研究结论', 'D', NULL, 0);
INSERT INTO `ml_course_train` VALUES (12, 57, '单选题', '“到18世纪后半期，欧洲的知识精英大多已对基督教持怀疑态度，此情况在法国尤其突出。极富幻想天分的法国人还自然地由自然界联想到人类社会。既然自然界有一个统一的规律，那么人类社会也决不会例外。”基于这样的认识，法国思想家', '提出“美德即知识”的思想,借助古希腊罗马文化宣扬人文主义,认为灵魂得救只须靠个人虔诚信仰,批判封建专制制度和愚昧', 'D', NULL, 0);
INSERT INTO `ml_course_train` VALUES (13, 57, '单选题', '16世纪以前，英国人认为拉丁语是有教养的标志。17世纪时，拉丁语被认为与罗马教廷有关，所以是“兽”的语言，在有关文学创作、科学研究、历史与道德的讨论中本国语言日益盛行，各领域都取得了突出的成就。这表明当时英国', '宗教秩序与世俗秩序实现了分离 ,民族国家意识得到加强,否定封建专制王权成为社会共识    ,追求理性成为时代潮流', 'B', NULL, 0);
INSERT INTO `ml_course_train` VALUES (14, 54, '单选题', '“人是一件多么了不起的杰作！在理性上多么高贵！在才能上多么无限！多么文雅的举动！在行为上多么像一个人使！在智慧上多么一个天神！宇宙的精华！万物的灵长！”这段话', '深受牛顿经典力学的影响,出自“人曲”并讴歌了人性,体现了人文主义的诉求,是对理性思想的猛烈批判', 'C', NULL, 0);
INSERT INTO `ml_course_train` VALUES (15, 54, '单选题', '文艺复兴时期，马洛笔下的浮士德是在魔鬼的引导下，享受了24年纵情声色的世俗生活，最后把灵魂交给了魔鬼。而在启蒙运动时期，歌德笔下的浮士德却是把灵魂抵押给魔鬼，利用魔鬼的力量体验人生的欢乐与悲伤，被上帝拯救，灵魂归于上帝。可见', '启蒙运动更强调个人力量,启蒙运动彻底改变了人文主义精神,启蒙运动时期宗教性更强,两个浮士德都处于中世纪的蒙昧中', 'A', NULL, 0);
INSERT INTO `ml_course_train` VALUES (16, 53, '单选题', '某学者指出：“文艺复兴与宗教改革两者反天主教会腐败、特权的主要目标虽基本一致，但内涵与影响有另别。两者互有促进，有先后之序。”下列关于二者相似之处的说法正确的是', '使人们摆脱了基督教神学思想的束缚,没收了天主教会的财产，打击了封建势力,为西欧资本主义的发展初步解除了精神枷锁,集中于社会上层领域', 'C', NULL, 0);
INSERT INTO `ml_course_train` VALUES (17, 53, '单选题', '有人谈到欣赏《蒙娜丽莎》的观感曾有这样的感受，认为蒙娜丽莎“薄情冷淡而又引人动情，美丽动人而又有点不可接近”。对此理解正确的是', '绘画所表现的是对宗教题材的“人”的歌颂,是激进的资产阶级人文主义政治观的反映,刻画了现实生活中劳动人民的少妇的美丽,表现了人文主义学者对艺术欣赏的新情趣', 'D', NULL, 0);
INSERT INTO `ml_course_train` VALUES (18, 58, '单选题', '从器件角度看，计算机经历了五代变化。但从系统结构看，至今绝大多数计算机仍属于（  ）计算机。', '并行  ,冯·诺依曼 ,智能 ,串行', 'B', NULL, 0);
INSERT INTO `ml_course_train` VALUES (19, 58, '单选题', 'CPU中跟踪指令后继地址的寄存器是（ ）。', '地址寄存器,指令计数器,程序计数器  ,指令寄存器', 'C', NULL, 0);
INSERT INTO `ml_course_train` VALUES (20, 58, '单选题', ' 单级中断系统中，CPU一旦响应中断，立即关闭（ C ）标志，以防止本次中断服务结束前同级的其他中断源产生另一次中断进行干扰。', '中断允许  ,中断请求,中断屏蔽,DMA请求', 'C', NULL, 0);
INSERT INTO `ml_course_train` VALUES (21, 70, '单选题', '111', '22222,2222,222,222', 'B', NULL, 0);

-- ----------------------------
-- Table structure for ml_my_course
-- ----------------------------
DROP TABLE IF EXISTS `ml_my_course`;
CREATE TABLE `ml_my_course`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(20) DEFAULT NULL,
  `course_id` int(20) DEFAULT NULL,
  `start_time` datetime(0) DEFAULT NULL,
  `memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `del` int(10) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ml_my_course
-- ----------------------------
INSERT INTO `ml_my_course` VALUES (10, 3, 51, '2021-05-04 22:20:51', '2021-05-04', 1);
INSERT INTO `ml_my_course` VALUES (11, 3, 55, '2021-05-04 22:31:24', '2021-05-04', 1);
INSERT INTO `ml_my_course` VALUES (12, 3, 54, '2021-05-05 22:21:54', '2021-05-05', 1);
INSERT INTO `ml_my_course` VALUES (13, 5, 51, '2021-05-05 01:01:24', '2021-05-05', 0);
INSERT INTO `ml_my_course` VALUES (14, 3, 58, '2021-05-06 15:40:38', '2021-05-06', 1);
INSERT INTO `ml_my_course` VALUES (15, 3, 57, '2021-05-07 17:01:15', '2021-05-07', 1);
INSERT INTO `ml_my_course` VALUES (16, 3, 63, '2021-05-08 16:22:04', '2021-05-08', 1);
INSERT INTO `ml_my_course` VALUES (17, 3, 43, '2021-05-09 17:01:07', '2021-05-09', 1);
INSERT INTO `ml_my_course` VALUES (18, 3, 34, '2021-05-09 22:52:04', '2021-05-09', 1);
INSERT INTO `ml_my_course` VALUES (19, 3, 34, '2021-05-09 22:55:04', '2021-05-09', 1);
INSERT INTO `ml_my_course` VALUES (20, 3, 34, '2021-05-09 23:17:18', '2021-05-09', 1);
INSERT INTO `ml_my_course` VALUES (21, 3, 34, '2021-05-10 23:17:37', '2021-05-10', 1);
INSERT INTO `ml_my_course` VALUES (22, 3, 57, '2021-05-10 23:18:11', '2021-05-10', 1);
INSERT INTO `ml_my_course` VALUES (24, 3, 53, '2021-05-11 00:01:20', '2021-05-11', 1);
INSERT INTO `ml_my_course` VALUES (25, 3, 54, '2021-05-11 15:35:58', '2021-05-11', 1);
INSERT INTO `ml_my_course` VALUES (26, 3, 51, '2021-05-11 15:36:05', '2021-05-11', 1);
INSERT INTO `ml_my_course` VALUES (27, 3, 57, '2021-05-11 15:36:10', '2021-05-11', 1);
INSERT INTO `ml_my_course` VALUES (28, 3, 55, '2021-05-11 15:36:28', '2021-05-11', 1);
INSERT INTO `ml_my_course` VALUES (29, 3, 34, '2021-05-11 15:36:37', '2021-05-11', 1);
INSERT INTO `ml_my_course` VALUES (30, 3, 53, '2021-05-11 15:36:46', '2021-05-11', 1);
INSERT INTO `ml_my_course` VALUES (31, 3, 63, '2021-05-11 15:38:19', '2021-05-11', 0);
INSERT INTO `ml_my_course` VALUES (32, 3, 59, '2021-05-11 16:34:09', '2021-05-11', 1);
INSERT INTO `ml_my_course` VALUES (33, 5, 46, '2021-05-28 21:14:21', '2021-05-28', 0);
INSERT INTO `ml_my_course` VALUES (34, 5, 57, '2021-05-28 21:18:57', '2021-05-28', 0);
INSERT INTO `ml_my_course` VALUES (35, 3, 55, '2021-05-29 00:06:47', '2021-05-29', 1);
INSERT INTO `ml_my_course` VALUES (36, 3, 54, '2021-05-29 00:07:29', '2021-05-29', 1);
INSERT INTO `ml_my_course` VALUES (37, 3, 61, '2021-05-29 01:02:44', '2021-05-29', 1);
INSERT INTO `ml_my_course` VALUES (38, 3, 59, '2021-05-29 01:32:08', '2021-05-29', 0);
INSERT INTO `ml_my_course` VALUES (39, 3, 61, '2021-05-29 01:32:21', '2021-05-29', 0);
INSERT INTO `ml_my_course` VALUES (40, 3, 57, '2021-05-29 01:39:49', '2021-05-29', 1);
INSERT INTO `ml_my_course` VALUES (41, 3, 58, '2021-05-29 08:41:13', '2021-05-29', 0);
INSERT INTO `ml_my_course` VALUES (42, 3, 51, '2021-05-29 08:45:16', '2021-05-29', 0);

-- ----------------------------
-- Table structure for ml_note
-- ----------------------------
DROP TABLE IF EXISTS `ml_note`;
CREATE TABLE `ml_note`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `course_id` int(20) DEFAULT NULL,
  `user_id` int(20) DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `note_time` datetime(0) DEFAULT NULL,
  `memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `del` int(10) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ml_note
-- ----------------------------
INSERT INTO `ml_note` VALUES (1, 51, 3, '1.这是第一首笔记', '2021-05-03 03:09:46', NULL, 0);
INSERT INTO `ml_note` VALUES (2, 51, 3, '1.这是第二个笔记\r\n2.这是第桑格笔记\r\n3.你看看我都写了什么呢', '2021-05-03 03:30:27', NULL, 0);
INSERT INTO `ml_note` VALUES (3, 51, 3, '持续践行，必有改变', '2021-05-03 03:48:47', NULL, 1);
INSERT INTO `ml_note` VALUES (4, 57, 3, '1.第一点很重要的是阿尔伯蒂的影响一定要记住，考试要考的！', '2021-05-05 21:13:59', NULL, 0);
INSERT INTO `ml_note` VALUES (5, 57, 3, '2.第二点就是文艺复兴的意思，以及对法国的影响！！！', '2021-05-05 21:14:29', NULL, 0);
INSERT INTO `ml_note` VALUES (6, 51, 3, '帅哥你是谁啊', '2021-05-05 21:15:35', NULL, 1);
INSERT INTO `ml_note` VALUES (7, 51, 3, '0000', '2021-05-05 21:49:25', NULL, 1);
INSERT INTO `ml_note` VALUES (8, 51, 3, '0101', '2021-05-05 21:49:33', NULL, 1);
INSERT INTO `ml_note` VALUES (9, 51, 2, '1111', '2021-05-06 00:30:36', NULL, 0);
INSERT INTO `ml_note` VALUES (10, 51, 1, '777', '2021-05-06 00:50:15', NULL, 0);
INSERT INTO `ml_note` VALUES (11, 51, 3, '😂😁😂😊ξ( ✿＞◡❛)', '2021-05-06 03:51:48', NULL, 0);
INSERT INTO `ml_note` VALUES (12, 51, 3, '测试一下', '2021-05-07 14:41:48', NULL, 0);
INSERT INTO `ml_note` VALUES (13, 51, 3, '1.11112222', '2021-05-07 15:28:27', NULL, 1);
INSERT INTO `ml_note` VALUES (14, 51, 3, '0101', '2021-05-10 15:01:31', NULL, 1);
INSERT INTO `ml_note` VALUES (15, 54, 3, '嘿嘿嘿😈', '2021-05-11 15:34:13', NULL, 0);
INSERT INTO `ml_note` VALUES (16, 46, 5, '胡歌看我演示', '2021-05-28 21:15:12', NULL, 1);
INSERT INTO `ml_note` VALUES (17, 46, 5, '胡歌睿智', '2021-05-28 21:16:30', NULL, 0);
INSERT INTO `ml_note` VALUES (18, 54, 3, '文艺复兴（Renaissance）是指发生在14世纪到16世纪的一场反映新兴资产阶级要求的欧洲思想文化运动', '2021-05-29 00:54:27', NULL, 0);
INSERT INTO `ml_note` VALUES (19, 58, 3, '计算机：数字电子计算机\r\n\r\n组成：计算机硬件系统的逻辑实现\r\n\r\n原理：不以具体机型为依托的，基本实现原理。\r\n\r\n计算机组成原理：掌握如何实现的具体细节。', '2021-05-29 01:10:19', NULL, 0);
INSERT INTO `ml_note` VALUES (20, 58, 3, '计算机系统结构定义了系统软硬件的交界面，定义了哪些功能由软件实现，哪些功能由硬件实现，定义为==程序员所见到的计算机系统的属性概念性的结构与功能特性==。（指令系统，数据类型，寻址技术，I/O机理），即程序员需要理解的东西。', '2021-05-29 01:10:48', NULL, 0);
INSERT INTO `ml_note` VALUES (21, 58, 5, '计算机结构由五大部件组成：存储器、运算器、控制器、输入设备、输出设备。', '2021-05-29 01:12:05', NULL, 0);
INSERT INTO `ml_note` VALUES (22, 58, 5, '指令和数据由二进制表示，指令由操作码和地址码组成，操作码指明指令要干什么，地址码指明操作数的地址。', '2021-05-29 01:12:14', NULL, 0);
INSERT INTO `ml_note` VALUES (23, 54, 5, '“文艺复兴”的概念在14-16世纪时已被意大利的人文主义作家和学者所使用。当时的人们认为，文艺在希腊、罗马古典时代曾高度繁荣，但在中世纪“黑暗时代”却衰败湮没，直到14世纪后才获得“再生”与“复兴”，因此称为“文艺复兴”。', '2021-05-29 01:13:43', NULL, 0);
INSERT INTO `ml_note` VALUES (24, 54, 5, '文艺复兴最先在意大利各城邦兴起，以后扩展到西欧各国，于16世纪达到顶峰，带来一段科学与艺术革命时期，揭开了近代欧洲历史的序幕，被认为是中古时代和近代的分界。文艺复兴是西欧近代三大思想解放运动（文艺复兴、宗教改革与启蒙运动）之一。', '2021-05-29 01:13:54', NULL, 0);
INSERT INTO `ml_note` VALUES (25, 58, 4, 'MAR是存储器地址寄存器，保存了存储单元的地址和编号，长度反映存储单元的个数。\r\n\r\nMDR是存储器数据寄存器，保存了要存入存储体的数据或刚从存储体拿出来的数据，长度反映存储字长。', '2021-05-29 01:15:54', NULL, 0);
INSERT INTO `ml_note` VALUES (26, 58, 4, '数据寄存器X保存输入参数，ACC为累加寄存器，保存结果，乘法可能使得数据位数保存不下，使用MQ寄存器保存低位。', '2021-05-29 01:16:06', NULL, 0);
INSERT INTO `ml_note` VALUES (27, 54, 4, '人文主义精神，人文主义精神的核心是提出以人为中心而不是以神为中心，肯定人的价值和尊严。', '2021-05-29 01:21:57', NULL, 0);
INSERT INTO `ml_note` VALUES (28, 58, 6, '控制器的功能是解释指令（完成指令）、保证指令的按序执行。', '2021-05-29 01:25:36', NULL, 0);
INSERT INTO `ml_note` VALUES (29, 54, 6, '资本主义萌芽的出现也为这场思想运动的兴起提供了可能。城市经济的繁荣，使事业成功财富巨大的富商、作坊主和银行家等更加相信个人的价值和力量', '2021-05-29 01:26:36', NULL, 0);
INSERT INTO `ml_note` VALUES (30, 58, 3, '11111', '2021-05-29 08:44:28', NULL, 0);

-- ----------------------------
-- Table structure for ml_note_collect
-- ----------------------------
DROP TABLE IF EXISTS `ml_note_collect`;
CREATE TABLE `ml_note_collect`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `note_id` int(20) DEFAULT NULL,
  `user_id` int(20) DEFAULT NULL,
  `collect_time` datetime(0) DEFAULT NULL,
  `memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `del` int(10) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ml_note_collect
-- ----------------------------
INSERT INTO `ml_note_collect` VALUES (1, 1, 3, '2021-05-05 22:23:15', NULL, 1);
INSERT INTO `ml_note_collect` VALUES (2, 2, 3, '2021-05-05 22:23:44', NULL, 1);
INSERT INTO `ml_note_collect` VALUES (3, 3, 2, '2021-05-06 00:13:58', NULL, 0);
INSERT INTO `ml_note_collect` VALUES (4, 4, 3, '2021-05-06 00:35:51', NULL, 0);
INSERT INTO `ml_note_collect` VALUES (8, 9, 3, '2021-05-06 02:42:52', NULL, 1);
INSERT INTO `ml_note_collect` VALUES (13, 2, 3, '2021-05-06 02:54:09', NULL, 1);
INSERT INTO `ml_note_collect` VALUES (14, 9, 3, '2021-05-06 02:54:11', NULL, 1);
INSERT INTO `ml_note_collect` VALUES (15, 1, 3, '2021-05-06 02:54:31', NULL, 1);
INSERT INTO `ml_note_collect` VALUES (16, 10, 3, '2021-05-06 02:55:04', NULL, 1);
INSERT INTO `ml_note_collect` VALUES (17, 2, 3, '2021-05-06 03:33:51', NULL, 1);
INSERT INTO `ml_note_collect` VALUES (18, 11, 3, '2021-05-06 03:52:10', NULL, 1);
INSERT INTO `ml_note_collect` VALUES (19, 11, 3, '2021-05-07 14:42:11', NULL, 1);
INSERT INTO `ml_note_collect` VALUES (20, 1, 3, '2021-05-07 15:29:05', NULL, 1);
INSERT INTO `ml_note_collect` VALUES (21, 2, 3, '2021-05-07 15:29:12', NULL, 1);
INSERT INTO `ml_note_collect` VALUES (22, 1, 3, '2021-05-10 15:01:17', NULL, 1);
INSERT INTO `ml_note_collect` VALUES (23, 9, 3, '2021-05-11 16:17:24', NULL, 0);
INSERT INTO `ml_note_collect` VALUES (24, 10, 3, '2021-05-11 16:17:26', NULL, 0);
INSERT INTO `ml_note_collect` VALUES (25, 1, 3, '2021-05-11 16:44:08', NULL, 1);
INSERT INTO `ml_note_collect` VALUES (26, 2, 3, '2021-05-11 16:44:09', NULL, 1);
INSERT INTO `ml_note_collect` VALUES (27, 3, 3, '2021-05-11 16:44:10', NULL, 1);
INSERT INTO `ml_note_collect` VALUES (28, 19, 5, '2021-05-29 01:11:48', NULL, 0);
INSERT INTO `ml_note_collect` VALUES (29, 20, 5, '2021-05-29 01:11:49', NULL, 0);
INSERT INTO `ml_note_collect` VALUES (30, 27, 6, '2021-05-29 01:26:47', NULL, 0);
INSERT INTO `ml_note_collect` VALUES (31, 23, 3, '2021-05-29 01:40:49', NULL, 0);
INSERT INTO `ml_note_collect` VALUES (32, 27, 3, '2021-05-29 07:52:16', NULL, 1);
INSERT INTO `ml_note_collect` VALUES (33, 26, 3, '2021-05-29 08:44:40', NULL, 0);

-- ----------------------------
-- Table structure for ml_note_good
-- ----------------------------
DROP TABLE IF EXISTS `ml_note_good`;
CREATE TABLE `ml_note_good`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `note_id` int(20) DEFAULT NULL,
  `user_id` int(20) DEFAULT NULL,
  `good_time` datetime(0) DEFAULT NULL,
  `memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `del` int(10) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ml_remark
-- ----------------------------
DROP TABLE IF EXISTS `ml_remark`;
CREATE TABLE `ml_remark`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `course_id` int(20) DEFAULT NULL,
  `user_id` int(20) DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `remark_time` datetime(0) DEFAULT NULL,
  `memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `del` int(10) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ml_remark
-- ----------------------------
INSERT INTO `ml_remark` VALUES (1, 51, 3, '这个课程真心好！！！', '2021-05-06 03:13:03', NULL, 1);
INSERT INTO `ml_remark` VALUES (2, 51, 2, '确实，确实', '2021-05-06 03:15:12', NULL, 0);
INSERT INTO `ml_remark` VALUES (3, 51, 3, '316牛逼！！！', '2021-05-06 03:43:51', NULL, 0);
INSERT INTO `ml_remark` VALUES (4, 51, 3, '太厉害了', '2021-05-06 03:48:21', NULL, 0);
INSERT INTO `ml_remark` VALUES (5, 51, 3, 'ξ( ✿＞◡❛)', '2021-05-06 03:52:38', NULL, 0);
INSERT INTO `ml_remark` VALUES (6, 51, 3, '😓', '2021-05-06 03:54:50', NULL, 1);
INSERT INTO `ml_remark` VALUES (7, 51, 3, '😉', '2021-05-06 03:56:20', NULL, 0);
INSERT INTO `ml_remark` VALUES (8, 51, 3, '777888', '2021-05-06 03:57:16', NULL, 1);
INSERT INTO `ml_remark` VALUES (9, 51, 3, '111', '2021-05-06 03:59:40', NULL, 1);
INSERT INTO `ml_remark` VALUES (10, 51, 3, '444', '2021-05-06 04:01:06', NULL, 1);
INSERT INTO `ml_remark` VALUES (11, 57, 3, '课程不错，小花干得漂亮！', '2021-05-06 16:45:13', NULL, 0);
INSERT INTO `ml_remark` VALUES (12, 58, 3, '👌', '2021-05-06 16:56:10', NULL, 0);
INSERT INTO `ml_remark` VALUES (13, 51, 3, '666666666', '2021-05-06 16:56:33', NULL, 0);
INSERT INTO `ml_remark` VALUES (14, 51, 3, '1111', '2021-05-07 14:42:21', NULL, 0);
INSERT INTO `ml_remark` VALUES (15, 51, 3, '附近', '2021-05-07 15:29:36', NULL, 0);
INSERT INTO `ml_remark` VALUES (16, 46, 5, '66666', '2021-05-28 21:15:44', NULL, 0);
INSERT INTO `ml_remark` VALUES (17, 54, 3, '文艺复兴果然如此👍', '2021-05-29 00:53:50', NULL, 0);
INSERT INTO `ml_remark` VALUES (18, 58, 5, '6666666❀❀❀❀', '2021-05-29 01:12:43', NULL, 0);
INSERT INTO `ml_remark` VALUES (19, 58, 5, '🌼🌼🌼', '2021-05-29 01:12:59', NULL, 0);
INSERT INTO `ml_remark` VALUES (20, 54, 5, '好课程！！！', '2021-05-29 01:14:25', NULL, 0);
INSERT INTO `ml_remark` VALUES (21, 58, 4, '太难了组成原理🆒', '2021-05-29 01:16:58', NULL, 0);
INSERT INTO `ml_remark` VALUES (22, 54, 4, '起飞🛫', '2021-05-29 01:22:12', NULL, 0);
INSERT INTO `ml_remark` VALUES (23, 58, 6, '这个我看不懂。我只会建筑学😀', '2021-05-29 01:26:01', NULL, 0);
INSERT INTO `ml_remark` VALUES (24, 54, 6, '这个是我的强项', '2021-05-29 01:26:57', NULL, 0);
INSERT INTO `ml_remark` VALUES (25, 58, 3, '000', '2021-05-29 08:44:48', NULL, 0);

-- ----------------------------
-- Table structure for ml_test
-- ----------------------------
DROP TABLE IF EXISTS `ml_test`;
CREATE TABLE `ml_test`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ml_test
-- ----------------------------
INSERT INTO `ml_test` VALUES (1, '董政宇', '15674004952');
INSERT INTO `ml_test` VALUES (2, '金添翼', '13341306480');
INSERT INTO `ml_test` VALUES (3, '华仁杰', '15674004952');
INSERT INTO `ml_test` VALUES (4, '丽妈妈', '18751703821');

-- ----------------------------
-- Table structure for ml_user
-- ----------------------------
DROP TABLE IF EXISTS `ml_user`;
CREATE TABLE `ml_user`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `register_time` datetime(0) DEFAULT NULL,
  `motto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `del` int(10) DEFAULT 0,
  `memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role` int(10) DEFAULT 1 COMMENT '0:admin 1:学者用户  2:教师用户  3:申请状态  默认1学者用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ml_user
-- ----------------------------
INSERT INTO `ml_user` VALUES (1, 'admin', '男', 'admin', '123', '2021-04-29 17:08:01', '我摊牌了，我是管理员', 0, NULL, 0);
INSERT INTO `ml_user` VALUES (2, '菠萝吹雪', NULL, '1327293670@qq.com', '123', '2021-04-30 00:01:11', NULL, 0, NULL, 3);
INSERT INTO `ml_user` VALUES (3, '董政宇', '男', '1327293674@qq.com', '123', '2021-04-30 00:04:08', '我就是我，不一样的烟火', 0, NULL, 2);
INSERT INTO `ml_user` VALUES (4, '暗影刺客', NULL, '1327293671@qq.com', '123', '2021-04-30 00:06:14', NULL, 0, NULL, 1);
INSERT INTO `ml_user` VALUES (5, '南国公主', NULL, '1046505087@qq.com', '123', '2021-04-30 00:11:58', NULL, 0, NULL, 2);
INSERT INTO `ml_user` VALUES (6, '华哥', NULL, '530468207@qq.com', '123', '2021-05-03 15:05:32', NULL, 0, NULL, 2);

SET FOREIGN_KEY_CHECKS = 1;

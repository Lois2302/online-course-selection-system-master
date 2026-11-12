/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : online_course_selection_system

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 02/03/2022 09:07:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
                          `admin_id` int(11) NOT NULL AUTO_INCREMENT COMMENT ' 管理员',
                          `admin_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT ' 管理员账号',
                          `admin_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT ' 管理员密码',
                          `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT ' 角色',
                          PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '$2a$04$/b.UX.HUq.oFZnfqcTxzretcYuPeXbH2WyWRZcJKYDBGxSoXpHsZy', 'admin');

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college`  (
                            `college_id` int(11) NOT NULL AUTO_INCREMENT COMMENT ' 学院id',
                            `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT ' 学院名称',
                            PRIMARY KEY (`college_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES (1, '计算机学院');
INSERT INTO `college` VALUES (2, '中药学院');
INSERT INTO `college` VALUES (3, '外国语学院');
INSERT INTO `college` VALUES (4, '健康学院');
INSERT INTO `college` VALUES (5, '物理学院');
INSERT INTO `college` VALUES (6, '艺术学院');
INSERT INTO `college` VALUES (7, '信息学院');
INSERT INTO `college` VALUES (8, '化学学院');

-- ----------------------------
-- Table structure for selectable_course
-- ----------------------------
DROP TABLE IF EXISTS `selectable_course`;
CREATE TABLE `selectable_course`  (
                                      `course_id` int(11) NOT NULL AUTO_INCREMENT COMMENT ' 课程id',
                                      `college_id` int(11) DEFAULT NULL COMMENT ' 学院id',
                                      `course_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT ' 课程名称',
                                      `teacher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT ' 任课老师',
                                      `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT ' 课程类型',
                                      `course_score` int(11) DEFAULT 0 COMMENT ' 课程学分',
                                      `stock` int(11) UNSIGNED DEFAULT 0 COMMENT ' 库存量',
                                      `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT ' 上课地址',
                                      `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT ' 课程描述',
                                      `flag` int(1) DEFAULT 0 COMMENT '是否展示',
                                      PRIMARY KEY (`course_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of selectable_course
-- ----------------------------
INSERT INTO `selectable_course` VALUES (1, 1, '大学生创新创业指导', '张明辉', '创新创业类', 2, 0, '星期三第3-4节{3-14周}', '系统讲解创新创业思维、商业模式设计及创业政策，培养学生创业意识与实践能力', 1);
INSERT INTO `selectable_course` VALUES (2, 4, '人体的奥秘', '李梦', '自然科学类', 2, 27, '星期三第7-8节{3-14周}', '从细胞到系统解析人体结构与功能，揭示生命活动的基本原理与健康奥秘', 1);
INSERT INTO `selectable_course` VALUES (3, 3, '如何学好英语', '王建国', '公共艺术类', 2, 26, '星期三第1-2节{3-14周}', '分享英语听说读写技巧，结合场景化练习提升英语应用能力与学习效率', 1);
INSERT INTO `selectable_course` VALUES (4, 3, '婚恋指导', '刘思雨', '公共艺术类', 2, 34, '星期二第9-10节{3-14周}', '解析婚恋关系中的沟通技巧、情感维护与责任担当，树立健康婚恋观', 1);
INSERT INTO `selectable_course` VALUES (5, 6, '电影的艺术', '陈思远', '限定艺术类', 2, 13, '星期四第9-10节{3-14周}', '从镜头语言、叙事结构到光影美学，剖析电影艺术的创作逻辑与鉴赏方法', 1);
INSERT INTO `selectable_course` VALUES (6, 6, '戏剧欣赏', '赵雅芝', '限定艺术类', 2, 57, '星期一第7-8节{4-15周}', '介绍中外经典戏剧作品，讲解舞台表演、剧本结构与戏剧流派的艺术特色', 1);
INSERT INTO `selectable_course` VALUES (7, 2, '中药理学', '孙建明', '公共艺术类', 2, 48, '星期一第3-4节{3-14周}', '阐释中药的性味归经、配伍规律及药理作用，结合临床案例理解中药应用', 1);
INSERT INTO `selectable_course` VALUES (8, 1, '网页设计', '周雨', '自然科学类', 2, 43, '星期二第1-2节{3-14周}', '学习HTML、CSS及响应式设计，掌握网页布局、交互效果与视觉优化技巧', 1);
INSERT INTO `selectable_course` VALUES (9, 1, '计算机网络导论', '吴浩宇', '人文科学类', 2, 97, '星期四第3-4节{3-14周}', '讲解计算机网络体系结构、TCP/IP协议及网络安全基础，理解网络通信原理', 1);
INSERT INTO `selectable_course` VALUES (10, 8, '化妆品学', '郑佳怡', '公共艺术类', 2, 48, '星期三第7-8节{3-14周}', '解析化妆品原料成分、功效原理及安全规范，学习科学护肤与产品选择方法', 1);
INSERT INTO `selectable_course` VALUES (11, 8, '化学原理', '马轩', '自然科学类', 2, 26, '星期二第9-10节{4-7周}', '从原子结构到化学反应速率，系统讲解化学基本原理及其实验应用', 1);
INSERT INTO `selectable_course` VALUES (12, 1, '大学生计算机基础课程', '冯思远', '公共艺术类', 2, 35, '星期三第3-4节{3-14周}', '介绍计算机硬件、操作系统及办公软件操作，培养计算机基本应用能力', 1);
INSERT INTO `selectable_course` VALUES (13, 7, '人工智能概论', '陈雨', '数学科学类', 2, 38, '星期四第1-2节{1-20周}', '概述AI发展历程、机器学习基础及应用场景，了解人工智能核心技术与伦理', 1);
INSERT INTO `selectable_course` VALUES (14, 6, '音乐鉴赏', '林晓峰', '限定艺术类', 2, 43, '星期一第7-8节{3-14周}', '赏析中外经典音乐作品，讲解乐理知识、曲式结构与不同音乐流派特色', 1);
INSERT INTO `selectable_course` VALUES (15, 5, '牛顿力学解析', '赵宇恒', '自然科学类', 2, 51, '星期二第7-8节{3-5周}', '深入解析牛顿三大定律及万有引力定律，结合实例理解经典力学的应用', 1);
INSERT INTO `selectable_course` VALUES (16, 5, '天文学', '黄梓轩', '自然科学类', 2, 53, '星期六第1-2节{3-10周}', '探索太阳系、恒星与星系的奥秘，介绍天文观测方法与宇宙演化理论', 1);
INSERT INTO `selectable_course` VALUES (17, 8, '药品的解析', '李琪', '公共艺术类', 2, 37, '星期一第3-4节{3-11周}', '解析药品的化学结构、作用机制及临床应用，学习合理用药与安全常识', 1);
INSERT INTO `selectable_course` VALUES (18, 1, '深入JVM', '罗子谦', '数学科学类', 2, 32, '星期四第9-10节{3-14周}', '剖析Java虚拟机内存模型、垃圾回收机制及类加载过程，优化程序性能', 1);
INSERT INTO `selectable_course` VALUES (19, 7, '爬虫原理', '宋桐', '公共艺术类', 2, 30, '星期一第7-8节{3-14周}', '讲解网络爬虫的工作原理、数据解析方法及反爬策略，实践信息抓取技术', 1);
INSERT INTO `selectable_course` VALUES (20, 5, '浮力概述', '杨宇辰', '自然科学类', 2, 39, '星期二第1-2节{4-7周}', '从阿基米德原理到流体力学基础，解析浮力现象及在工程中的应用', 1);
INSERT INTO `selectable_course` VALUES (21, 1, '深入分布式', '吴彤', '公共艺术类', 2, 19, '星期二第3-4节{4-7周}', '讲解分布式系统架构、一致性算法及容错机制，理解大型系统设计思想', 1);
INSERT INTO `selectable_course` VALUES (22, 1, 'Shiro与spring security', '郑博文', '公共艺术类', 2, 11, '星期六第1-2节{3-13周}', '对比学习两大安全框架的认证授权机制，实践Web应用安全防护', 1);
INSERT INTO `selectable_course` VALUES (23, 1, 'zookeeper', '王涵', '公共艺术类', 2, 34, '星期六第9-10节{3-13周}', '讲解ZooKeeper的核心概念、数据模型及分布式协调应用，实践集群管理', 1);
INSERT INTO `selectable_course` VALUES (24, 1, '有趣的python', '刘梦琪', '公共艺术类', 2, 5, '星期六第7-8节{3-13周}', '通过趣味案例学习Python语法与库函数，培养编程思维与实践能力', 1);
INSERT INTO `selectable_course` VALUES (25, 4, '人体系统论', '黄轩', '公共艺术类', 2, 73, '星期一第3-4节{3-13周}', '从整体视角解析人体各大系统的协同运作，探讨健康维护与疾病预防', 1);
INSERT INTO `selectable_course` VALUES (26, 2, '药草认识大全', '孙欣', '自然科学类', 2, 63, '星期四第7-8节{3-13周}', '介绍常见药草的形态特征、药用价值及炮制方法，认识传统中医药文化', 1);
INSERT INTO `selectable_course` VALUES (27, 4, '做一个健康的程序员', '周思远', '程序艺术类', 2, 47, '星期一第1-2节{3-13周}', '针对程序员职业特点，讲解颈椎保护、作息调节与心理疏导的实用方法', 1);
INSERT INTO `selectable_course` VALUES (28, 4, '脱发原理', '林浩宇', '公共艺术类', 2, 60, '星期二第3-4节{3-13周}', '解析脱发的生理机制、影响因素及防治措施，科学指导头发健康管理', 1);
INSERT INTO `selectable_course` VALUES (29, 5, '引力的奥秘', '赵佳', '公共艺术类', 2, 33, '星期六第7-8节{3-13周}', '从牛顿力学到广义相对论，探索引力的本质及对宇宙的影响', 1);
INSERT INTO `selectable_course` VALUES (30, 6, '论乐器', '陈桐', '公共艺术类', 2, 44, '星期三第1-2节{3-13周}', '介绍中西乐器的分类、构造与演奏特点，赏析经典乐器作品的艺术魅力', 1);
INSERT INTO `selectable_course` VALUES (31, 5, '观星学', '吴子轩', '公共艺术类', 2, 7, '星期六第9-10节{3-13周}', '学习星座识别、天文观测工具使用，了解四季星空变化与天文现象', 1);
INSERT INTO `selectable_course` VALUES (33, 1, 'test', '马远', '人文科学类', 3, 13, 'test', '测试课程，用于系统功能验证与调试', -1);
INSERT INTO `selectable_course` VALUES (34, 1, '344444', '刘浩', '人文科学类', 1, 700, 'wqeqwe', '示例课程，用于演示数据录入与展示功能', -1);
INSERT INTO `selectable_course` VALUES (35, 6, 'test35', '张雨晴', '数学科学类', 3, 123, 'qweqweqw', '测试用课程，包含基础数据结构与算法案例', -1);-- ----------------------------
-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
                         `user_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账户',
                         `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户姓名',
                         `user_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户密码',
                         `user_object` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户专业',
                         `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色权限',
                         PRIMARY KEY (`user_account`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('123', 'student1', '$2a$04$/b.UX.HUq.oFZnfqcTxzretcYuPeXbH2WyWRZcJKYDBGxSoXpHsZy', '计算机科学与技术', 'student');
INSERT INTO `user` VALUES ('111', 'student2', '$2a$04$/b.UX.HUq.oFZnfqcTxzretcYuPeXbH2WyWRZcJKYDBGxSoXpHsZy', '行政管理', 'student');
INSERT INTO `user` VALUES ('222', 'student3', '$2a$04$/b.UX.HUq.oFZnfqcTxzretcYuPeXbH2WyWRZcJKYDBGxSoXpHsZy', '临床医学', 'student');

-- ----------------------------
-- Table structure for user_course
-- ----------------------------
DROP TABLE IF EXISTS `user_course`;
CREATE TABLE `user_course`  (
                                `id` int(11) NOT NULL AUTO_INCREMENT COMMENT ' 自增id',
                                `user_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT ' 用户账户',
                                `course_id` int(11) DEFAULT NULL COMMENT ' 课程id',
                                `select_time` datetime(0) DEFAULT NULL COMMENT ' 选择时间',
                                PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_course
-- ----------------------------
INSERT INTO `user_course` VALUES (2, '111', 2, '2020-03-07 11:00:43');
INSERT INTO `user_course` VALUES (3, '222', 2, '2020-03-07 11:00:43');
INSERT INTO `user_course` VALUES (32, '222', 5, '2020-05-15 12:07:13');
INSERT INTO `user_course` VALUES (36, '111', 3, '2020-06-28 22:38:58');
INSERT INTO `user_course` VALUES (38, '222', 3, '2020-06-28 22:49:21');
INSERT INTO `user_course` VALUES (44, '111', 4, '2021-06-10 17:39:54');
INSERT INTO `user_course` VALUES (46, '123', 1, '2021-08-24 10:23:01');
INSERT INTO `user_course` VALUES (47, '123', 2, '2021-08-24 10:23:03');
INSERT INTO `user_course` VALUES (48, '123', 3, '2021-08-24 10:23:05');

SET FOREIGN_KEY_CHECKS = 1;

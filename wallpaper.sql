/*
 Navicat Premium Data Transfer

 Source Server         : wallpaper
 Source Server Type    : MySQL
 Source Server Version : 80024
 Source Host           : yanlinn.com:3306
 Source Schema         : wallpaper

 Target Server Type    : MySQL
 Target Server Version : 80024
 File Encoding         : 65001

 Date: 24/06/2022 19:20:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pixel` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0x0' COMMENT '像素',
  `hot` bigint NOT NULL DEFAULT 0 COMMENT '热度',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '未分类' COMMENT '分类',
  `url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图像链接',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 93 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES (1, '4096x2465', 34, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/cee1b243880411ebb6edd017c2d2eca2.png/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-36c9cefb20c431a4514e567415867e41');
INSERT INTO `images` VALUES (2, '2494x1242', 99, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/c0b418d39a3444e997791a823bc6bea3.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-048fe0c0eef4c8e03c9fe60406170ac3');
INSERT INTO `images` VALUES (3, '3942x3252', 16, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/7ba1dcfe880511ebb6edd017c2d2eca2.png/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-3fec027ac943c0bedfb358d468137f78');
INSERT INTO `images` VALUES (4, '2480x1360', 142, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/739ea290c3344fd99175d634e678f500.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-1f3d9bdba8e2322964164c03a2ca8fe4');
INSERT INTO `images` VALUES (5, '5334x3000', 17, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/7dc38155266d46ca8b7fbab897481e3e.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-5dbe6b3323f622f27d38cd6d963c66e2');
INSERT INTO `images` VALUES (6, '2560x1707', 43, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/9bb3726f2ee34d3d992d6e13bd6ab11e.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-284ebc35c7664d08cd041f5e5860c3d1');
INSERT INTO `images` VALUES (7, '2048x1311', 76, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/058fe486bd784f28875a7a01f68d09de.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-0cc85298714b0c0becf9c01eb707ba3c');
INSERT INTO `images` VALUES (8, '2097x1398', 23, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/160f2f46880b11ebb6edd017c2d2eca2.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-7d5b7dd89681108611b7292df8a7f80f');
INSERT INTO `images` VALUES (9, '2048x1451', 264, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/2dbce38cf08d4aa5931081e907de21c1.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-3c6c5351dc02c918e2f74a65c57fb0f1');
INSERT INTO `images` VALUES (10, '1920x1080', 85, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/53500c9b67e64abd8c59e7a7dce442bc.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-555a61d9f77d5314157648ecc89e61d2');
INSERT INTO `images` VALUES (11, '3840x2160', 26, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/c80f09310aac4559a629116e21d19934.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-d968523a4bc70639cea3735409773bca');
INSERT INTO `images` VALUES (12, '2000x1500', 54, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/505112fe57b746e8a593a0f375e0ea01.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-765592f0f940c68a0e65e2b377cc089d');
INSERT INTO `images` VALUES (13, '4096x2560', 34, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/6c1bc1deb312449195a8c6a802e916c1.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-d0988044b2776b1ef851b01186626da6');
INSERT INTO `images` VALUES (14, '1920x1080', 84, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/ce1f58f903284a7f969661c956a1f154.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-b709d45fdafccb4ca88bc701b1d2af1b');
INSERT INTO `images` VALUES (15, '2245x2240', 15, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/a658367b0b224387b156bf3d4df07ac7.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-0f396dba67a667a5fe10f88c801885f2');
INSERT INTO `images` VALUES (16, '1920x1080', 143, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/2209cb10293e48fcbece68eb7a3f391b.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-f2dcc2ae4041332291bc5e39510ce65a');
INSERT INTO `images` VALUES (17, '1920x1280', 86, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/04d1ba9c09994a3d8194a3873608e097.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-2621f02960cb01b3b93fc5c1d94822b4');
INSERT INTO `images` VALUES (18, '4800x2748', 46, '风景', 'https://cdn2.zzzmh.cn/wallpaper/origin/aa126b96881511ebb6edd017c2d2eca2.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-9f73eb2f2229ac5bc736527352d00d73');
INSERT INTO `images` VALUES (19, '1920x1080', 54, '风景', 'https://cdn2.zzzmh.cn/wallpaper/origin/604caf7f880511ebb6edd017c2d2eca2.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-aef860f68b9c873d1afdf80c5592aadf');
INSERT INTO `images` VALUES (20, '4352x2448', 110, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/25df18fab0464358b05752674dd403c5.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-e50c52702c83785b8f7e7c561a242eb4');
INSERT INTO `images` VALUES (21, '3200x1203', 203, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/93d242d5882211ebb6edd017c2d2eca2.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-be78715a51304b53e310afebc83553f5');
INSERT INTO `images` VALUES (22, '2560x2150', 97, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/689ba40174044e3fb8b1a1519364607f.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-ec095559c39f9a7f190badc7d06da372');
INSERT INTO `images` VALUES (23, '1920x1080', 154, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/2e7f7042fd8e42bda52dc97fd67c6a1a.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-0fa8ac7146ccf2b02104be0bdcb268de');
INSERT INTO `images` VALUES (24, '1920x1200', 84, '风景', 'https://cdn2.zzzmh.cn/wallpaper/origin/27524ac7880511ebb6edd017c2d2eca2.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-2327e1b46dddcd1a86f1c2de1f3edbc5');
INSERT INTO `images` VALUES (25, '5120x1440', 253, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/0f71a6bbac0948b68360f9c33b27afa0.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-36c31c4180c212d3932f9ea56eacaace');
INSERT INTO `images` VALUES (26, '2560x1458', 234, '游戏', 'https://cdn2.zzzmh.cn/wallpaper/origin/cad02a42c44e47bcaed6caf6a0e6344b.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-fe752d1c161b91a8b14972a1841a2a46');
INSERT INTO `images` VALUES (27, '2500x1667', 64, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/b6bda627cafe428794e1740c67b5b2a4.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-eaea97f99c62a4c5dec082258270a8ab');
INSERT INTO `images` VALUES (28, '3833x2270', 59, '风景', 'https://cdn2.zzzmh.cn/wallpaper/origin/0d7d8d691e644989b72ddda5f695aca2.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-b94d7f64a460be61652727cf32dc3faa');
INSERT INTO `images` VALUES (29, '1920x1080', 164, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/2e338c23c47243e0a5d3a91e4154e815.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-d93eeb2f17853b906ebdad88321dc8bd');
INSERT INTO `images` VALUES (30, '3840x2160', 106, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/76a49c8360bf489e9284ce2fd9bc7cea.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-daf0c44517cb30f51f39d0214699ce05');
INSERT INTO `images` VALUES (31, '1920x1080', 96, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/6ec4fef0763c4b8482af29a6cf26fe53.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-d191069b8932b88ed5c1c9e4ada88d85');
INSERT INTO `images` VALUES (32, '2160x1440', 81, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/b80e3be2780a46108fe1be1d82d9ca54.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-e60fc3bca1bedf30f0291f7636565b0f');
INSERT INTO `images` VALUES (33, '1920x1080', 34, '风景', 'https://cdn2.zzzmh.cn/wallpaper/origin/d471d369fbe44d949325cd16b1480335.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-8b1d2d4223a794a4222bb47685b6c97b');
INSERT INTO `images` VALUES (34, '1920x1080', 88, '风景', 'https://cdn2.zzzmh.cn/wallpaper/origin/45663c9f2ce54eb2ae8628efb0c43390.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-47582cc041ae20f078f93831f3dfd0b9');
INSERT INTO `images` VALUES (35, '2200x1800', 91, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/232f7e18c4414322806e298e7107f10d.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-770319f669ef32ab69399f3a48c7fb44');
INSERT INTO `images` VALUES (36, '8049x5000', 113, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/c61b5f458a9d4684864aa3c15c811693.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-7d69f7db89cbfbad275e141989813b32');
INSERT INTO `images` VALUES (37, '2108x1200', 167, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/df48d69c2f3a4fd89c666348ab3454be.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-bfee0038cca6fe55b3da0ceb7664ca33');
INSERT INTO `images` VALUES (38, '3784x2280', 120, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/c7878d982aad4e5485154bed5998b9f4.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-5b2f63c2290ffc323145b391b9812603');
INSERT INTO `images` VALUES (39, '2560x1709', 69, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/080db5fe881a11ebb6edd017c2d2eca2.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-08012016f55a5dba635715ae4c9072b9');
INSERT INTO `images` VALUES (40, '1920x1080', 76, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/517e7fc52b514d86a7c539b0a4220e3d.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-16575c49149b6b2419888d45c2588b2e');
INSERT INTO `images` VALUES (41, '3000x1686', 34, '游戏', 'https://cdn2.zzzmh.cn/wallpaper/origin/a4cff773091c41759b9856070f0633a8.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-8a7539b72208e9a069f8d228f85657ed');
INSERT INTO `images` VALUES (42, '2048x1188', 294, '游戏', 'https://cdn2.zzzmh.cn/wallpaper/origin/4f2aae0db0814f1a991552e157748310.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-e3e4ac4825461f4855f1848bc0b313e0');
INSERT INTO `images` VALUES (43, '3556x2126', 120, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/8249a5f4881211ebb6edd017c2d2eca2.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-d51c25b24121a873ce4b62ba853db71c');
INSERT INTO `images` VALUES (44, '2000x1126', 216, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/7c092a781bbe4b87b8acd19241186072.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-e8ab5bee98dc255e6bc610891be36a51');
INSERT INTO `images` VALUES (45, '3000x1500', 116, '游戏', 'https://cdn2.zzzmh.cn/wallpaper/origin/7b291f4dae2843c1adc263718d22f2ab.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-572e88eac5423e2a27f446a980a2b1e0');
INSERT INTO `images` VALUES (46, '3840x2160', 39, '游戏', 'https://cdn2.zzzmh.cn/wallpaper/origin/d9f4c3cb172a409f9fdaf6b261be3589.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-156e4366fe6767b6914d464b10d15120');
INSERT INTO `images` VALUES (47, '1920x1080', 91, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/bab9141327ca48e39abef6229b79cf9c.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-36cd3b9f7a21b9deb7d2a2183b0c48a9');
INSERT INTO `images` VALUES (48, '1920x1174', 148, '游戏', 'https://cdn2.zzzmh.cn/wallpaper/origin/b4519a62a14a4ad08e8fdb5122eb5fb2.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-0bc4d0cb5885fba13f6807e8ee7c2a6a');
INSERT INTO `images` VALUES (49, '1920x1080', 37, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/9f6fa88c59244261a675a77bce6bf94c.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-b8618deeaba3bf4fab38a282968491ab');
INSERT INTO `images` VALUES (50, '3840x2560', 83, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/1772de51882e11ebb6edd017c2d2eca2.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-9a73d738336d879b3a9307ad17b75dc0');
INSERT INTO `images` VALUES (51, '3000x2000', 92, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/8de14bc134574d5d993d9580eab79be5.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-00f355422e8273b9bc915fa7f6ccabdb');
INSERT INTO `images` VALUES (52, '2800x1609', 101, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/9cd470943f674e6b92f683478f7a07c7.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-de5b9f0d7beff2462528e7ba62c6f831');
INSERT INTO `images` VALUES (53, '1920x1080', 204, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/3d09db45a7734355b33d17cffc0f803c.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-054847fd92b9fb0fbcf2538d491e0510');
INSERT INTO `images` VALUES (54, '3840x2160', 86, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/8dc62718fc1747e5b300e68c3b4f71a7.png/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-19ff6a1bebdc960a1d02af0008a92f12');
INSERT INTO `images` VALUES (55, '3840x2160', 220, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/cc8cd21ec8494b379ebf7649347a30a5.png/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-440459daedc66fde1945f7574455234f');
INSERT INTO `images` VALUES (56, '1942x1200', 173, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/5c7b362d9ba74e8b9b209a658a49d87f.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-8eb59a91e7d5b03fd89f755b850d891c');
INSERT INTO `images` VALUES (57, '5184x3456', 198, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/4d328fcf883011ebb6edd017c2d2eca2.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-ed48d13dab373cfaa7255e6236958373');
INSERT INTO `images` VALUES (58, '2048x1365', 162, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/d53bd544e95141e08fb3cbfe22583591.png/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-3afb6ace49ee3e9139a818ebcffdc674');
INSERT INTO `images` VALUES (59, '3000x2000', 209, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/2e9b1c541e8148da9090648351bd6be0.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-b3095fa5b431a4b33a2adc56cb1fe239');
INSERT INTO `images` VALUES (60, '2560x1440', 72, '游戏', 'https://cdn2.zzzmh.cn/wallpaper/origin/04cef292c8924d58b86ed89abdc9facf.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-377719a12d323801d21f2ac7e20d212d');
INSERT INTO `images` VALUES (61, '1920x1200', 154, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/5b72bcb56a2a4e7f9348e5f39628101c.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-3205cb58b2e304b58ea7162e63476e19');
INSERT INTO `images` VALUES (62, '1920x1148', 216, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/39b965b5d8b14a74a56c1fa4a3079056.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-61a9835ace28866dbd15d9cd0da780a8');
INSERT INTO `images` VALUES (63, '1920x1080', 54, '风景', 'https://cdn2.zzzmh.cn/wallpaper/origin/4669ab4d13b04f9190b47bb72f21c8eb.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-7ac74d1f899bcf8bafb0f35778d97861');
INSERT INTO `images` VALUES (64, '1920x1440', 81, '风景', 'https://cdn2.zzzmh.cn/wallpaper/origin/6c34b76b60f640e9837b3cc94250422d.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-6aef18d716c4919b10f3625a65d74633');
INSERT INTO `images` VALUES (65, '2000x1250', 209, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/18b86b7644014bd4bb1bcd80d7146ca7.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-371b7937693ae796b4f8fd7988809795');
INSERT INTO `images` VALUES (66, '2048x1365', 183, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/10cbf289880711ebb6edd017c2d2eca2.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-62df9512f4828f30b1a3d68831b34d8f');
INSERT INTO `images` VALUES (67, '2560x1707', 218, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/b47f70bf26934286b4eb3ec98a4bc191.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-9854f541f75b123648be051d266e1856');
INSERT INTO `images` VALUES (68, '2480x1395', 78, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/1c3c542ccf5f4ce0ab03e183e429f30b.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-4ee79ed3a5c14c5b020588a409c095da');
INSERT INTO `images` VALUES (69, '2006x1362', 124, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/d3e2487c2f274764b21803d96373da7c.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-1979000d630b8aa166a7d4b293991615');
INSERT INTO `images` VALUES (70, '2048x1580', 197, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/d39d391238304495b23531322733f729.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-b4b42b8933232884900f8606ddadd11e');
INSERT INTO `images` VALUES (71, '2560x1572', 187, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/ce50f113880411ebb6edd017c2d2eca2.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-345430e3257282cab5bc32b92adcf68e');
INSERT INTO `images` VALUES (72, '2000x1333', 75, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/4bfb0eb32c7246eea530df78ed3e7eed.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-13af87c2f76563859fe079c464d502cb');
INSERT INTO `images` VALUES (73, '3000x2000', 164, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/fe54d0da5a884892aa9766a8c83ef5a8.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-85318d808b716f649b5953080fa7eb33');
INSERT INTO `images` VALUES (74, '2560x1707', 143, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/a48a8f168ca04eaeba6a615a92eca55d.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-2b6df9203fa42c459e039067b6c6b9c8');
INSERT INTO `images` VALUES (75, '3000x2000', 203, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/114f093843a8494887475758442caa78.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-508cb453d7c95abd88347e2576623260');
INSERT INTO `images` VALUES (76, '2572x1447', 224, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/ccf8c903f3374e259c8562cecdfd7849.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-8422a4669798230b5327867da6f65caf');
INSERT INTO `images` VALUES (77, '1920x1152', 124, '游戏', 'https://cdn2.zzzmh.cn/wallpaper/origin/964f6b8b8a0e4ce8971c858e97c2cb5f.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-2af6e82410ca7b992075674356c13a81');
INSERT INTO `images` VALUES (78, '5071x3369', 82, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/2fe55140eae149c08b4a89779c34998f.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-3e59f2d31b7d47934ea1c48400504cb0');
INSERT INTO `images` VALUES (79, '2048x1342', 68, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/1213d6649c9d41e0b63716fccbf9eab7.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-9b0443d5c8b0fa60664735f96f19a4bb');
INSERT INTO `images` VALUES (80, '1920x1080', 87, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/87a659c240e84eca9f78fb62abd8f038.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-913f402d242f7be1d42746bbbda62296');
INSERT INTO `images` VALUES (81, '2560x1600', 215, '游戏', 'https://cdn2.zzzmh.cn/wallpaper/origin/6aea25eaf37d4bbd90b06818088d2b57.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-f1c325b07fd7f7bbbae72a4806d99e6d');
INSERT INTO `images` VALUES (82, '2560x1440', 124, '风景', 'https://cdn2.zzzmh.cn/wallpaper/origin/5268d877a2a04864b36b4961ab793f4f.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-9bd9bac3a4cd906373ad0832b21c6b1c');
INSERT INTO `images` VALUES (83, '3840x2160', 34, '游戏', 'https://cdn2.zzzmh.cn/wallpaper/origin/c770f4bef54f44ae8478539b01a47e4f.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-f26c2a6a3f6694135adacb3c50671c7c');
INSERT INTO `images` VALUES (84, '1920x1080', 230, '游戏', 'https://cdn2.zzzmh.cn/wallpaper/origin/1dbc43f4880511ebb6edd017c2d2eca2.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-e0d14bf3f61bdcd6c714bd3596c7cac6');
INSERT INTO `images` VALUES (85, '1920x1080', 24, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/c324fa8a880411ebb6edd017c2d2eca2.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-46fecf5cbf9e232a282cef9c68aa6642');
INSERT INTO `images` VALUES (86, '3840x2160', 43, '游戏', 'https://cdn2.zzzmh.cn/wallpaper/origin/7e207fd3dbf24c1cb30308b5932ced78.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-741e157c62ad9881f971e8f490829eeb');
INSERT INTO `images` VALUES (87, '3840x2160', 24, '游戏', 'https://cdn2.zzzmh.cn/wallpaper/origin/0e0c7f489bbd4d6cab5979432768ed8b.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-30822a6bc40b99f261dbfc276dc7fe56');
INSERT INTO `images` VALUES (88, '2101x1080', 86, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/37e9b69fa22e45d79177249034121945.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-9d55662168a34a514dea52a341c6aefa');
INSERT INTO `images` VALUES (89, '3840x2160', 123, '游戏', 'https://cdn2.zzzmh.cn/wallpaper/origin/a2c1899c19b342818dbcab2db64984bd.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-02bba4749995e9619da4d801e71a7af4');
INSERT INTO `images` VALUES (90, '1920x1080', 67, '游戏', 'https://cdn2.zzzmh.cn/wallpaper/origin/973d32e546614fd99f5b29c129e4ba86.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-ef90d32accc53d80d9a5131e8a192810');
INSERT INTO `images` VALUES (91, '2560x1920', 97, '游戏', 'https://cdn2.zzzmh.cn/wallpaper/origin/aa351e8b20c641d78eed09f287343bcf.png/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-a945ce1e1923fd30740b27f35b320959');
INSERT INTO `images` VALUES (92, '1920x1080', 214, '游戏', 'https://cdn2.zzzmh.cn/wallpaper/origin/60a5cd5c0b7c4603962c839906872e0d.png/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-28177737c052d922258734b72777772c');
INSERT INTO `images` VALUES (93, '2070x1350', 89, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/a6d531f64d6f439dabd9a5a0ee5bd7a6.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-72e9b7a541eb9a7945d1f51610c16a70');
INSERT INTO `images` VALUES (94, '2388x1680', 176, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/5e34438ecd6a4a80a9b76fc31317f2c5.png/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-ad81ef240ffb280f147266f4de9d6d27');
INSERT INTO `images` VALUES (95, '1920x1080', 76, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/25694c0d899e4160a36fd77e8bf4830e.png/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-b8dae90cc5010f7bde9dc7c7e63a3ba4');
INSERT INTO `images` VALUES (96, '4320x1688', 94, '游戏', 'https://cdn2.zzzmh.cn/wallpaper/origin/c6935fc38b7e4c6c8398d252ca5c00a5.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-c4d26bc9c770044f92daa0c5d10c7929');
INSERT INTO `images` VALUES (97, '3500x1750', 211, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/10c70c204a1c4469b27b204f417fc92c.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-c62ae32c6c4212138ca11eb1de30a7ef\"');
INSERT INTO `images` VALUES (98, '3017x1698', 80, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/45e3d78fc0ef4e0883defbe145c3ee02.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-27f306ea8c6e70f59f75912d4e2b1c4b');
INSERT INTO `images` VALUES (99, '1920x1080', 172, '游戏', 'https://cdn2.zzzmh.cn/wallpaper/origin/3fbc51c8882711ebb6edd017c2d2eca2.png/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-0234e28989cdb02ddff341e0e7f29f5f');
INSERT INTO `images` VALUES (100, '5000x3500', 210, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/a33279e2956a420bb68032e38c996bea.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-a4219f4ed32ee193e4efb6a404fa15ca');
INSERT INTO `images` VALUES (101, '5055x3555', 148, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/f43cf6fa883211ebb6edd017c2d2eca2.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-5e3ec7d90c3a81b632e777555939a5d5');
INSERT INTO `images` VALUES (102, '1920x1371', 187, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/01e02a8324af4b69aec222afbdb00395.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-57333f226bafd38e6b914d3507ed49a2');
INSERT INTO `images` VALUES (103, '1920x1080', 95, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/b5192bfa881611ebb6edd017c2d2eca2.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-0b2e74f74ec900e2c36ae5a13b056821');
INSERT INTO `images` VALUES (104, '5120x2880', 128, '游戏', 'https://cdn2.zzzmh.cn/wallpaper/origin/1b75fd654a21443384d9b53aac6b11a5.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-21a07acf1f76b24693fc0b6ff1a880b1');
INSERT INTO `images` VALUES (105, '3936x2480', 137, '游戏', 'https://cdn2.zzzmh.cn/wallpaper/origin/baf6c0d2ac6d46c2abf7d119380dbec0.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-f63923dcaf83fd58e02f5e08ecf41a67');
INSERT INTO `images` VALUES (106, '2048x1365', 80, '游戏', 'https://cdn2.zzzmh.cn/wallpaper/origin/ddbf825676bf4842a1634e0382828f28.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-636da7861e2aeb4d4dfe097baf81f963');
INSERT INTO `images` VALUES (107, '7360x4912', 84, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/a507457733a34d8490a4b6b164fc7bff.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-57047af3cfcbd334b235031c5b298a07');
INSERT INTO `images` VALUES (108, '3150x1969', 34, '风景', 'https://cdn2.zzzmh.cn/wallpaper/origin/3f5e180f881311ebb6edd017c2d2eca2.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-6c5b0a73f16c81f59987545bccd5932d');
INSERT INTO `images` VALUES (109, '4000x2667', 50, '风景', 'https://cdn2.zzzmh.cn/wallpaper/origin/7fef9959882211ebb6edd017c2d2eca2.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-83149ad2eaaa7ebe17a727634ca5b0c9');
INSERT INTO `images` VALUES (110, '3840x2160', 267, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/728c8f520b864eb9a84877ac6a71e0b3.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-52e53da2f2ba24129c59716d23614541');
INSERT INTO `images` VALUES (111, '1920x1080', 173, '游戏', 'https://cdn2.zzzmh.cn/wallpaper/origin/e800fcc3880b11ebb6edd017c2d2eca2.png/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-252d48efeb6da0d1a8658161677d3fe6');
INSERT INTO `images` VALUES (112, '3508x2480', 314, '游戏', 'https://cdn2.zzzmh.cn/wallpaper/origin/3781c41b9cf4474ebd4d91c1fce9e301.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-732c86b2e66d4d62dd92f5c9bb96cbf1');
INSERT INTO `images` VALUES (113, '2560x1440', 214, '二次元', 'https://cdn2.zzzmh.cn/wallpaper/origin/b57fb615d0514814bd92c5d761ccfb93.png/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-9d245ac5a4087337de41be994d21a1a0');
INSERT INTO `images` VALUES (114, '3840x2160', 172, '游戏', 'https://cdn2.zzzmh.cn/wallpaper/origin/dd42acf2458b47a98aed5e1a8d48e076.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-0578b8a35dcefe4fc148e1f6ff1cd101');
INSERT INTO `images` VALUES (115, '2133x1600', 137, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/c0888a82880f11ebb6edd017c2d2eca2.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-d6e50afe6d7aba081dfd1cb3b65ee635');
INSERT INTO `images` VALUES (116, '5120x2880', 213, '游戏', 'https://cdn2.zzzmh.cn/wallpaper/origin/0c05be7d21e748ff9829af6447a0a800.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-66e3873863f3605c3b7a77c8cd51aecc');
INSERT INTO `images` VALUES (117, '2500x1520', 173, '风景', 'https://cdn2.zzzmh.cn/wallpaper/origin/899c1e45d16748f1b42001682e15cf0d.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-4316904237cc6c8abffe00d4c0498c4c');
INSERT INTO `images` VALUES (118, '2048x1366', 90, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/cf1980d8883111ebb6edd017c2d2eca2.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-c6bca4fba4089fce705b477c81f20708');
INSERT INTO `images` VALUES (119, '2048x1149', 173, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/b7b66afee5174dada26cc6106e4f5198.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-98b46e3ddca1baf12bcb992fa98508d1');
INSERT INTO `images` VALUES (120, '7776x5184', 61, '人物', 'https://cdn2.zzzmh.cn/wallpaper/origin/bc0713c6397948b6a66c14391a5e37e9.jpg/thumbs?auth_key=1657814400-cc37c91b87e199ea2afcf149a92ee3b5-0-0ba74f14bab19b1d0c018513932ea78d');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `account` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `password` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `loves` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '[]' COMMENT '喜欢的图片列表',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'wdnmd', '15097296167', '12345678', '[]');
INSERT INTO `user` VALUES (2, 'root', 'root', 'root', '[1,2,7,21,14,38,18,11,89,53,26,83,29]');
INSERT INTO `user` VALUES (3, 'Administrator', 'admin', 'admin', '[,11,82]');

SET FOREIGN_KEY_CHECKS = 1;

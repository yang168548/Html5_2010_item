-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-12-17 21:12:56
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `item-2010`
--

-- --------------------------------------------------------

--
-- 表的结构 `juan`
--

CREATE TABLE `juan` (
  `sid` int(8) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `urls` varchar(3000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `juan`
--

INSERT INTO `juan` (`sid`, `url`, `title`, `price`, `urls`) VALUES
(1, 'https://goods6.juancdn.com/goods/201130/a/a/5fc4e6356c34d275ae7eed0f_800x800.jpg', '秋冬加绒加厚长袖外套', 48.8, 'https://goods6.juancdn.com/goods/201130/a/a/5fc4e6356c34d275ae7eed0f_800x800.jpg,https://goods5.juancdn.com/goods/201130/8/3/5fc4e6b40a214d4c0e0dd639_800x800.jpg,https://goods7.juancdn.com/goods/201130/d/6/5fc4e643b776aa693f23b939_800x800.jpg,https://goods4.juancdn.com/goods/201130/7/d/5fc4e62a597f1d7ded472238_800x800.jpg,https://goods6.juancdn.com/goods/201130/a/a/5fc4e6356c34d275ae7eed0f_800x800.jpg,https://goods5.juancdn.com/goods/201130/9/7/5fc4e6b115ba48490b0dbd1e_800x800.jpg'),
(41, 'https://goods1.juancdn.com/goods/201005/0/6/5f7a8e05b6f8ea2ecc187cd9_800x800.jpg', '金丝绒黑色连衣裙女春长袖显瘦长裙法式方肩裙赫本风内搭小黑', 78, 'https://goods1.juancdn.com/goods/201005/0/6/5f7a8e05b6f8ea2ecc187cd9_800x800.jpg,https://goods2.juancdn.com/goods/201005/2/5/5f7a8e0633b08932225c0e74_800x800.jpg,https://goods1.juancdn.com/goods/201005/0/6/5f7a8e05b6f8ea2ecc187cd9_800x800.jpg,https://goods2.juancdn.com/goods/201005/2/7/5f7a8e0833b089321d7d2f6a_800x800.jpg,https://goods2.juancdn.com/goods/201005/2/e/5f7a8e03b6f8ea2e602d0eea_800x800.jpg,https://goods7.juancdn.com/goods/201005/d/6/5f7a8e01b6f8ea2ecd059857_800x800.jpg'),
(2, 'https://goods5.juancdn.com/goods/201016/8/6/5f88ff7b33b089548e5f08f7_800x800.jpg', '2020秋季新款哈伦裤宽松大码修身高腰直筒小脚休闲长裤Y', 87, 'https://goods5.juancdn.com/goods/201016/8/6/5f88ff7b33b089548e5f08f7_800x800.jpg,https://goods2.juancdn.com/goods/201115/2/e/5fb0da8733b0897180722a29_800x800.jpg,https://goods2.juancdn.com/goods/201016/3/5/5f88ffba33b08953621ea7a3_800x800.jpg,https://goods1.juancdn.com/goods/201016/0/d/5f88ffb7b6f8ea4976319491_800x800.jpg,https://goods4.juancdn.com/goods/201016/6/c/5f88ffb533b089535447cac3_800x800.jpg,https://goods2.juancdn.com/goods/201016/2/e/5f88fe30b6f8ea495959608c_800x800.jpg'),
(3, 'https://b1.beicdn.com/upload/item/2007/17/76551027630000_800x800.jpg', '实拍冬季新款女装千鸟格毛呢外套中长款过膝格子羊毛呢子大衣秋冬', 185, 'https://b1.beicdn.com/upload/item/2007/17/76551027630000_800x800.jpg,https://b1.beicdn.com/upload/item/2007/17/76553376540000_800x800.jpg,https://b1.beicdn.com/upload/item/2007/17/76555605660000_800x800.jpg,https://b1.beicdn.com/upload/item/2007/17/76557690460000_800x800.jpg,https://b1.beicdn.com/upload/item/2007/17/76560775270000_800x800.jpg,https://b1.beicdn.com/upload/item/2007/17/76563407130000_800x800.jpg'),
(4, 'https://goods2.juancdn.com/goods/201102/3/3/5f9fbfea33b0894f1c25db7c_800x800.jpg', '秋冬德绒加厚打底衫2020韩版自带发热半高领长袖衫YB7', 59, 'https://goods2.juancdn.com/goods/201102/3/3/5f9fbfea33b0894f1c25db7c_800x800.jpg,https://goods2.juancdn.com/goods/201102/2/8/5f9fbfe833b0894f10679dfd_800x800.jpg,https://goods1.juancdn.com/goods/201102/0/7/5f9fbfe633b0894f0705f853_800x800.jpg,https://goods4.juancdn.com/goods/201102/7/4/5f9fbfe433b0894f0247f263_800x800.jpg,https://goods2.juancdn.com/goods/201102/2/4/5f9fc0c1b6f8ea6f81177fbc_800x800.jpg,https://goods4.juancdn.com/goods/201102/7/0/5f9fc0be33b089765d610aeb_800x800.jpg'),
(5, 'https://goods6.juancdn.com/goods/201101/b/2/5f9e7e6f33b0896a4f3839f3_800x800.jpg', '欧货外单秋冬棉质女装宽松假两件套头卡通长袖圆领打底衫Y7', 79, 'https://goods6.juancdn.com/goods/201101/b/2/5f9e7e6f33b0896a4f3839f3_800x800.jpg,https://goods6.juancdn.com/goods/201101/b/b/5f9e7e7133b08917b546f166_800x800.jpg,https://goods7.juancdn.com/goods/201101/d/0/5f9e7e7433b0896a67627751_800x800.jpg,https://goods3.juancdn.com/goods/201101/4/4/5f9e7f5533b0896b3e09e8c2_800x800.jpg,https://goods4.juancdn.com/goods/201101/6/4/5f9e7f53b6f8ea01ba0ed953_800x800.jpg,https://goods3.juancdn.com/goods/201101/4/5/5f9e7e6cb6f8ea06fc3b5032_800x800.jpg'),
(6, 'https://goods6.juancdn.com/goods/201021/a/0/5f902eeb33b08961340c4102_800x800.jpg', '时尚潮设计感小众圆领套头短款宽松纯色女卫衣', 139, 'https://goods6.juancdn.com/goods/201021/a/0/5f902eeb33b08961340c4102_800x800.jpg,https://goods1.juancdn.com/goods/201021/1/f/5f902ef833b08961327c1054_800x800.jpg,https://goods3.juancdn.com/goods/201021/5/2/5f902eefb6f8ea64ce3dd5b6_800x800.jpg,https://goods3.juancdn.com/goods/201021/5/a/5f902ef6b6f8ea63ae01eae1_800x800.jpg,https://goods7.juancdn.com/goods/201021/c/3/5f902eedb6f8ea64a1752d46_800x800.jpg,https://goods8.juancdn.com/goods/201021/e/6/5f902eff33b089621b5b0c1f_800x800.jpg'),
(7, 'https://goods5.juancdn.com/goods/201021/9/2/5f9031b8b6f8ea659b10308f_800x800.jpg', '韩版潮设计感小众套头宽松休闲长袖连帽女卫衣', 139, 'https://goods5.juancdn.com/goods/201021/9/2/5f9031b8b6f8ea659b10308f_800x800.jpg,https://goods8.juancdn.com/goods/201028/f/d/5f9962b933b08969b656d611_800x800.jpg,https://goods8.juancdn.com/goods/201021/f/2/5f9031bab6f8ea763d5047e2_800x800.jpg,https://goods2.juancdn.com/goods/201028/2/4/5f99440fb6f8ea7e71480e89_800x800.jpg,https://goods7.juancdn.com/goods/201028/c/e/5f99440db6f8ea7ea16cdf0e_800x800.jpg,https://goods6.juancdn.com/goods/201028/b/2/5f994408b6f8ea7e7f17c737_800x800.jpg'),
(8, 'https://goods5.juancdn.com/goods/201021/9/6/5f903115b6f8ea69c83a7fb8_800x800.jpg', '韩版网红时尚显瘦宽松休闲套头长袖连帽女卫衣', 139, 'https://goods5.juancdn.com/goods/201021/9/6/5f903115b6f8ea69c83a7fb8_800x800.jpg,https://goods6.juancdn.com/goods/201021/b/c/5f903120b6f8ea614771fead_800x800.jpg,https://goods6.juancdn.com/goods/201021/a/7/5f90312233b08960d955035c_800x800.jpg,https://goods2.juancdn.com/goods/201028/2/7/5f99450cb6f8ea7faa486c78_800x800.jpg,https://goods7.juancdn.com/goods/201028/d/8/5f994511b6f8ea7be26b106b_800x800.jpg,https://goods8.juancdn.com/goods/201028/f/0/5f99450f33b089697c1fc40b_800x800.jpg'),
(9, 'https://goods7.juancdn.com/goods/201021/d/4/5f904238b6f8ea6a2119e34a_800x800.jpg', '韩版潮流时尚气质圆领宽松打底衫女长袖T恤', 119, 'https://goods7.juancdn.com/goods/201021/d/4/5f904238b6f8ea6a2119e34a_800x800.jpg,https://goods6.juancdn.com/goods/201028/b/4/5f99479eb6f8ea1ffc13d45d_800x800.jpg,https://goods7.juancdn.com/goods/201028/c/a/5f9947ac33b0896336312b6b_800x800.jpg,https://goods4.juancdn.com/goods/201028/6/1/5f9947a033b0896d8076808c_800x800.jpg,https://goods7.juancdn.com/goods/201021/d/4/5f904238b6f8ea6a2119e34a_800x800.jpg,https://goods6.juancdn.com/goods/201028/b/f/5f9947b533b0896d9626d589_800x800.jpg'),
(10, 'https://goods2.juancdn.com/goods/201022/3/2/5f91ab4233b089649b519b10_800x800.jpg', '时尚性感露肩气质圆领宽松打底衫女长袖T恤', 109, 'https://goods2.juancdn.com/goods/201022/3/2/5f91ab4233b089649b519b10_800x800.jpg,https://goods8.juancdn.com/goods/201022/f/0/5f91ab4133b089248040dbc7_800x800.jpg,https://goods6.juancdn.com/goods/201028/b/f/5f994f77b6f8ea7da33411f8_800x800.jpg,https://goods5.juancdn.com/goods/201028/8/4/5f994f8033b0896e0720900a_800x800.jpg,https://goods6.juancdn.com/goods/201028/b/c/5f994f79b6f8ea7da712ad18_800x800.jpg,https://goods4.juancdn.com/goods/201028/6/f/5f994f83b6f8ea7daa7d7ebb_800x800.jpg'),
(11, 'https://goods8.juancdn.com/goods/201027/e/d/5f983870b6f8ea43142df33d_800x800.jpg', '2020羊圈呢大衣加绒新款显瘦修身毛呢外套女', 89, 'https://goods8.juancdn.com/goods/201027/e/d/5f983870b6f8ea43142df33d_800x800.jpg,https://goods8.juancdn.com/goods/201027/e/c/5f9836bdb6f8ea3ff64b155c_800x800.jpg,https://goods2.juancdn.com/goods/201027/3/3/5f98392e33b08933b47870cf_800x800.jpg,https://goods3.juancdn.com/goods/201027/4/d/5f98392c33b08933b570a442_800x800.jpg,https://goods5.juancdn.com/goods/201027/9/5/5f983929b6f8ea440026aa62_800x800.jpg,https://goods2.juancdn.com/goods/201027/3/0/5f98392733b08965ec626b35_800x800.jpg'),
(12, 'https://goods6.juancdn.com/goods/201014/b/8/5f867155b6f8ea3c6641842e_800x800.jpg', '卫衣女宽松韩版2020冬季款连帽学生套头口袋上衣外穿', 79, 'https://goods6.juancdn.com/goods/201014/b/8/5f867155b6f8ea3c6641842e_800x800.jpg,https://goods8.juancdn.com/goods/201012/e/f/5f8459aab6f8ea640a4fdfce_800x800.jpg,https://goods7.juancdn.com/goods/201012/c/c/5f8459a833b08943941ea230_800x800.jpg,https://goods7.juancdn.com/goods/201012/c/b/5f8459acb6f8ea643716d58a_800x800.jpg,https://goods4.juancdn.com/goods/201012/6/d/5f845a0233b08943b3112a80_800x800.jpg,https://goods8.juancdn.com/goods/201012/e/7/5f84585fb6f8ea639731ee0a_800x800.jpg'),
(13, 'https://goods8.juancdn.com/goods/201205/f/a/5fca63eb0ad4d75e6b1b860c_800x800.jpg', '优品选 特 Y783毛绒上衣chic名媛女优雅新款宽松', 69, 'https://goods8.juancdn.com/goods/201205/f/a/5fca63eb0ad4d75e6b1b860c_800x800.jpg,https://goods8.juancdn.com/goods/201205/e/b/5fca63ed1b81be386d57eba5_800x800.jpg,https://goods8.juancdn.com/goods/201205/f/a/5fca63eb0ad4d75e6b1b860c_800x800.jpg,https://goods1.juancdn.com/goods/201205/0/7/5fca6412175f7133ef3aca96_800x800.jpg,https://goods4.juancdn.com/goods/201205/6/e/5fca6411583175553b078d66_800x800.jpg,https://goods6.juancdn.com/goods/201205/b/d/5fca640f058d5d12ad017fac_800x800.jpg'),
(14, 'https://goods5.juancdn.com/tao/200923/8/d/5f6aa4fcb6f8ea6d4b3207e2_800x800.jpg', '棉服女中长款加厚韩版宽松百搭羽绒棉2020冬季外套女棉袄', 89, 'https://goods5.juancdn.com/tao/200923/8/d/5f6aa4fcb6f8ea6d4b3207e2_800x800.jpg,https://goods7.juancdn.com/tao/200923/d/3/5f6aa4fb33b089797768a5f3_800x800.jpg,https://goods3.juancdn.com/tao/200923/4/1/5f6aa502b6f8ea6d4f5507b3_800x800.jpg,https://goods1.juancdn.com/tao/200923/1/c/5f6aa50633b08979793e1d38_800x800.jpg,https://goods2.juancdn.com/tao/200923/3/8/5f6aa4f933b089796362e6be_800x800.jpg,https://goods5.juancdn.com/tao/200923/8/d/5f6aa4fcb6f8ea6d4b3207e2_800x800.jpg'),
(15, 'https://goods8.juancdn.com/goods/201128/f/d/5fc1c67d33b0897b3477629b_800x800.jpg', '织带拼接圆领中长款上衣直筒小香风气质圆领粗花呢外套女', 238, 'https://goods8.juancdn.com/goods/201128/f/d/5fc1c67d33b0897b3477629b_800x800.jpg,https://goods1.juancdn.com/goods/201128/0/c/5fc1c67fb6f8ea29c66d7d49_800x800.jpg,https://goods8.juancdn.com/goods/201128/e/6/5fc1c681b6f8ea2a032024db_800x800.jpg,https://goods6.juancdn.com/goods/201128/a/7/5fc1c68333b0897c490baebf_800x800.jpg,https://goods8.juancdn.com/goods/201128/f/b/5fc1c68433b0897c552ad66e_800x800.jpg'),
(16, 'https://b1.beicdn.com/upload/item/2008/22/07360641090000_800x800.jpg', '伊诗妃毛衣女宽松中长款显瘦秋冬季不规则外穿百搭洋气针织衫打底衫', 99, 'https://b1.beicdn.com/upload/item/2008/22/07360641090000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/22/07363671610000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/22/07366907280000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/22/07370790310000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/24/40091593910000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/22/07374978180000_800x800.jpg'),
(17, 'https://goods6.juancdn.com/bao/200825/a/d/5f44d4acb6f8ea6af03a4879_800x800.jpg', '伊诗妃百搭毛衣女套装裙两件套秋冬气质减龄显瘦针织套装女连衣裙潮', 99, 'https://goods6.juancdn.com/bao/200825/a/d/5f44d4acb6f8ea6af03a4879_800x800.jpg,https://goods6.juancdn.com/bao/200825/b/1/5f44d4aeb6f8ea6b090cde8a_800x800.jpg,https://goods5.juancdn.com/bao/200825/8/1/5f44d4af33b0896e4f4ae617_800x800.jpg,https://goods6.juancdn.com/bao/200825/b/a/5f44d4b133b0896e53278016_800x800.jpg,https://goods1.juancdn.com/bao/200825/0/a/5f44d4b3b6f8ea6b15639077_800x800.jpg,https://goods4.juancdn.com/bao/200825/7/c/5f44d4b5b6f8ea6b18400e98_800x800.jpg'),
(18, 'https://b1.beicdn.com/upload/item/2010/09/13938421880000_800x800.jpg', '歌艾纶6%羊毛衫女薄款修身针织套头女士毛衣2020新款冬季半高领打底衫', 59.9, 'https://b1.beicdn.com/upload/item/2010/09/13938421880000_800x800.jpg,https://b1.beicdn.com/upload/item/2010/09/13943191160000_800x800.jpg,https://b1.beicdn.com/upload/item/2010/09/13946387300000_800x800.jpg,https://b1.beicdn.com/upload/item/2010/09/13949585950000_800x800.jpg,https://b1.beicdn.com/upload/item/2010/09/13978271780000_800x800.jpg,https://b1.beicdn.com/upload/item/2010/09/13982202430000_800x800.jpg'),
(19, 'https://b1.beicdn.com/upload/item/2008/12/29833576800000_800x800.jpg', '伊诗妃女士毛衣裙中长款打底衫2020年秋冬新款女装洋气内搭针织连衣裙', 109, 'https://b1.beicdn.com/upload/item/2008/12/29833576800000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/12/29836447600000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/12/29845331140000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/12/29848746110000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/12/29851421270000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/12/29855955940000_800x800.jpg'),
(20, 'https://b1.beicdn.com/upload/item/2008/03/39498037070000_800x800.jpg', '村上春/CSSPRING内搭松紧肩带无袖连衣裙气质修身高腰中长款打底a字裙', 59, 'https://b1.beicdn.com/upload/item/2008/03/39498037070000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/03/39502406130000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/03/39506674500000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/03/39510029520000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/03/39515245480000_800x800.jpg'),
(21, 'https://b1.beicdn.com/upload/item/2006/17/94272334700000_800x800.jpg', '2020春夏新款T恤宽松网衫薄款大码蝙蝠袖镂空冰爽丝针织衫', 39.9, 'https://b1.beicdn.com/upload/item/2006/17/94272334700000_800x800.jpg,https://b1.beicdn.com/upload/item/2006/17/94277157820000_800x800.jpg,https://b1.beicdn.com/upload/item/2006/17/95640277270000_800x800.jpg,https://b1.beicdn.com/upload/item/2006/17/95762720270000_800x800.jpg,https://b1.beicdn.com/upload/item/2006/17/95684472670000_800x800.jpg,https://b1.beicdn.com/upload/item/2006/17/95664065290000_800x800.jpg'),
(22, 'https://b1.beicdn.com/upload/item/2005/08/25237507240000_800x800.jpg', '风*笛/Ba*pipe夏季伞裙短裙百搭纯色打底裙子韩版女半身裙剪标62537', 39, 'https://b1.beicdn.com/upload/item/2005/08/25237507240000_800x800.jpg,https://b1.beicdn.com/upload/item/2004/24/05231959120000_800x800.jpg,https://b1.beicdn.com/upload/item/2004/24/05236233190000_800x800.jpg,https://b1.beicdn.com/upload/item/2004/24/05241072690000_800x800.jpg,https://b1.beicdn.com/upload/item/2004/24/05246344330000_800x800.jpg,https://b1.beicdn.com/upload/item/2004/24/05250805960000_800x800.jpg'),
(23, 'https://b1.beicdn.com/upload/item/2004/17/19041936780000_790x790.jpg', '忆苒2018夏季新款品牌女装纯色刺绣小熊打底衫短袖t恤女', 33, 'https://b1.beicdn.com/upload/item/2004/17/19041936780000_790x790.jpg,https://b1.beicdn.com/upload/item/2004/17/19050212140000_790x790.jpg,https://b1.beicdn.com/upload/item/2004/17/19045792840000_790x790.jpg,https://b1.beicdn.com/upload/item/2004/17/19056024020000_790x790.jpg,https://b1.beicdn.com/upload/item/2004/17/19059086320000_697x697.jpg'),
(24, 'https://b1.beicdn.com/upload/item/2008/12/06762313930000_800x800.jpg', '伊诗妃v领针织连衣裙秋装2020年新款女装流行秋冬配大衣的打底蕾丝裙子', 109, 'https://b1.beicdn.com/upload/item/2008/12/06762313930000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/12/08064142020000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/12/08085691670000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/12/08096672890000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/12/08100939790000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/12/08106525820000_800x800.jpg'),
(25, 'https://b1.beicdn.com/upload/item/2006/17/96022181120000_800x800.jpg', '短袖女2020夏季新款韩版冰爽丝T恤女宽松薄款V领蝙蝠袖针织衫上衣女', 49, 'https://b1.beicdn.com/upload/item/2006/17/96022181120000_800x800.jpg,https://b1.beicdn.com/upload/item/2006/17/96031328060000_800x800.jpg,https://b1.beicdn.com/upload/item/2006/17/96039134810000_800x800.jpg,https://b1.beicdn.com/upload/item/2006/17/96044884030000_800x800.jpg,https://b1.beicdn.com/upload/item/2006/17/96048822890000_800x800.jpg,https://b1.beicdn.com/upload/item/2006/17/96054312930000_800x800.jpg'),
(26, 'https://goods7.juancdn.com/bao/200911/c/d/5f5b83f233b08946d914433f_800x800.jpg', '伊诗妃卫衣女连帽秋装韩版套头宽松长袖条纹外穿针织衫上衣', 59, 'https://goods7.juancdn.com/bao/200911/c/d/5f5b83f233b08946d914433f_800x800.jpg,https://goods7.juancdn.com/bao/200911/d/d/5f5b83f433b0892f7f198772_800x800.jpg,https://goods2.juancdn.com/bao/200911/3/3/5f5b83f533b08965bc47e7ac_800x800.jpg,https://goods8.juancdn.com/bao/200911/e/5/5f5b83f733b08929dc065d13_800x800.jpg,https://goods2.juancdn.com/bao/200911/2/e/5f5b83e833b08943fe36cf20_800x800.jpg'),
(27, 'https://b1.beicdn.com/upload/item/2003/28/83133616180000_742x742.jpg', '忆苒2019夏季韩版套装女条纹短袖t恤+阔腿裤时尚两件套装女七分裤女', 69, 'https://b1.beicdn.com/upload/item/2003/28/83133616180000_742x742.jpg,https://b1.beicdn.com/upload/item/2003/28/83136619580000_607x607.jpg,https://b1.beicdn.com/upload/item/2003/28/83139206120000_600x600.jpg,https://b1.beicdn.com/upload/item/2003/28/83143187310000_600x600.jpg,https://b1.beicdn.com/upload/item/2003/28/83145979350000_750x750.jpg'),
(28, 'https://b1.beicdn.com/upload/item/2008/23/66020412690000_800x800.jpg', '伊诗妃长款过膝针织连衣裙女秋冬新款配大衣的打底毛衣裙两件套', 109, 'https://b1.beicdn.com/upload/item/2008/23/66020412690000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/23/66027369720000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/23/66030304500000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/23/66033409730000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/23/66037097740000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/23/66042379050000_800x800.jpg'),
(29, 'https://goods7.juancdn.com/tao/201202/d/2/5fc703faecfe81130f395748_800x800.jpg', '长款面包服棉袄韩版宽松港风潮2020秋冬新', 89.9, 'https://goods7.juancdn.com/tao/201202/d/2/5fc703faecfe81130f395748_800x800.jpg,https://goods7.juancdn.com/tao/201202/d/3/5fc703fa2069df176a773a98_800x800.jpg,https://goods8.juancdn.com/tao/201202/e/1/5fc703fb48fcb97eb4749e27_800x800.jpg,https://goods2.juancdn.com/tao/201202/3/5/5fc703ffbccdbd21a14707c6_800x800.jpg,https://goods3.juancdn.com/tao/201202/4/b/5fc70400ea74b93c027c5822_800x800.jpg,https://goods3.juancdn.com/goods/201202/5/5/5fc70787c30d5c7eaf3660f2_800x800.jpg'),
(30, 'https://b1.beicdn.com/upload/item/2007/23/86725156280000_800x800.jpg', '村上春/CSSPRING女装雪纺长袖衬衫女v领套头休闲职业装百搭衬衫', 99, 'https://b1.beicdn.com/upload/item/2007/23/86725156280000_800x800.jpg,https://b1.beicdn.com/upload/item/2007/23/86726665220000_800x800.jpg,https://b1.beicdn.com/upload/item/2007/23/86729729620000_800x800.jpg,https://b1.beicdn.com/upload/item/2007/23/86732981960000_800x800.jpg,https://b1.beicdn.com/upload/item/2007/23/86735890650000_800x800.jpg'),
(31, 'https://goods8.juancdn.com/goods/201111/e/1/5fabae2a33b08955a174ebcc_800x800.jpg', '秋冬韩版2020新款ins时尚亮面宽松加厚面包服网红长袖', 79.9, 'https://goods8.juancdn.com/goods/201111/e/1/5fabae2a33b08955a174ebcc_800x800.jpg,https://goods4.juancdn.com/tao/201105/7/d/5fa3cc7633b0893cda3f5894_800x800.jpg,https://goods1.juancdn.com/tao/201105/0/6/5fa3cc8133b0893cf65ec2f2_800x800.jpg,https://goods2.juancdn.com/tao/201105/3/8/5fa3cc8333b0893cf530c896_800x800.jpg,https://goods7.juancdn.com/tao/201105/c/6/5fa3cc83b6f8ea71e72edfb4_800x800.jpg,https://goods8.juancdn.com/goods/201111/e/3/5fabae3c33b0892c465e6a08_800x800.jpg'),
(32, 'https://goods3.juancdn.com/goods/191024/5/7/5db0fe9bb6f8ea6e1a6db8fc_800x800.jpg', '羊毛大衣2020秋冬宽松中长款外套1118437132', 59.9, 'https://goods3.juancdn.com/goods/191024/5/7/5db0fe9bb6f8ea6e1a6db8fc_800x800.jpg,https://goods5.juancdn.com/tao/201105/8/9/5fa3cf8133b0893d064cfcab_800x800.jpg,https://goods6.juancdn.com/tao/201105/b/1/5fa3cf8633b0893d3f00c0f3_800x800.jpg,https://goods2.juancdn.com/goods/191024/3/2/5db0feceb6f8ea6e5438b6ab_800x800.jpg,https://goods5.juancdn.com/tao/201105/8/4/5fa3cf9333b0893e035c3a9a_800x800.jpg'),
(33, 'https://b1.beicdn.com/upload/item/2006/17/88618383610000_800x800.jpg', '2020春夏T恤v领蝙蝠袖镂空针织衫上衣慵懒打底衫女上衣', 49.9, 'https://b1.beicdn.com/upload/item/2006/17/88618383610000_800x800.jpg,https://b1.beicdn.com/upload/item/2006/17/88630723690000_800x800.jpg,https://b1.beicdn.com/upload/item/2006/17/88626456920000_800x800.jpg,https://b1.beicdn.com/upload/item/2006/17/88638708540000_800x800.jpg,https://b1.beicdn.com/upload/item/2006/19/69785134780000_739x739.jpg,https://b1.beicdn.com/upload/item/2006/17/88655319600000_738x738.jpg'),
(34, 'https://b1.beicdn.com/upload/item/2007/23/69547265210000_800x800.jpg', '村上春/CSSPRING女装针织衫开衫小香风防晒外套薄款镂空针织衫', 79, 'https://b1.beicdn.com/upload/item/2007/23/69547265210000_800x800.jpg,https://b1.beicdn.com/upload/item/2007/23/69551539280000_800x800.jpg,https://b1.beicdn.com/upload/item/2007/23/69555855610000_800x800.jpg,https://b1.beicdn.com/upload/item/2007/23/69559452670000_800x800.jpg,https://b1.beicdn.com/upload/item/2007/23/69562872820000_800x800.jpg,https://b1.beicdn.com/upload/item/2007/23/69567376700000_800x800.jpg'),
(35, 'https://b1.beicdn.com/upload/item/2012/04/91160664560000_1100x1100.jpg', '顾姿女装秋冬加绒打底连衣裙', 239, 'https://b1.beicdn.com/upload/item/2012/04/91160664560000_1100x1100.jpg,https://b1.beicdn.com/upload/item/2012/04/91163457290000_1100x1100.jpg,https://b1.beicdn.com/upload/item/2012/04/91165696400000_1100x1100.jpg,https://b1.beicdn.com/upload/item/2012/04/91167541360000_1100x1100.jpg,https://b1.beicdn.com/upload/item/2012/04/91170608200000_1100x1100.jpg,https://b1.beicdn.com/upload/item/2012/04/91173423700000_1100x1100.jpg'),
(36, 'https://goods1.juancdn.com/goods/201005/0/c/5f7a978633b0893491419545_800x800.jpg', 'Cloris Meet2020秋冬新品两色居家短裤', 19.9, 'https://goods1.juancdn.com/goods/201005/0/c/5f7a978633b0893491419545_800x800.jpg,https://goods5.juancdn.com/goods/201005/9/b/5f7a978db6f8ea310f38d22a_800x800.jpg,https://goods2.juancdn.com/goods/201005/2/f/5f7a9781b6f8ea310e61b258_800x800.jpg,https://goods6.juancdn.com/goods/201005/b/c/5f7a9778b6f8ea31152aa52a_800x800.jpg,https://goods5.juancdn.com/goods/201005/8/1/5f7a9776b6f8ea310a2a8189_800x800.jpg,https://goods7.juancdn.com/goods/201005/d/c/5f7a976e33b08933ec3d3caa_800x800.jpg'),
(37, 'https://b1.beicdn.com/upload/item/2003/28/99795866790000_790x790.jpg', '忆苒2019春秋新款长袖女港味chic斜领上衣修身一字领长袖T恤女打底衫', 59, 'https://b1.beicdn.com/upload/item/2003/28/99795866790000_790x790.jpg,https://b1.beicdn.com/upload/item/2003/28/99798448270000_718x718.jpg,https://b1.beicdn.com/upload/item/2003/28/99807503690000_790x790.jpg,https://b1.beicdn.com/upload/item/2003/28/99810584550000_790x790.jpg,https://b1.beicdn.com/upload/item/2003/28/99813600910000_713x713.jpg'),
(38, 'https://b1.beicdn.com/upload/item/2006/20/83544367730000_800x800.jpg', '冰爽丝背心女宽松薄款上衣2020年新款夏季坎肩网红百搭外穿无袖t恤', 39, 'https://b1.beicdn.com/upload/item/2006/20/83544367730000_800x800.jpg,https://b1.beicdn.com/upload/item/2006/20/83547363660000_800x800.jpg,https://b1.beicdn.com/upload/item/2006/20/83549927300000_800x800.jpg,https://b1.beicdn.com/upload/item/2006/20/83552267370000_800x800.jpg,https://b1.beicdn.com/upload/item/2006/20/83555130050000_800x800.jpg,https://b1.beicdn.com/upload/item/2006/20/83590312850000_800x800.jpg'),
(39, 'https://b1.beicdn.com/upload/item/2007/02/66502049180000_800x800.jpg', '短袖t恤女中年妈妈夏装2020年新款女士t桖半袖薄款上衣冰爽丝针织', 49, 'https://b1.beicdn.com/upload/item/2007/02/66502049180000_800x800.jpg,https://b1.beicdn.com/upload/item/2007/02/66504687510000_800x800.jpg,https://b1.beicdn.com/upload/item/2007/02/66507481600000_800x800.jpg,https://b1.beicdn.com/upload/item/2007/02/66510148650000_800x800.jpg,https://b1.beicdn.com/upload/item/2007/02/66512439370000_800x800.jpg,https://b1.beicdn.com/upload/item/2007/02/76282202620000_800x800.jpg'),
(40, 'https://b1.beicdn.com/upload/item/2008/04/18948651140000_800x800.jpg', '顾姿女装春秋季连衣裙ZQ1957', 209, 'https://b1.beicdn.com/upload/item/2008/04/18948651140000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/04/18948666810000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/04/18951426230000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/04/18960455800000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/04/18963198340000_800x800.jpg,https://b1.beicdn.com/upload/item/2008/04/18966339230000_800x800.jpg'),
(42, 'https://goods2.juancdn.com/goods/201005/2/2/5f7a65d133b089327145f6ca_800x800.jpg', '2020冬季韩版长袖赫本小黑裙打底连衣裙秋冬款冬裙加厚a', 59.9, 'https://goods2.juancdn.com/goods/201005/2/2/5f7a65d133b089327145f6ca_800x800.jpg,https://goods7.juancdn.com/goods/201005/d/a/5f7a65d4b6f8ea2fdf00cdf7_800x800.jpg,https://goods8.juancdn.com/goods/201005/f/2/5f7a65d2b6f8ea2fd420cb98_800x800.jpg,https://goods3.juancdn.com/goods/201005/4/6/5f7a65d033b08932741d1536_800x800.jpg,https://goods7.juancdn.com/goods/201005/c/b/5f7a65ceb6f8ea2fe11bcfe7_800x800.jpg,https://goods7.juancdn.com/goods/201005/d/6/5f7a662033b08932737b0879_800x800.jpg'),
(43, 'https://goods2.juancdn.com/goods/200929/3/7/5f7349fab6f8ea2f8365b020_800x800.jpg', '御姐范气质炸街针织衫马甲两件套女早秋中长款雪纺碎花连衣裙', 59, 'https://goods2.juancdn.com/goods/200929/3/7/5f7349fab6f8ea2f8365b020_800x800.jpg,https://goods1.juancdn.com/goods/200929/1/1/5f734a02b6f8ea2f8e5e851e_800x800.jpg,https://goods1.juancdn.com/goods/200929/1/7/5f7349fbb6f8ea2f98796fbe_800x800.jpg,https://goods8.juancdn.com/goods/200929/e/b/5f7349f8b6f8ea2f8d4fd9e0_800x800.jpg,https://goods8.juancdn.com/goods/200929/f/6/5f734a04b6f8ea2f947ef75e_800x800.jpg,https://goods2.juancdn.com/goods/200929/3/7/5f7349fab6f8ea2f8365b020_800x800.jpg'),
(44, 'https://goods3.juancdn.com/goods/200914/4/d/5f5f60f8b6f8ea42a34c0ba7_800x800.jpg', '蕾丝披肩针织上衣套装2020年新款女显瘦高腰A字半身裙洋', 59, 'https://goods3.juancdn.com/goods/200914/4/d/5f5f60f8b6f8ea42a34c0ba7_800x800.jpg,https://goods6.juancdn.com/goods/200914/b/c/5f5f60ffb6f8ea68e97ed70d_800x800.jpg,https://goods6.juancdn.com/goods/200914/b/0/5f5f60fdb6f8ea43be316219_800x800.jpg,https://goods5.juancdn.com/goods/200914/8/b/5f5f60fcb6f8ea68ee379dcc_800x800.jpg,https://goods6.juancdn.com/goods/200914/a/6/5f5f60fb33b0896bea1f66cb_800x800.jpg,https://goods8.juancdn.com/goods/200914/f/b/5f5f60f933b0897c0f0de949_800x800.jpg'),
(45, 'https://goods4.juancdn.com/goods/201004/7/c/5f79ed8033b089361c389665_800x800.jpg', '彩虹条纹毛衣女宽松套头复古港味2020年新款慵懒风洋气针', 65, 'https://goods4.juancdn.com/goods/201004/7/c/5f79ed8033b089361c389665_800x800.jpg,https://goods7.juancdn.com/goods/201004/d/8/5f79ed8733b089362d020880_800x800.jpg,https://goods2.juancdn.com/goods/201004/3/e/5f79ed89b6f8ea36da608d53_800x800.jpg,https://goods1.juancdn.com/goods/201004/0/a/5f79ed8333b08936154e8073_800x800.jpg,https://goods3.juancdn.com/goods/201004/5/a/5f79ed82b6f8ea36446cd513_800x800.jpg,https://goods3.juancdn.com/goods/201004/4/0/5f79ed8533b08936340c682f_800x800.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `reg`
--

CREATE TABLE `reg` (
  `id` int(8) NOT NULL,
  `phone` bigint(11) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `reg`
--

INSERT INTO `reg` (`id`, `phone`, `password`, `date`) VALUES
(100001, 1329888888, '123456', '2020-12-16 21:32:24'),
(100002, 13298880011, '7c4a8d09ca3762af61e59520943dc26494f8941b', '2020-12-17 10:56:36'),
(100003, 13233333333, '7c4a8d09ca3762af61e59520943dc26494f8941b', '2020-12-17 11:39:31'),
(100004, 13111111111, '7c4a8d09ca3762af61e59520943dc26494f8941b', '2020-12-17 15:03:42');

--
-- 转储表的索引
--

--
-- 表的索引 `juan`
--
ALTER TABLE `juan`
  ADD PRIMARY KEY (`sid`);

--
-- 表的索引 `reg`
--
ALTER TABLE `reg`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `juan`
--
ALTER TABLE `juan`
  MODIFY `sid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- 使用表AUTO_INCREMENT `reg`
--
ALTER TABLE `reg`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100005;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

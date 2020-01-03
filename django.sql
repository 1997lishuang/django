/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 5.7.25-0ubuntu0.16.04.2 : Database - django
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`django` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `django`;

/*Table structure for table `app_article` */

DROP TABLE IF EXISTS `app_article`;

CREATE TABLE `app_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(70) NOT NULL,
  `excerpt` longtext NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `body` longtext NOT NULL,
  `views` int(10) unsigned NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `modified_time` datetime(6) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `tui_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_article_category_id_7e0b83c8_fk_app_category_id` (`category_id`),
  KEY `app_article_tui_id_f1f6769b_fk_app_tui_id` (`tui_id`),
  KEY `app_article_user_id_b6977a19_fk_auth_user_id` (`user_id`),
  CONSTRAINT `app_article_category_id_7e0b83c8_fk_app_category_id` FOREIGN KEY (`category_id`) REFERENCES `app_category` (`id`),
  CONSTRAINT `app_article_tui_id_f1f6769b_fk_app_tui_id` FOREIGN KEY (`tui_id`) REFERENCES `app_tui` (`id`),
  CONSTRAINT `app_article_user_id_b6977a19_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `app_article` */

insert  into `app_article`(`id`,`title`,`excerpt`,`img`,`body`,`views`,`created_time`,`modified_time`,`category_id`,`tui_id`,`user_id`) values 
(1,'时光岁月','青春时光','article_img/2019/12/13/1.jpg','<p>时光岁月 青春 时光故事</p>',2,'2019-12-13 06:27:34.226589','2019-12-13 06:27:34.226643',1,1,1),
(2,'时光清浅 缘来有你','人生在世，草木一秋。一闪一灭，转瞬之间。你我都轻如云烟，渺如微尘。但就是无数个小小的你我点燃了万家灯火，照亮了整个世界。这人间的生与死，荣与辱，兴与衰，从来都让人无法左右，但我们终不负韶光，不负自己，守着草木，守着云水，演绎着一代又一代的传奇','article_img/2019/12/20/1.jpg','<p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\"><a href=\"http://www.duwenzhang.com/wenzhang/renshengzheli/\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">人生</a>在世，草木一秋。一闪一灭，转瞬之间。你我都轻如云烟，渺如微尘。但就是无数个小小的你我点燃了万家灯火，照亮了整个世界。这人间的生与死，荣与辱，兴与衰，从来都让人无法左右，但我们终不负韶光，不负自己，守着草木，守着云水，演绎着一代又一代的传奇。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\">　　我们一路怀揣着爱，脚踏着万物，一声绝唱，飘然落尘！也许，你我曾是几百年前的一株草，一朵花，一粒尘，经过几世轮回的转换变成了今生的亲人，<a href=\"http://www.duwenzhang.com/huati/pengyou/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">朋友</a>，爱人……也许，我们只是来兑现前世的一场盟约。也许，在百年之后，你我又都化为世间的生灵，守候在天地之间，彼此相望，相顾无言。然而，你我却<a href=\"http://www.duwenzhang.com/huati/xinling/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">心灵</a>相犀，甘为绿叶，守护着这世间一朵花开的时光！</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\">　　这世间，有一种相逢叫做缘份。如若有缘，你我会迎着月，奔着光，在人生的某个岔路口相见，然后又悄悄<a href=\"http://www.duwenzhang.com/huati/libie/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">离别</a>。像一朵洁白似雪的梨花，轻轻被风吹落，好像从未被时光染上任何颜色，永远素雅洁净。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\">　　有些人，在你<a href=\"http://www.duwenzhang.com/huati/shengming/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">生命</a>里，走着走着就散了，走着走着就远了，转身是刹那，离别早已是天涯。有些人，如同在你的世界打马而过，走时如春风拂面，未曾留下一丝一痕。有些人，走时却如惊涛骇浪，让你痛彻心扉，就像长在你心里的一根刺，怎么拨也拨不出来，只留下浅浅淡淡的伤痕，也许，是<a href=\"http://www.duwenzhang.com/huati/sinian/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">思念</a>;也许，是怨念;也许，只是记得……</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\">　　无论什么，我仍心怀感激，或许你我只是在人生的烟雨小巷里，水榭楼亭旁一场花的邂逅，一场流水的情缘。谢谢你，曾经来过我的世界，不惊，不扰！</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\">　　如若有缘，总会有那么一个人，即便跋山涉水，历经千辛万苦，也会向你奔赴而来;如若有缘，总会有那么一个人，即便拨开万千人群，拨开姹紫嫣红，也会站在光阴的廊桥上，没有早一步，没有晚一步，只为在最美的季节里，与你相遇相知，与你在时光的铜镜里勾勒成一个<a href=\"http://www.duwenzhang.com/huati/wanmei/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">完美</a>的圆。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\">　　我幸，今生在最美的时光遇见了你。张爱玲说，因为爱了，所以慈悲。因为懂得，所以<a href=\"http://www.duwenzhang.com/huati/kuanrong/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">宽容</a>。总有那么一个人，即便全世界都不爱你，也会为你低眉，为你垂泪，为你留一盏<a href=\"http://www.duwenzhang.com/huati/wennuan/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">温暖</a>的灯，默默守护在你身旁，在清浅的时光里，陪你看草长莺飞，陪你数散落星辰！</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\">　　因为有缘，你我同住同修，同见同知，相互<a href=\"http://www.duwenzhang.com/huati/yikao/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">依靠</a>，相互取暖。生死契阔，与子成说;执子之手，与子携老。爱，最长情的告白，不是千万句“我爱你”，也不是春花秋月前的山盟海誓，天长地久。而是愿意用其一生的光阴来陪伴你，来<a href=\"http://www.duwenzhang.com/huati/baorong/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">包容</a>你！即便在寡味的日子里，也会用爱去浇灌，用心去呵护，为你种出一朵妖艳之花，㶷烂至极。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\">　　“十年生死两茫茫，不思量，自<a href=\"http://www.duwenzhang.com/huati/nanwang/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">难忘</a>。千里孤坟，无处话凄凉。纵使相逢应不识，尘满面，鬓如霜“。如若今生，你我遇到一个愿意为自己陪伴一生的人，那么，请握紧现在手中的<a href=\"http://www.duwenzhang.com/huati/xingfu/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">幸福</a>，<a href=\"http://www.duwenzhang.com/huati/zhenxi/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">珍惜</a>彼此，别等<a href=\"http://www.duwenzhang.com/huati/shiqu/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">失去</a>，再话凄凉……</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\">　　可惜，世间不是所有的缘份都来得刚刚好，在合适的季节里你我相遇相逢。就如徐志摩遇到林徵因，写下“轻轻的我走了，正如我轻轻的来；我轻轻的招手，作别西天的云彩……”一首再别康桥道出无尽的思念，却因是一场三角之恋，不得不<a href=\"http://www.duwenzhang.com/huati/fangshou/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">放手</a>。还有张爱玲遇见文人汉奸胡兰成，在信里写道：“在你面前我变得很低很低，低到尘埃里。但我的心里是<a href=\"http://www.duwenzhang.com/huati/xihuan/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">喜欢</a>的，从尘埃里开出花来。”</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\">　　多么卑微，往往当一个人遇到一份情缘，再怎么高傲，冷漠。也会变得很低很低，变得温柔而多情。虽然两年后，终究两人还是劳雁纷飞，各奔东西。像天空璀璨的烟花，绽放之后只剩薄凉。也许，他们彼此相遇，只是为了来世间为我们讲述一段<a href=\"http://www.duwenzhang.com/\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">故事</a>，写下一段文字，弹奏一曲琴瑟之音！世间，不是所有的缘份与<a href=\"http://www.duwenzhang.com/huati/ganqing/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">感情</a>都能修得正果，厮守一生。但它们如同投在你心湖的一颗石子，荡起层层微光，即便短暂，仍也波光粼粼，晶莹闪烁！</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\">　　是啊！人生的缘份就是如此奇妙，像一朵浮云与飞鸟的相逢，不期而至。眉间滑过的光阴，犹如那山涧流淌的溪泉，平缓而柔软。而你我，就如同飘飞的枫叶，相遇相逢，徐徐飘落，寂静悠美，直至泥土。如若有缘，此生你我注定会在光阴的渡口相见，如若离散，请在我筑起的幽梦里，互道一声“珍重”！</p><p><br/></p>',200,'2019-12-20 01:03:26.488596','2019-12-20 01:03:26.488657',2,2,2),
(3,'谢谢你来过','徐志摩曾说过：“一生中至少该有一次，为了某个人而忘记了自己，不求结果，不求同行，不求曾经拥有，甚至不求你爱我，只求在我最美的年华里，遇见你。”我不知道自己是何等的幸运能在茫茫人海中与你相遇？我也不知道你的出现是恩赐还是劫？但总归要说声“谢谢你，谢谢你曾来过……”','article_img/2019/12/20/1_zfBFJX0.jpg','<p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\">徐志摩曾说过：“一生中至少该有一次，为了某个人而忘记了自己，不求结果，不求同行，不求曾经<a href=\"http://www.duwenzhang.com/huati/yongyou/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">拥有</a>，甚至不求你爱我，只求在我最美的年华里，遇见你。”我不知道自己是何等的<a href=\"http://www.duwenzhang.com/huati/xingyun/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">幸运</a>能在茫茫人海中与你相遇？我也不知道你的出现是恩赐还是劫？但总归要说声“谢谢你，谢谢你曾来过……”</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\">　　还记得初相识时你那拘谨的样子，话不是很多只是坐在那里听我不停地说着各种不着边际的话。可能因为紧张我也不知道自己想要表达什么？只知道乱七八糟的在说，而你只是静静地听着，偶尔插一两句。想想自己也不知道一个慢热甚至在不熟的人面前不苟言笑的我那天怎么会那么多话？后来才知道那就是你给的莫名的熟悉感和<a href=\"http://www.duwenzhang.com/huati/baorong/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">包容</a>吧！</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\">　　有一句话说：“人的一生会遇到两个人，一个惊艳了时光，一个温柔了岁月。”</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\">　　惊艳了时光的那个人，是<a href=\"http://www.duwenzhang.com/huati/qingchun/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">青春</a><a href=\"http://www.duwenzhang.com/huati/huiyi/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">回忆</a>里最绚烂、最耀眼的存在，不<a href=\"http://www.duwenzhang.com/huati/houhui/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">后悔</a>跟他经历过的<a href=\"http://www.duwenzhang.com/huati/kuaile/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">快乐</a>与<a href=\"http://www.duwenzhang.com/huati/gandong/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">感动</a>，哪怕后来的大风大浪都是他给的，但还是想对他说，有生之年，欣喜相逢。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\">　　你给过我太多的快乐和感动，太多的收获和意外，也有太多的心酸和坎坷。可总归你来过我的<a href=\"http://www.duwenzhang.com/huati/shengming/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">生命</a>，也带给我许多的<a href=\"http://www.duwenzhang.com/huati/meihao/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">美好</a>和小<a href=\"http://www.duwenzhang.com/huati/xingfu/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">幸福</a>。我不知道是怎样的<a href=\"http://www.duwenzhang.com/huati/yuanfen/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">缘分</a>让我们相遇，可我都不想去追究了，因为我<a href=\"http://www.duwenzhang.com/huati/xiangxin/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">相信</a>每一种遇见，都有意义，每一个爱过的人，都有记忆。无论怎样，都是幸运的，因为你带给了我一些特殊的感受，以至于每次回味起来，都觉得<a href=\"http://www.duwenzhang.com/wenzhang/renshengzheli/\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">人生</a>是精彩的。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\">　　我始终还记得那年夏天你为了在我路过的城市见我冒着大雨开车几百公里，只为在车站短短的停留……我也记得在街头只因我看了一眼那各式的冰糖葫芦，你穿越熙攘的人群排队为我拿回最后一个糖葫芦欣喜的样子，不是爱吃甜食的我那晚一口气吃掉了那个糖葫芦，而你看着我憋得满嘴和通红的脸只是宠溺的笑笑……我还记得因为我随口一说自己都没在意的东西而你却把它买回来了，就在有次<a href=\"http://www.duwenzhang.com/huati/libie/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">离别</a>的车站，当我不告而别你知道后发疯的电话、视频和在机场着急的身影，手里还提着我自己也不知道什么时候说过的东西时我就知道你就是那个惊艳了时光也温柔了我曾经岁月的人。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\">　　“路漫漫其修远兮，吾将上下而求索”人生的路坎坎坷坷，舍与得在一念之间，我也曾满怀期待所有的相遇与分别是事出有因或者可以久别重逢。可怎奈，当再次面临抉择时才知道有的相遇只是漫漫人生路上的一个劫，一份缘的未尽而已……</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\">　　谢谢你来过，谢谢你给过我那么多，也谢谢你给我那些惊艳的时光！很<a href=\"http://www.duwenzhang.com/huati/zhizu/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">知足</a>过去有你陪伴的时光，很<a href=\"http://www.duwenzhang.com/huati/huaijiu/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">怀念</a>那些和你一起走过的日子。未来我不知道该怎么取舍，我也不知道以后又会怎样？可无论是什么我都不会后悔认识你了，无论你带给我的是恩赐还是劫难我都不后悔了，至少我感受过你的温柔，拥有过你的怀抱，也和你十指相扣的走过了一段路。所以，以后无论怎样你都是我不经意间想起和<a href=\"http://www.duwenzhang.com/huati/sinian/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">思念</a>的人。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\">　　谢谢你来过！不管你是否真的快乐？不管岁月是否善待你我，也不管能否一直有你带给我的小确幸，还是谢谢你！谢谢你带给我的幸运，谢谢你曾为了我付出了全部的<a href=\"http://www.duwenzhang.com/huati/shijian/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">时间</a>与爱，也谢谢你给我的岁月<a href=\"http://www.duwenzhang.com/huati/pingdan/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">平淡</a>和温情有于……</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\">　　没有太多的修饰，只是很庆幸曾经你也是我的“那个他”。谢谢你来过，谢谢你让我觉得我不会<a href=\"http://www.duwenzhang.com/huati/gudan/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">孤单</a>，谢谢你用漫漫柔情，<a href=\"http://www.duwenzhang.com/huati/wennuan/index1.html\" style=\"color: rgb(51, 51, 51); text-decoration-line: none;\">温暖</a>了我的生命。你给的美好，我会悉数珍藏，用力保护的。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\">　　以后也许三里清风，三里路，步步清风再无你。可也无悔你来过！人生的路你陪我一程，我念你一生………</p><p><br/></p>',999,'2019-12-20 01:06:29.618564','2019-12-20 01:06:29.618623',2,2,3);

/*Table structure for table `app_article_tags` */

DROP TABLE IF EXISTS `app_article_tags`;

CREATE TABLE `app_article_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_article_tags_article_id_tag_id_b90e8da7_uniq` (`article_id`,`tag_id`),
  KEY `app_article_tags_tag_id_6f047cb5_fk_app_tag_id` (`tag_id`),
  CONSTRAINT `app_article_tags_article_id_3564e3a7_fk_app_article_id` FOREIGN KEY (`article_id`) REFERENCES `app_article` (`id`),
  CONSTRAINT `app_article_tags_tag_id_6f047cb5_fk_app_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `app_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `app_article_tags` */

insert  into `app_article_tags`(`id`,`article_id`,`tag_id`) values 
(1,1,1),
(2,3,2);

/*Table structure for table `app_banner` */

DROP TABLE IF EXISTS `app_banner`;

CREATE TABLE `app_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text_info` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL,
  `link_url` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `app_banner` */

/*Table structure for table `app_category` */

DROP TABLE IF EXISTS `app_category`;

CREATE TABLE `app_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `app_category` */

insert  into `app_category`(`id`,`name`,`index`) values 
(1,'青年',1),
(2,'爱情',2);

/*Table structure for table `app_link` */

DROP TABLE IF EXISTS `app_link`;

CREATE TABLE `app_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `linkurl` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `app_link` */

/*Table structure for table `app_tag` */

DROP TABLE IF EXISTS `app_tag`;

CREATE TABLE `app_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `app_tag` */

insert  into `app_tag`(`id`,`name`) values 
(1,'青年'),
(2,'爱情');

/*Table structure for table `app_tui` */

DROP TABLE IF EXISTS `app_tui`;

CREATE TABLE `app_tui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `app_tui` */

insert  into `app_tui`(`id`,`name`) values 
(1,'文学'),
(2,'爱情');

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values 
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',4,'add_permission'),
(6,'Can change permission',4,'change_permission'),
(7,'Can delete permission',4,'delete_permission'),
(8,'Can view permission',4,'view_permission'),
(9,'Can add user',3,'add_user'),
(10,'Can change user',3,'change_user'),
(11,'Can delete user',3,'delete_user'),
(12,'Can view user',3,'view_user'),
(13,'Can add group',2,'add_group'),
(14,'Can change group',2,'change_group'),
(15,'Can delete group',2,'delete_group'),
(16,'Can view group',2,'view_group'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add 轮播图',10,'add_banner'),
(26,'Can change 轮播图',10,'change_banner'),
(27,'Can delete 轮播图',10,'delete_banner'),
(28,'Can view 轮播图',10,'view_banner'),
(29,'Can add 友情链接',11,'add_link'),
(30,'Can change 友情链接',11,'change_link'),
(31,'Can delete 友情链接',11,'delete_link'),
(32,'Can view 友情链接',11,'view_link'),
(33,'Can add 文章',8,'add_article'),
(34,'Can change 文章',8,'change_article'),
(35,'Can delete 文章',8,'delete_article'),
(36,'Can view 文章',8,'view_article'),
(37,'Can add 文章标签',9,'add_tag'),
(38,'Can change 文章标签',9,'change_tag'),
(39,'Can delete 文章标签',9,'delete_tag'),
(40,'Can view 文章标签',9,'view_tag'),
(41,'Can add 推荐位',7,'add_tui'),
(42,'Can change 推荐位',7,'change_tui'),
(43,'Can delete 推荐位',7,'delete_tui'),
(44,'Can view 推荐位',7,'view_tui'),
(45,'Can add 博客分类',12,'add_category'),
(46,'Can change 博客分类',12,'change_category'),
(47,'Can delete 博客分类',12,'delete_category'),
(48,'Can view 博客分类',12,'view_category');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `auth_user` */

insert  into `auth_user`(`id`,`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`) values 
(1,'pbkdf2_sha256$150000$mwUq7Dq3c54d$uYKARsbLXWQj7nSoBCQsRTX9Unen2zEGWIG+REYsnW4=','2019-12-19 09:14:45.151229',1,'admin','','','1320424353@qq.com',1,1,'2019-12-13 02:11:55.640262'),
(2,'pbkdf2_sha256$150000$OyV3tPWIYlMq$un2lrLSuRhN0UXxbVa4FeuZf7L98gjOw48MIN0i6lSs=',NULL,0,'无言','','','',0,1,'2019-12-20 01:03:01.154628'),
(3,'pbkdf2_sha256$150000$Q0Azy5sQze1u$EVhNUX71ZoUmyVfJX/rzEeGQhv2Ss1EUbhzq+iYt7Bs=',NULL,0,'李爽','','','',0,1,'2019-12-20 01:06:19.944303');

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `django_admin_log` */

insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values 
(1,'2019-12-13 06:26:40.078160','1','青年',1,'[{\"added\": {}}]',12,1),
(2,'2019-12-13 06:26:46.243237','1','青年',1,'[{\"added\": {}}]',9,1),
(3,'2019-12-13 06:27:30.452881','1','22',1,'[{\"added\": {}}]',7,1),
(4,'2019-12-13 06:27:34.233450','1','时光岁月',1,'[{\"added\": {}}]',8,1),
(5,'2019-12-20 01:00:29.649205','2','爱情',1,'[{\"added\": {}}]',12,1),
(6,'2019-12-20 01:03:01.334419','2','无言',1,'[{\"added\": {}}]',3,1),
(7,'2019-12-20 01:03:20.926303','2','爱情',1,'[{\"added\": {}}]',7,1),
(8,'2019-12-20 01:03:26.524363','2','时光清浅 缘来有你',1,'[{\"added\": {}}]',8,1),
(9,'2019-12-20 01:05:17.108075','2','爱情',1,'[{\"added\": {}}]',9,1),
(10,'2019-12-20 01:06:20.108783','3','李爽',1,'[{\"added\": {}}]',3,1),
(11,'2019-12-20 01:06:29.694552','3','谢谢你来过',1,'[{\"added\": {}}]',8,1);

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values 
(1,'admin','logentry'),
(8,'app','article'),
(10,'app','banner'),
(12,'app','category'),
(11,'app','link'),
(9,'app','tag'),
(7,'app','tui'),
(2,'auth','group'),
(4,'auth','permission'),
(3,'auth','user'),
(5,'contenttypes','contenttype'),
(6,'sessions','session');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values 
(1,'contenttypes','0001_initial','2019-12-13 02:09:52.075817'),
(2,'auth','0001_initial','2019-12-13 02:09:54.012457'),
(3,'admin','0001_initial','2019-12-13 02:10:00.170304'),
(4,'admin','0002_logentry_remove_auto_add','2019-12-13 02:10:01.258497'),
(5,'admin','0003_logentry_add_action_flag_choices','2019-12-13 02:10:01.313326'),
(6,'contenttypes','0002_remove_content_type_name','2019-12-13 02:10:02.172301'),
(7,'auth','0002_alter_permission_name_max_length','2019-12-13 02:10:02.716800'),
(8,'auth','0003_alter_user_email_max_length','2019-12-13 02:10:03.283736'),
(9,'auth','0004_alter_user_username_opts','2019-12-13 02:10:03.316681'),
(10,'auth','0005_alter_user_last_login_null','2019-12-13 02:10:03.855491'),
(11,'auth','0006_require_contenttypes_0002','2019-12-13 02:10:03.882950'),
(12,'auth','0007_alter_validators_add_error_messages','2019-12-13 02:10:03.916616'),
(13,'auth','0008_alter_user_username_max_length','2019-12-13 02:10:04.541890'),
(14,'auth','0009_alter_user_last_name_max_length','2019-12-13 02:10:05.249895'),
(15,'auth','0010_alter_group_name_max_length','2019-12-13 02:10:06.025253'),
(16,'auth','0011_update_proxy_permissions','2019-12-13 02:10:06.063985'),
(17,'sessions','0001_initial','2019-12-13 02:10:06.446125'),
(18,'app','0001_initial','2019-12-13 02:32:04.157209');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values 
('tjxctc1cdzg3rm0z7x30vs0axwdosjsx','ZjZiODBjMTBlMjk1YmFlNzg0ZGE3ODNlZDVkMzIyYjY3NTcyNWM1ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ2MDJkZjFmNzFjM2EzNjU3ZGIxNGMxMzdmZTc0MjJjZGYzODkxMzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-12-27 02:50:25.702484'),
('zl654iem0d4mdqs1ovyji5eyjg9qpm5l','OTIyZjE4NDBiMmVjMmM4ODFiZDYzNzViMDkyNmQyNzIyMjY0MDFhOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ2MDJkZjFmNzFjM2EzNjU3ZGIxNGMxMzdmZTc0MjJjZGYzODkxMzYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2020-01-02 09:14:45.183531');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

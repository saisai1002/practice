/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : ebcms2_temp

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-08-23 10:02:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ebcms5_bulletin
-- ----------------------------
DROP TABLE IF EXISTS `ebcms5_bulletin`;
CREATE TABLE `ebcms5_bulletin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '节点ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `shorttitle` varchar(255) NOT NULL DEFAULT '' COMMENT '短标题',
  `metatitle` varchar(255) NOT NULL DEFAULT '' COMMENT 'META标题',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图',
  `tpl` varchar(255) NOT NULL DEFAULT '' COMMENT '模板',
  `body` text COMMENT '内容',
  `ext` text COMMENT '扩展内容',
  `ebcms_url` varchar(255) NOT NULL DEFAULT '' COMMENT '外部链接',
  `click` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `color` varchar(255) NOT NULL DEFAULT '' COMMENT '字体颜色',
  `size` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '字号',
  `bold` varchar(255) NOT NULL DEFAULT '' COMMENT '加粗',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='公告表';

-- ----------------------------
-- Records of ebcms5_bulletin
-- ----------------------------
INSERT INTO `ebcms5_bulletin` VALUES ('1', '2016年8月3日0:00-6:00华为企业云服务平台升级通知', '', '', '', '尊敬的华为企业云服务客户：您好！为了让平台为您提供更稳定的服务，我们计划于2016年8月3日0:00-6:00进行平台版本升级，升级期间通过新旧版本的平台管理资源的功能将无法使用（例如：无法进行登录、下单、删除操作等），需通过管理控制台完成的业务（bigdata、devcloud）也将暂时无法使用，其他业务不受影响。提请贵公司知悉，如有操作请提前进行，相关事宜做好安排。给您带来的不便，敬请谅解！如', '', '', '&lt;p&gt;尊敬的华为企业云服务客户：&lt;/p&gt;&lt;p&gt;您好！&lt;/p&gt;&lt;p&gt;为了让平台为您提供更稳定的服务，我们计划于2016年8月3日0:00-6:00进行平台版本升级，升级期间通过新旧版本的平台管理资源的功能将无法使 用（例如：无法进行登录、下单、删除操作等），需通过管理控制台完成的业务（bigdata、devcloud）也将暂时无法使用，其他业务不受影响。&lt;/p&gt;&lt;p&gt;提请贵公司知悉，如有操作请提前进行，相关事宜做好安排。给您带来的不便，敬请谅解！&lt;/p&gt;&lt;p&gt;如有问题，请拨打我们的服务热线:4000-955-988。&lt;/p&gt;&lt;p&gt;感谢您的支持与理解!&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '{\"__config__\":{\"__test__\":\"test\"}}', '', '0', '1471840697', '1471838736', '0', '1', '', '0', '');

-- ----------------------------
-- Table structure for ebcms5_config
-- ----------------------------
DROP TABLE IF EXISTS `ebcms5_config`;
CREATE TABLE `ebcms5_config` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `group` varchar(255) NOT NULL DEFAULT '' COMMENT '分组',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `title` varchar(250) NOT NULL DEFAULT '' COMMENT '标题',
  `name` char(40) NOT NULL DEFAULT '' COMMENT '配置项',
  `value` text COMMENT '配置值',
  `render` varchar(255) NOT NULL DEFAULT '' COMMENT '类型',
  `form` varchar(255) NOT NULL DEFAULT '' COMMENT '表单类型',
  `config` text COMMENT '类型配置',
  `remark` text COMMENT '说明',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `sort` int(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '锁定',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=229 DEFAULT CHARSET=utf8 COMMENT='核心配置表';

-- ----------------------------
-- Records of ebcms5_config
-- ----------------------------
INSERT INTO `ebcms5_config` VALUES ('2', '备份配置', '1', '0', '备份配置', 'backup_db', '', 'string', 'form_textbox', '', '', '1470528673', '0', '99', '1', '1');
INSERT INTO `ebcms5_config` VALUES ('4', '备份配置', '1', '2', '分卷大小', 'part', '2048000', 'number', 'form_numberbox', '', '', '0', '0', '99', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('5', '备份配置', '1', '2', '是否压缩', 'compress', '0', 'bool', 'form_bool', '', '', '0', '0', '99', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('7', '默认分组', '2', '0', '是否启用验证码', 'verify', '1', 'bool', 'form_bool', '', '', '0', '0', '99', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('22', '常规设置', '5', '0', '是否开启友链申请', 'apply_on', '1', 'bool', 'form_bool', '', '', '0', '0', '99', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('23', '常规设置', '5', '0', '是否开启验证码', 'apply_verify', '1', 'bool', 'form_bool', '', '', '0', '0', '99', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('178', 'SEO配置', '8', '0', '网站名称', 'sitename', '易贝内容管理系统', 'string', 'form_textbox', '', '', '1467620254', '1467620197', '250', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('179', 'SEO配置', '8', '0', '关键字', 'keywords', '易贝内容管理系统 内容管理系统 cms ebcms 开源cms', 'string', 'form_textbox', '', '', '1467620240', '1467620240', '240', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('180', 'SEO配置', '8', '0', '网站简介', 'description', '易贝内容管理系统是一套自由的功能灵活的开源的内容管理系统。', 'string', 'form_multitextbox', '', '', '1467620296', '1467620296', '235', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('181', '系统配置', '1', '0', '关闭网站', 'site_closed', '0', 'bool', 'form_bool', '', '', '1467622192', '1467620367', '255', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('182', '系统配置', '1', '0', '关闭原因', 'site_closed_reason', '网站维护中。。。', 'string', 'form_multitextbox', '', '', '1467620412', '1467620412', '99', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('183', 'SEO配置', '2', '0', '标题', 'title', '留言中心', 'string', 'form_textbox', '', '', '1467621540', '1467621540', '99', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('184', 'SEO配置', '2', '0', '关键字', 'keywords', '留言中心', 'string', 'form_textbox', '', '', '1467621553', '1467621553', '99', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('185', 'SEO配置', '2', '0', '简介', 'description', '留言中心', 'string', 'form_multitextbox', '', '', '1467621572', '1467621572', '99', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('186', 'SEO配置', '8', '0', '网站标题', 'title', '易贝内容管理系统|免费的内容管理系统|EBCMS|phpcms', 'string', 'form_textbox', '{\"required\":\"0\",\"readonly\":\"0\",\"disabled\":\"0\",\"maxlength\":\"\",\"minlength\":\"\",\"validtype\":\"\",\"prompt\":\"\"}', '', '1468854767', '1467622421', '245', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('189', '常规配置', '4', '0', '记录点击', 'click_record', '1', 'bool', 'form_bool', '', '', '1467780362', '1467780362', '99', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('194', '收录检测', '4', '0', '关键词', 'baidu_notfound_keyword', '没有找到', 'string', 'form_textbox', '', '没有找到该url的关键词。', '1468463446', '1468463424', '99', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('195', '自定义配置', '9', '0', '百度首页广告代码', 'ad_index', '<script type=\"text/javascript\">\r\n    /*450*400 创建于 2016/7/4*/\r\n    var cpro_id = \"u2694067\";\r\n</script>\r\n<script type=\"text/javascript\" src=\"http://cpro.baidustatic.com/cpro/ui/c.js\"></script>', 'string', 'form_multitextbox', '', '', '1469075917', '1468484288', '9', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('200', '路由配置', '1', '0', 'URL模式', 'url_model', '2', 'number', 'form_radio', '{\"disabled\":\"0\",\"readonly\":\"0\",\"values\":\"\\u666e\\u901a\\u6a21\\u5f0f|0\\r\\n\\u6807\\u51c6\\u6a21\\u5f0f|1\\r\\n\\u9ad8\\u7ea7\\u6a21\\u5f0f|2\"}', '', '1468553128', '1468508400', '99', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('201', '路由配置', '1', '0', '路由配置', 'url_route_rules', '', 'string', 'form_multitextbox', '{\"height\":\"22\",\"width\":\"\",\"maxlength\":\"\",\"minlength\":\"\",\"prompt\":\"\"}', '高级模式下生效', '1468578244', '1468552997', '99', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('212', '默认分组', '2', '0', '是否需要审核', 'status', '0', 'bool', 'form_bool', '', '', '1469160016', '1469160016', '0', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('214', '默认分组', '2', '0', '分页大小', 'pagenum', '10', 'number', 'form_numberbox', '', '', '1469922753', '1469922753', '0', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('217', '基本配置', '12', '0', '是否开启浏览统计', 'tongji_on', '1', 'bool', 'form_bool', null, '', '1470463564', '1470463564', '0', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('218', '系统配置', '1', '0', '备份目录', 'backup_path', './backup', 'string', 'form_textbox', null, '', '1470528942', '1470528704', '0', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('219', '服务配置', '1', '221', '服务ID', 'appid', '', 'string', 'form_textbox', null, '请到http://www.ebcms.com/申请', '1470553058', '1470552864', '0', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('220', '服务配置', '1', '221', '密钥', 'appsecret', '', 'string', 'form_textbox', null, '', '1470553050', '1470552912', '0', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('221', '服务配置', '1', '0', 'server', 'server', '', 'string', 'form_textbox', null, '', '1470553042', '1470553042', '0', '1', '1');
INSERT INTO `ebcms5_config` VALUES ('222', '编辑器', '1', '0', '编辑器配置', 'ueditor', '{\r\n&quot;iframeCssUrl&quot;:&quot;{{get_root()}}/third/bootstrap/css/bootstrap.min.css&quot;,\r\n&quot;initialStyle&quot;:&quot;body{margin:15px;}&quot;\r\n}', 'json', 'form_multitextbox', '{\"required\":\"0\",\"disabled\":\"0\",\"readonly\":\"0\",\"height\":\"5\",\"width\":\"\",\"maxlength\":\"\",\"minlength\":\"\",\"prompt\":\"\"}', '请参考百度编辑器的config.js配置文档', '1471055545', '1471055188', '0', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('224', '系统配置', '1', '0', '主题', 'theme', 'default', 'string', 'form_textbox', null, '', '1471182457', '1471182457', '0', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('226', '系统配置', '1', '0', '开启移动端', 'mobile_on', '1', 'bool', 'form_bool', null, '开启移动端后，手机访问会自动渲染当前模板对应的移动端模板，例如当前模板主题是default，那么会移动端访问会自动选择default_mobile模板', '1471314926', '1471314926', '0', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('227', '编辑器', '1', '0', '编辑器上传配置', 'ueditor_upload', '', 'json', 'form_multitextbox', '{\"required\":\"0\",\"disabled\":\"0\",\"readonly\":\"0\",\"height\":\"10\",\"width\":\"\",\"maxlength\":\"\",\"minlength\":\"\",\"prompt\":\"\"}', '请参考third/ueditor/php/config.json', '1471492830', '1471492777', '0', '1', '0');
INSERT INTO `ebcms5_config` VALUES ('228', '基本配置', '13', '0', '分页大小', 'pagenum', '20', 'number', 'form_numberbox', null, '', '1471843343', '1471843343', '0', '1', '0');

-- ----------------------------
-- Table structure for ebcms5_configcate
-- ----------------------------
DROP TABLE IF EXISTS `ebcms5_configcate`;
CREATE TABLE `ebcms5_configcate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '节点ID',
  `group` varchar(255) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `name` varchar(255) NOT NULL DEFAULT 'Common' COMMENT '生效模块',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '说明',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='核心配置分类表';

-- ----------------------------
-- Records of ebcms5_configcate
-- ----------------------------
INSERT INTO `ebcms5_configcate` VALUES ('1', '系统配置', '系统配置', 'system', '', '0', '0', '90', '1');
INSERT INTO `ebcms5_configcate` VALUES ('2', '模块配置', '留言模块', 'guestbook', '', '0', '0', '0', '1');
INSERT INTO `ebcms5_configcate` VALUES ('4', '模块配置', '内容模块', 'content', '', '1467014698', '1467014698', '80', '1');
INSERT INTO `ebcms5_configcate` VALUES ('5', '模块配置', '友情链接', 'link', '', '0', '0', '0', '1');
INSERT INTO `ebcms5_configcate` VALUES ('8', '模块配置', '前台配置', 'index', '', '1471182431', '1467620168', '85', '1');
INSERT INTO `ebcms5_configcate` VALUES ('9', '系统配置', '自定义配置', 'custom', '该配置项主要是 用于用户自己添加自己的配置项。方便前端模板开发。', '1468483060', '1468483000', '0', '1');
INSERT INTO `ebcms5_configcate` VALUES ('11', '系统配置', '升级配置', 'upgrade', '', '1470459778', '1470459778', '0', '1');
INSERT INTO `ebcms5_configcate` VALUES ('12', '系统配置', '统计配置', 'tongji', '', '1470463528', '1470463528', '0', '1');
INSERT INTO `ebcms5_configcate` VALUES ('13', '模块配置', '公告模块', 'bulletin', '', '1471843303', '1471843303', '0', '1');

-- ----------------------------
-- Table structure for ebcms5_content_body
-- ----------------------------
DROP TABLE IF EXISTS `ebcms5_content_body`;
CREATE TABLE `ebcms5_content_body` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '节点ID',
  `body` text COMMENT '内容主体',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='内容副表';

-- ----------------------------
-- Records of ebcms5_content_body
-- ----------------------------
INSERT INTO `ebcms5_content_body` VALUES ('1', '&lt;p&gt;随着ICT技术的加速融合，以云计算、大数据为特征的技术正在成为引领和促进ICT行业创新和发展的核心技 术。新的技术创新，不仅在全方位地重构CT产业，而且通过IT和CT产业融合带来巨大的商业发展机遇。为适应 这一革命性变化，华为围绕客户需求和技术领先持续创新，与业界伙伴开放合作，聚焦构筑面向未来的信息管 道，致力于共建更美好的全联接世界，持续为客户和全社会创造价值。我们力争成为运营商客户面向未来转型 的战略合作伙伴，成为领先的企业ICT基础设施提供商，成为消费者喜爱和信赖的、全球领先的智能终端品牌。无处不在的宽带&lt;/p&gt;&lt;p&gt;互联网使得信息的传播和获取更加便捷， 人们将越来越渴望能在任意时间、 任意地点使用任意设备联接到网 络，尽情体验快速增长的高质量内容和应用，享受移动办公带来的便利。企业IT向数据中心和云服务的迁移， 将对网络提出更高的需求。面对即将到来的数字洪水， 网络需要变得更宽、 覆盖更广、更敏捷，让更多的人享 受到网络带来的好处。&lt;/p&gt;&lt;p&gt;由于消费者对网络联接、带宽、可靠性和安全性的需求还远远没有得到满足，因此华为将针对全球不同运营商 所处的不同发展阶段，不同解决方案需求，进行有效适配，与客户共同应对商业和技术上的挑战。华为将致 力于帮助运营商提升网络容量、优化网络管理，实现互联网化运营 ；在新架构( Soft COM)、新技术等方面持续 创新，向客户提供技术领先、平滑演进的产品和解决方案，帮助客户建设高效的基础网络。提供面向用户On- Demand的服务，帮助运营商利用IT技术改造电信网络，实现互联网化运营，向用户提供高质量的内容。帮助运 营商实现现有IT资源整合，以及网络的NFV/ SDN转型 ；聚合优质内容资源，帮助运营商提升收入 ；支撑运营商 数字化运营，实现ROADS (Real-time, On-demand, All-online, DIY, Social)体验，使人们更加自由地 享受到无处不在的宽带。&lt;/p&gt;&lt;p&gt;敏捷创新&lt;/p&gt;&lt;p&gt;展望未来，ICT仍处于快速发展阶段， 移动性、 云计算、大数据和社区化等新趋势正在引领行业开创新的格 局 ；世界正在发生深刻的数字化变革，互联网正在促进传统产业的升级和重构。&lt;/p&gt;&lt;p&gt;各行各业需要快速洞察商机，并借助IT不断提升组织的协同，更快更好地将新产品、新业务推向市场。IT正在 从支撑系统转变为生产系统，成为企业的核心竞争力。&lt;/p&gt;&lt;p&gt;华为致力于成为创新的“一站式I CT基础设施提供商”，提供基于云计算的数据中心基础设施和数字基础设施解 决方案，帮助客户提升存储、计算、网络资源的使用效率，实现业务系统的快速部署、精简运维和高效管理 ； 提供行业解决方案以有效适配垂直行业需求 ；提供基于大数据的智能数据分析系统，帮助客户洞察商机、实现 敏捷的商业创新。 通过合作、 创新， 华为将自身的ICT产品嵌入到合作伙伴的行业解决方案中， 让产品能够适 配行业化需求，易于集成。&lt;/p&gt;&lt;p&gt;未来30年是企业逐渐拆除传统数据中心、向混合云迁移的30年。华为构建基于公有云服务技术的混合云解决方 案，满足企业客户的多样化需求，并协助运营商建设公有云，共同把握云服务的巨大机会。&lt;/p&gt;&lt;p&gt;极致体验&lt;/p&gt;&lt;p&gt;未来智能终端将不断丰富和加强人类情感、需求的识别以及对外部环境的感知，成为人们生活方式中不可缺少 的工具和伙伴。&lt;/p&gt;&lt;p&gt;华为将通过工业设计创新和关键技术创新，聚焦精品，持续打造设计时尚、领先创新、安全易用的高品质产 品 ；通过构建应用和服务的生态系统，围绕个人健康与生活、工作、家庭、出行等各种场景，提供手机、智能 手表、 智能终端等产品和服务， 聚焦端云协同，携手打造更美好的全场景体验，与用户建立长期情感联接 ；为 全球用户提供O2O的购买体验和服务，全方位提升用户体验。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `ebcms5_content_body` VALUES ('2', '&lt;p&gt;股东会是公司最高权力机构，对公司增资、利润分配、选举董事/监事等重大事项作出决策。&lt;/p&gt;&lt;p&gt;董事会是公司战略和经营管理的决策机构，对公司的整体业务运作进行指导和监督，对公司在战略和运作过程中的重大事项进行决策。&lt;/p&gt;&lt;p&gt;监事会主要职责包括内外合规监督，检查公司财务和公司经营状况，对董事、高级管理人员执行职务的行为和董事会运作规范性进行监督。&lt;/p&gt;&lt;p&gt;公司实行董事会领导下的轮值CEO制度，轮值CEO在轮值期间作为公司经营管理以及危机管理的最高责任人，对公司生存发展负责。&lt;/p&gt;&lt;p&gt;自2000年起，华为聘用毕马威作为独立审计师。审计师负责审计年度财务报表，根据会计准则和审计程序，评估财务报表是否真实和公允，对财务报表发表审计意见。&lt;/p&gt;&lt;p&gt;公司设立基于客户、产品和区域三个纬度的组织架构，各相应组织共同为客户创造价值，对公司的财务绩效有效增长、市场竞争力提升和客户满意度负责。&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot; style=&quot;list-style-type: disc;&quot;&gt;&lt;li&gt;&lt;p&gt;运营商BG和企业BG是公司分别面向运营商客户和企业/行业客户的解决方案营销、销售和服务的管理和支撑组织，针对不同客户的业务特点和经营规律提供创新、差异化、领先的解决方案，并不断提升公司的行业竞争力和客户满意度；消费者BG是公司面向终端产品用户的端到端经营组织，对经营结果、风险、市场竞争力和客户满意度负责。&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;产品与解决方案是公司面向运营商及企业/行业客户提供ICT融合解决方案的组织，负责产品的规划、开发交付和产品竞争力构建，创造更好的用户体验，支持商业成功。&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;区域组织是公司的区域经营中心，并负责位于区域的各项资源、能力的建设和有效利用。公司持续优化区域组织，加大、加快向一线组织授权，指挥权、现场决策权逐渐前移至代表处。在与客户建立更紧密的联系和伙伴关系、帮助客户实现商业成功的同时，进一步实现华为自身健康、可持续的有效增长。&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;集团职能平台是聚焦业务的支撑、服务和监管的平台，向前方提供及时准确有效的服务，在充分向前方授权的同时，加强监管。&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `ebcms5_content_body` VALUES ('3', '&lt;p&gt;华为聚焦ICT管道战略，为实现更好的全联接世界，在关键技术、基础工程能力、架构、标准和产品开发等方 向持续投入，致力于用更宽、更智能、更高性能、更可靠的“零”等待管道，为用户创造更好的体验。&lt;/p&gt;&lt;p&gt;华为在面向未来的基础研究和创新上持续加大投入， 在ICT的热点前沿领域已取得丰硕成果， 希望借助技术的 创新突破来驱动产业的发展与商业模式成功 ：&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot; style=&quot;list-style-type: disc;&quot;&gt;&lt;li&gt;&lt;p&gt;下一代移动通信领域，华为已经是5G创新领域的领跑者和产业建设的积极贡献者。华为面向业界率先发布 5G的SCMA、F- OFDM以及Polar Code等新空口技术，灵活适配各类业务，同时在不增加天线和频谱的情况 下，实现3倍频谱效率提升。新空口关键算法在大规模5G低频外场验证中已突破3.6Gbps的峰值速率。华为 提出5G网络架构概念，基于NFV/ SDN技术的一个物理网络虚拟成多个网络切片，支撑不同业务需求。同时还 在抗多径全双工技术、 大规模天线MIMO技术等领域也取得了创新突破。华为与欧盟5G- PPP、英国5G创新中 心(5GIC)和5GVIA展开广泛合作，并完成大规模测试验证。2015年华为广泛开展行业对话并与全球三十多 家顶级运营商签署战略合作协议。华为还在5G安全方面进行了深入思考与研究，并发布5G安全白皮书，推 出了基于服务切片的端到端安全架构，三方信任模型以及安全功能解耦和安全灵活配置的新理念。&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;未来数据中心领域， 华为继2014年发布DC 3.0架构白皮书引起业界广泛关注之后，2015年推出DC 3.0架 构原型，性能相对于同期通用架构大幅提升，包括发布的业界第一TPCx- HS+ Fusion Insight解决方案 ；完 成百K级数据中心网络仿真框架，仿真速度达到M级IPS ；完成首个用户态内存文件系统N VFS和内存NVKV系 统，性能达千万IOPS ；担任大数据B enchmark国际标准TPCx- BB中能效的编辑，构建大数据处理系统的评测标准。DC 3.0通过数据中心配置的扁平化与灵活扩展，为客户提供性能领先、低成本、绿色的数据中心解决方案。&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;人工智能领域，华为在深度学习上持续突破，研究出业界最先进的神经应答机( Neural Responding Machine)，发布业界第一个基于深度学习的单轮对话生成模型 ；发明神经机器翻译( Neural Machine Translation)技术，支持深度记忆框架，达到业界一流机器翻译能力。机器学习的成果使得运营商预付费 离网用户每月离网率从大约10%下降到6% ；G TS领域分析自动化全球首次实现自动生成告警关联规则，平均 告警压缩率90%以上，规则可用率95%以上。华为还发布了自己主导的业界第一个基于Spark Streaming的 流分析开源算法库。&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;电池领域，华为发布最新电池快充技术，3000m Ah的手机电池5分钟可充入48%电量，在华为手机中可通话 10小时。其快充技术的突破是采用新型分子结构的负极材料，具备高速的物理/化学双重储锂功能，充电速 度是普通手机的10倍，同时能量密度和使用寿命均不会受到影响。&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;视频领域，华为持续加强在超高清和移动视频领域的基础体验通信技术研究，联合业界建立开放平台，研 究下一代视频编码FVC技术( H.266)，共同推进未来大视频产业使能技术快速发展。华为推动了4K超高清 体验的IP Video应用，通过创新性的H.265/QDS(Quality Driven Streaming)，可以显著提升4K OTT/ IPTV业务超高清体验流畅度60%以上 ；对于监控应用，可以在1M bps的码率上提供超高清画质监控视频传 输，有力促进4K超高清视频体验在不同行业中的现网快速部署。&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;华为通过全球16个研究院/所、36个联合创新中心，在全球范围内开展创新合作，通过共享对ICT技术发展的洞 察，推动技术进步以更好地建设全联接世界。&lt;/p&gt;&lt;p&gt;华为作为ICT标准与产业的重要贡献者，主动牵引产业发展，做大产业蛋糕，携手构建共赢的产业链与 生态圈 。&lt;/p&gt;&lt;p&gt;截至2015年12月31日， 华为累计共获得专利授权50,377件， 累计申请中国专利52,550件， 累计申请外国专利 30,613件。其中，90%以上专利为发明专利。&lt;/p&gt;&lt;p&gt;截至2015年12月31日， 华为加入了300多个标准组织/产业联盟/开源社区， 担任超过280个重要职位， 在IEEE- SA、ETSI、WFA、TMF、OpenStack、Linaro、OASIS和CCSA等组织担任董事会成员。2015年提交提案超过5,400 篇，累计提交提案43,000余篇。&lt;/p&gt;&lt;p&gt;华为坚持每年将10%以上的销售收入投入研究与开发。2015年， 从事研究与开发的人员约79,000名， 占公司总 人数45% ；研发费用支出为人民币59,607百万元，占总收入的15.1%。近十年累计投入的研发费用超过人民币 240,000百万元。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `ebcms5_content_body` VALUES ('4', '&lt;p&gt;网络的价值在于开放和互联互通，未来将是一个开放合作的全联接世界。数字经济时代的创新不可能单打独斗， 企业必须与产业链、产业生态圈共同发展与繁荣。&lt;/p&gt;&lt;h3&gt;华为把“开放、合作、共赢”作为企业发展的重要基石，致力于为全联接的信息社会打造良性生态系统。&lt;/h3&gt;&lt;p&gt;在运营商业务领域，华为提出了“Open ROADS to a Better Connected World”理念，通过聚焦ICT基础设施、 全面开放ICT能力，建设面向运营商数字化转型开放生态系统，联接全球运营商和合作伙伴，实现商业共赢。&lt;/p&gt;&lt;p&gt;在企业业务领域，华为坚持“被集成”战略，以云计算、敏捷网络、平安城市、金融、eLTE等解决方案为核心建 立广泛生态圈。华为云计算企业级合作伙伴达500多家，公有云伙伴超万家，并发展FusionSphere开放云计算联 盟。华为敏捷网络全层次开放，在敏捷园区、敏捷数据中心、敏捷物联等领域发展生态合作伙伴200多家。&lt;/p&gt;&lt;p&gt;在消费者业务领域，华为携手时尚、汽车、家电等行业的国际领先品牌在智能手机、智能手表、智能家居、车联 网等领域进行跨界合作与联合创新，将各领域的前沿科技以及完美的产品体验带给全球消费者。&lt;/p&gt;&lt;p&gt;华为积极开展与产业界、开发者、学术界、产业标准组织的密切合作，推动商业和科技创新，推动业界建立合作 共赢、公平竞争的产业健康发展生态。2015年，华为联合创新中心增长到36家 ；宣布了未来五年投入十亿美元的 沃土开发者使能计划 ；通过华为创新研究计划（HIRP）新资助一百多个研究项目 ；更广泛深入地参与国际标准组 织、产业联盟和开源社区。&lt;/p&gt;&lt;p&gt;针对价值链上下游合作伙伴的利益分享，华为坚持“深淘滩，低做堰”，不断挖掘内部潜力以降低成本和提高解决 方案价值，同时让利给客户，善待产业链合作伙伴，从而促进自身产业链的健康发展。&lt;/p&gt;&lt;p&gt;针对本地ICT发展，华为积极参与各国ICT产业政策讨论，推动创造公平、合理的政策环境，平衡基础设施投资者 和信息消费者的利益诉求，推动行业持续良性发展。同时，华为也利用创新的技术和解决方案，积极配合所在国 政府的ICT发展战略，促进当地经济和社会进步。&lt;/p&gt;&lt;p&gt;华为致力于开放、合作、共赢，为客户创造价值，为产业健康发展和社会进步贡献力量，共建更美好的全联接世 界。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `ebcms5_content_body` VALUES ('5', '&lt;p&gt;华为质量方针：&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot; style=&quot;list-style-type: square;&quot;&gt;&lt;li&gt;&lt;p&gt;时刻铭记质量是华为生存的基石，是客户选择华为的理由。&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;我们把客户要求与期望准确传递到华为整个价值链，共同构建质量；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;我们尊重规则流程，一次把事情做对；我们发挥全球员工潜能，持续改进；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;我们与客户一起平衡机会与风险，快速响应客户需求，实现可持续发展。&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;华为承诺向客户提供高质量的产品、服务和解决方案，持续不断让客户体验到我们致力于为每个客户创造价值。&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `ebcms5_content_body` VALUES ('6', '&lt;p&gt;[香港，2015年11月4日] 在香港举办的第二届华为MBB安全峰会上，Telefonica Global CTO Enrique Blanco向华为安全网关Eudemon E8000E V5R1 及相应管理系统M2000 V2R14颁发PSDA（Protocol of Security Development Assurance)证书，并更新了对ME60 (BRAS) V6R8 及相应管理系统U2000 V2R14 的认证。华为全球网络安全与用户隐私保护办公室主任王唯践代表华为接受此证书。PSDA实践是Telefonica和华为开放、透明、合作，共同构建全球网络安全保障体系的一次积极、成功的尝试。&lt;/p&gt;');
INSERT INTO `ebcms5_content_body` VALUES ('7', '&lt;p&gt;无所不在的网络正在改变人们的生活方式。这场革命带来了很多机会，但也对全球安全提出了新的挑战。面对如此复杂的要求和风险，我们该如何作出正确的选择？&lt;/p&gt;&lt;p&gt;华为制定了端到端的网络安全保障体系。业界客户可以通过系统地提问，以确保作出明智的决策。&lt;/p&gt;&lt;p&gt;该体系对ICT供应商提出了11项重要的安全要求：&lt;/p&gt;&lt;p&gt;战略、管理和监控：公司级的网络安全战略，该战略涉及公司的所有人所有事。&lt;/p&gt;&lt;p&gt;标准和流程：可复制、全球适用的安全标准和流程并持续更新。&lt;/p&gt;&lt;p&gt;法律法规：严格遵守当地法律法规，无论在哪里开展业务。&lt;/p&gt;&lt;p&gt;人力资源：落实安全措施，将人为因素纳入安全管理范围。&lt;/p&gt;&lt;p&gt;研发：通过稳健的研发流程，将安全技术嵌入各个环节，而不是附加在流程上。&lt;/p&gt;&lt;p&gt;验证：不假定任何事情，不相信任何人，检验所有的东西。 实施“多眼多手”战略来规避风险。&lt;/p&gt;&lt;p&gt;第三方供应商管理：要求供应商同样遵守安全机制。只有最薄弱的环节安全了，供应链才会安全。&lt;/p&gt;&lt;p&gt;生产：对每一个生产和发货步骤进行验证，消除漏洞并避免其进入下游生产环节。&lt;/p&gt;&lt;p&gt;安全交付服务：设备的安全安装和维护手册。&lt;/p&gt;&lt;p&gt;问题、缺陷和漏洞解决方案：&lt;a&gt;&lt;/a&gt;针对极端场景制定方案，防止恶劣影响扩大，建立弹性机制。&lt;/p&gt;&lt;p&gt;审计：通过严格的审计程序确保善意的举措能在制度中落地，并适合实践。&lt;/p&gt;&lt;p&gt;华为的端到端安全系统覆盖11个关键维度。作为全球领先的ICT供应商，我们一直致力于确保数字化未来的安全。为了实现这一目标，我们必须在全球层面开展合作。让我们携手创建一个更美好的全联接世界。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `ebcms5_content_body` VALUES ('8', '&lt;h3&gt;在全联接世界网络安全问题日益凸显的背景下，该奖项表明了马来西亚对华为在信息安全实践方面的高度认可&lt;/h3&gt;&lt;p&gt;[马来西亚，怡保，2014年11月13日] 华为今日宣布获得由马来西亚科学技术与创新部（MOSTI）直属的马来西亚网络安全组织(Cyber Security Malaysia)颁发的“2014年网络安全机构”大奖。华为在马来西亚霹雳州首府怡保举办的“第四届马来西亚网络安全展览暨颁奖大会（CSM-ACE）”上接受了此奖项。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;霹雳州苏丹在第四届马来西亚网络安全展览暨颁奖大会上为华为颁发“年度最佳网络安全企业”大奖&lt;/p&gt;&lt;p&gt;该奖项充分肯定了华为在全球构筑全面、可靠的端到端网络安全保障体系的行业最佳实践。马来西亚网络安全大奖旨在嘉奖为马来西亚网络安全及信息安全作出突出贡献的个人及组织。经过行业专家的严格筛选及评判，华为最终凭借在网络安全领域的大量投入及持续改进当选。华为将安全要求融入其内部业务流程，构建了一个可审计、可持续且可靠的网络安全保障体系。该体系由相应的政策、组织架构、指定人员、治理、技术和规则支撑，这些要素共同为马来西亚的ICT网络提供保障。&lt;/p&gt;&lt;p&gt;马来西亚网络安全组织CEO Amirudin Bin Abdul Wahab博士说：“感谢华为在提高业内网络安全标准方面所作出的持续贡献。在供应链全球化的背景下，网络安全变得越来越复杂。管理和降低网络空间的威胁需要包括政府监管机构、运营商、设备厂商，以及个人用户在内的共同努力。很高兴华为开发并实施了一套综合的内置端到端网络安全保障体系，该体系涉及战略、管控、标准与流程、人力资源、认证以及供应商管理等多个方面。我希望马来西亚越来越多组织和企业能向华为学习，学习他们在网络安全方面的最佳实践，从而使马来西亚拥有更强健的网络，以促进经济可持续发展。”&lt;/p&gt;&lt;p&gt;华为全球网络安全官John Suffolk说：“能获得这个大奖，我们感到非常荣幸。作全球领先的ICT解决方案供应商，华为自2001年入驻马来西亚以来，就一直致力于为马来西亚客户提供创新可靠的解决方案，持续不断地为我们的客户创造最大的商业价值。我们把网络安全视为工作的重中之重，在华为，网络安全高于商业利益。我们很乐意与客户分享我们的端到端网络安全体系、以流程内置为向导的管理方法以及‘不假定任何事情，不相信任何人，检验所有的东西’的理念。华为期待与马来西亚政府机构和客户加强合作，共同提供最佳安全保障，为大家营造一个更加安全的网络空间。”&lt;/p&gt;&lt;p&gt;华为已在马来西亚运营13年。目前在马来西亚拥有1,900名员工，其中75%为本地员工。华为为马来西亚所有主要电信运营商提供服务，为马来西亚的高速宽带（HSBB）、4G网络等ICT领域的发展作出了巨大贡献。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `ebcms5_content_body` VALUES ('9', '&lt;p&gt;网络安全一直是我们的客户非常关注的一件事情，也是政府和供应商非常关注的事情。这也是华为关注的一个焦点，保障网络安全是我们公司的核心战略之一。&lt;/p&gt;&lt;p&gt;我们认为，只有通过供应商、客户和政策与法律制定者之间的全球合作，我们才能在应对全球网络安全挑战方面取得显著成绩。我们还认为，我们必须共享知识和理解，知道什么行得通、什么行不通，从而减少人们将技术用于从未预料之处的风险。&lt;/p&gt;&lt;p&gt;如果真存在一个针对网络安全挑战的简单答案或者解决方案，那它应该早已经被发现并且采用了。然而，全球持续地就标准、法律、法规和规范进行争论的事实，恰恰说明我们还处于早期，我们必须共享有效的方法，让他人可以适用并改进。&lt;/p&gt;&lt;p&gt;本白皮书为我们行业的整体知识尽一份微薄之力，帮助人们理解像华为这样的供应商正在考虑的与网络安全相关的一些政策、流程和变革，希望对你们有用。我们欢迎大家反馈意见，并希望大家能够提出建设性意见：你们认为我们以及整个行业需要做什么其他事情，以改进我们设计、构建和部署更加安全的技术的方法。&lt;/p&gt;&lt;p&gt;特别地，我想以华为董事会副主席以及全球网络安全委员会主席的身份澄清一下我们公司的立场。&lt;/p&gt;&lt;p&gt;我们可以确定：除了提高我们端到端网络安全能力的建议之外，我们从来没有收到来自任何政府及其机构的指示或要求，去改变我们在这个问题上的立场、政策、流程、硬件、软件或雇佣实践或其他任何事情；我们从来没有被要求向任何政府及其机构提供我们技术的访问权限或任何公民或组织的任何数据或信息。&lt;/p&gt;&lt;p&gt;我们确定，我们公司将会坚定不移地坚持我们的承诺，继续与所有利益相关方合作，提高我们在设计、开发和部署安全的技术方面的能力和效果。&lt;/p&gt;&lt;p&gt;我们坚信，如果技术的使用所带来的创新得以最大化，可以改善人们的生活，提高经济水平，世界将会更加美好。华为将会继续在运营中和我们做的所有事情上坚持开放透明的方针和负责任的立场。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: right;&quot;&gt;胡厚崑&lt;/p&gt;&lt;p style=&quot;text-align: right;&quot;&gt;华为董事会副主席&lt;/p&gt;&lt;p style=&quot;text-align: right;&quot;&gt;华为全球网络安全委员会主席&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `ebcms5_content_body` VALUES ('10', '&lt;p&gt;欢迎来到华为的展厅之一。大家可以看到，我身后有很多设备。这些设备中包括采用了微波技术的设备。以上设备均来自于广泛的供应链。&lt;/p&gt;&lt;p&gt;我来举个关于这个微波技术设备的简单例子：我们有一个研发中心（华为在全球有20多个研发中心），但只有一个是专门研究微波技术的，这个中心位于米兰。但是，我们在莫斯科聚集了世界上最优秀的科研人员和数学家来研究压缩算法。然后，我们把压缩算法应用到中国的技术和生产上。所以，大家现在都能采用非常简单的技术，并知道我为什么说技术来自世界各地。如果从全球供应链的角度来看这个问题的话：我们在世界各地不仅有研发中心，还有联合创新中心，而且我们还从世界各地采购部件。比如，我们看到的华为设备的部件，三分之二以上来自于非中国组织。其中最大供应国—美国的供应比例达32%。2011年，我们花了超过66亿美元购买美国部件。所以从网络安全角度出发的话，我们不仅应保障自己供应链的安全，还需要保障我们供应商供应链的安全。网络安全不仅仅和比特和字节相关，也不仅仅和软件相关，它还和人员、流程、生产、工厂分布、空运等相关。以上提到的这些方面，我们都要涉及。&lt;/p&gt;&lt;p&gt;我以前也谈过我们的一些基础设施产品，如微波技术，当然我们还提供基站以及所有电信行业的技术。但是从网络安全角度分析的话，你放在口袋中随身携带的手机、PDA、或者你的iPad或MediaPad对网络安全同样重要。因为网络安全不仅仅和技术相关，还和我们下载的应用程序相关。这些是我们的个人数据。所以从世界上某个应用程序商店下载一个应用程序时，你怎么知道这个程序实际上是做什么用的？它会不会捕捉你的个人数据？会不会复制你的联系人名单并以不加密的方式把名单卖给千里之外的“云”？会不会开始复制你在网上银行的任何操作？所以，在讨论网络安全的时候，我们不应仅关注技术，还应关注人的行为、关注数据、关注其余每个人的服务，这就是华为的端到端流程。&lt;/p&gt;&lt;p&gt;此前我谈到运营商或基础设施的网络安全以及终端的网络安全，当然我们别忘了企业的大小业务都会使用技术。正如我们在这里所看到的，我们提供的产品和服务几乎涵盖所有东西，从医疗系统、教育系统到云计算到智能电网再到智能数据中心。有些技术是通过第三方使用的，所以我们是生态系统的一部分。当我们谈论网络安全时，应关注我们使用的技术的生态系统需要什么。&lt;/p&gt;&lt;p&gt;欢迎来到我们位于深圳边上的这家制造中心。我们还会将部分制造业务外包。在这里，我们主要关注一些较新的设备以及我们为客户提供的一些定制设备。&lt;/p&gt;&lt;p&gt;大家都知道，从网络安全角度出发的话，我们应覆盖整个生命流程的所有因素，从供应商到部件到人。我们刚才已经向大家展示了华为的制造规模，但我们想要展示的不仅是规模，还包括先进程度。没有世界一流的技术，就不可能生产出世界一流的产品。但我们从其它行业也能了解到，质量不是螺钉，不能组装到产品上。这条规律同样也适用于网络安全。网络安全应融入到你所做的一切事情中。比如，在我们的生产中，90%的部件是可追溯的。我们知道它们来自哪里，用于生产什么产品，以及产品要运到哪里去。所有这些都是我们的端到端网络安全策略。&lt;/p&gt;&lt;p&gt;很多网络安全威胁来自于内部。所以，如果不明确诱因、惩罚措施以及规则和管理规定，内部人员就很可能发起多次攻击。华为非常认真对待对员工的管理和关怀，因为这么做能帮助我们保障网络安全。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');

-- ----------------------------
-- Table structure for ebcms5_content_category
-- ----------------------------
DROP TABLE IF EXISTS `ebcms5_content_category`;
CREATE TABLE `ebcms5_content_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '节点ID',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `metatitle` varchar(255) NOT NULL DEFAULT '' COMMENT 'meta标题',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `extend_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '扩展id',
  `pagenum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分页大小',
  `tpl` varchar(255) NOT NULL DEFAULT '' COMMENT '模板',
  `tpl_detail` varchar(255) NOT NULL DEFAULT '' COMMENT '内容页模板',
  `ebcms_url` varchar(255) NOT NULL DEFAULT '' COMMENT '外部链接',
  `datatype` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '读取内容',
  `expire` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '缓存时间',
  `order` varchar(255) NOT NULL DEFAULT 'id desc' COMMENT '排序',
  `ext` text COMMENT '扩展信息',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='内容栏目表';

-- ----------------------------
-- Records of ebcms5_content_category
-- ----------------------------
INSERT INTO `ebcms5_content_category` VALUES ('1', '0', 'news', '公司新闻', '', '公司新闻', '', '0', '20', '', '', '', '1', '0', 'id desc', '{\"__config__\":{\"__test__\":\"test\"}}', '1471239808', '1471239808', '0', '1');
INSERT INTO `ebcms5_content_category` VALUES ('2', '0', 'hangye', '行业新闻', '', '', '', '0', '20', '', '', '', '1', '0', 'id desc', '{\"__config__\":{\"__test__\":\"test\"}}', '1471239819', '1471239819', '0', '1');

-- ----------------------------
-- Table structure for ebcms5_content_content
-- ----------------------------
DROP TABLE IF EXISTS `ebcms5_content_content`;
CREATE TABLE `ebcms5_content_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '节点ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `shorttitle` varchar(255) NOT NULL DEFAULT '' COMMENT '短标题',
  `metatitle` varchar(255) NOT NULL DEFAULT '' COMMENT 'META标题',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图',
  `tpl` varchar(255) NOT NULL DEFAULT '' COMMENT '模板',
  `ebcms_url` varchar(255) NOT NULL DEFAULT '' COMMENT '外部链接',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名称',
  `ext` text COMMENT '扩展信息',
  `click` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量',
  `baidu` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否被百度收录',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '99' COMMENT '状态',
  `color` varchar(255) NOT NULL DEFAULT '' COMMENT '字体颜色',
  `size` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '字号',
  `bold` varchar(255) NOT NULL DEFAULT '' COMMENT '加粗',
  PRIMARY KEY (`id`),
  KEY `list` (`category_id`,`status`,`id`),
  KEY `list2` (`status`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='内容基本表';

-- ----------------------------
-- Records of ebcms5_content_content
-- ----------------------------
INSERT INTO `ebcms5_content_content` VALUES ('1', '1', '价值主张', '', '', '', '随着ICT技术的加速融合，以云计算、大数据为特征的技术正在成为引领和促进ICT行业创新和发展的核心技术。新的技术创新，不仅在全方位地重构CT产业，而且通过IT和CT产业融合带来巨大的商业发展机遇。为适应这一革命性变化，华为围绕客户需求和技术领先持续创新，与业界伙伴开放合作，聚焦构筑面向未来的信息管道，致力于共建更美好的全联接世界，持续为客户和全社会创造价值。我们力争成为运营商客户面向未来转型的战略', '', '', '', '', '', '7', '0', '1471239940', '1471239940', '0', '1', '', '0', '');
INSERT INTO `ebcms5_content_content` VALUES ('2', '1', '公司治理', '', '', '', '股东会是公司最高权力机构，对公司增资、利润分配、选举董事/监事等重大事项作出决策。董事会是公司战略和经营管理的决策机构，对公司的整体业务运作进行指导和监督，对公司在战略和运作过程中的重大事项进行决策。监事会主要职责包括内外合规监督，检查公司财务和公司经营状况，对董事、高级管理人员执行职务的行为和董事会运作规范性进行监督。公司实行董事会领导下的轮值CEO制度，轮值CEO在轮值期间作为公司经营管理以及', '', '', '', '', '', '4', '0', '1471240004', '1471240004', '0', '1', '', '0', '');
INSERT INTO `ebcms5_content_content` VALUES ('3', '1', '研究开发', '', '', '', '华为聚焦ICT管道战略，为实现更好的全联接世界，在关键技术、基础工程能力、架构、标准和产品开发等方向持续投入，致力于用更宽、更智能、更高性能、更可靠的“零”等待管道，为用户创造更好的体验。华为在面向未来的基础研究和创新上持续加大投入，在ICT的热点前沿领域已取得丰硕成果，希望借助技术的创新突破来驱动产业的发展与商业模式成功：下一代移动通信领域，华为已经是5G创新领域的领跑者和产业建设的积极贡献者。', '', '', '', '', '', '1', '0', '1471240050', '1471240050', '0', '1', '', '0', '');
INSERT INTO `ebcms5_content_content` VALUES ('4', '1', '开放合作共赢', '', '', '', '网络的价值在于开放和互联互通，未来将是一个开放合作的全联接世界。数字经济时代的创新不可能单打独斗，企业必须与产业链、产业生态圈共同发展与繁荣。华为把“开放、合作、共赢”作为企业发展的重要基石，致力于为全联接的信息社会打造良性生态系统。在运营商业务领域，华为提出了“OpenROADStoaBetterConnectedWorld”理念，通过聚焦ICT基础设施、全面开放ICT能力，建设面向运营商数字化', '', '', '', '', '', '12', '1', '1471577360', '1471240077', '0', '1', '', '0', '');
INSERT INTO `ebcms5_content_content` VALUES ('5', '1', '质量方针', '', '', '', '华为质量方针：时刻铭记质量是华为生存的基石，是客户选择华为的理由。我们把客户要求与期望准确传递到华为整个价值链，共同构建质量；我们尊重规则流程，一次把事情做对；我们发挥全球员工潜能，持续改进；我们与客户一起平衡机会与风险，快速响应客户需求，实现可持续发展。华为承诺向客户提供高质量的产品、服务和解决方案，持续不断让客户体验到我们致力于为每个客户创造价值。', '', '', '', '', '', '9', '0', '1471580791', '1471240131', '0', '1', '', '0', '');
INSERT INTO `ebcms5_content_content` VALUES ('6', '2', 'Telefonica向华为特定产品颁发PSDA证书', '', '', '', '[香港，2015年11月4日]在香港举办的第二届华为MBB安全峰会上，TelefonicaGlobalCTOEnriqueBlanco向华为安全网关EudemonE8000EV5R1及相应管理系统M2000V2R14颁发PSDA（ProtocolofSecurityDevelopmentAssurance)证书，并更新了对ME60(BRAS)V6R8及相应管理系统U2000V2R14的认证。华为全', '', '', '', '', '', '1', '0', '1471240168', '1471240168', '0', '1', '', '0', '');
INSERT INTO `ebcms5_content_content` VALUES ('7', '2', '华为网络安全', '', '', '', '无所不在的网络正在改变人们的生活方式。这场革命带来了很多机会，但也对全球安全提出了新的挑战。面对如此复杂的要求和风险，我们该如何作出正确的选择？华为制定了端到端的网络安全保障体系。业界客户可以通过系统地提问，以确保作出明智的决策。该体系对ICT供应商提出了11项重要的安全要求：战略、管理和监控：公司级的网络安全战略，该战略涉及公司的所有人所有事。标准和流程：可复制、全球适用的安全标准和流程并持续更', '', '', '', '', '', '0', '0', '1471240199', '1471240199', '0', '1', '', '0', '');
INSERT INTO `ebcms5_content_content` VALUES ('8', '2', '华为荣获马来西亚网络安全组织颁发的“年度最佳网络安全企业”奖', '', '', '', '在全联接世界网络安全问题日益凸显的背景下，该奖项表明了马来西亚对华为在信息安全实践方面的高度认可[马来西亚，怡保，2014年11月13日]华为今日宣布获得由马来西亚科学技术与创新部（MOSTI）直属的马来西亚网络安全组织(CyberSecurityMalaysia)颁发的“2014年网络安全机构”大奖。华为在马来西亚霹雳州首府怡保举办的“第四届马来西亚网络安全展览暨颁奖大会（CSM-ACE）”上接', '', '', '', '', '', '1', '0', '1471240238', '1471240238', '0', '1', '', '0', '');
INSERT INTO `ebcms5_content_content` VALUES ('9', '2', '华为网络安全白皮书', '', '', '', '网络安全一直是我们的客户非常关注的一件事情，也是政府和供应商非常关注的事情。这也是华为关注的一个焦点，保障网络安全是我们公司的核心战略之一。我们认为，只有通过供应商、客户和政策与法律制定者之间的全球合作，我们才能在应对全球网络安全挑战方面取得显著成绩。我们还认为，我们必须共享知识和理解，知道什么行得通、什么行不通，从而减少人们将技术用于从未预料之处的风险。如果真存在一个针对网络安全挑战的简单答案或', '', '', '', '', '', '8', '0', '1471240284', '1471240284', '0', '1', '', '0', '');
INSERT INTO `ebcms5_content_content` VALUES ('10', '2', '网络安全—全球供应链带来的挑战', '', '', '', '欢迎来到华为的展厅之一。大家可以看到，我身后有很多设备。这些设备中包括采用了微波技术的设备。以上设备均来自于广泛的供应链。我来举个关于这个微波技术设备的简单例子：我们有一个研发中心（华为在全球有20多个研发中心），但只有一个是专门研究微波技术的，这个中心位于米兰。但是，我们在莫斯科聚集了世界上最优秀的科研人员和数学家来研究压缩算法。然后，我们把压缩算法应用到中国的技术和生产上。所以，大家现在都能采', '', '', '', '', '', '3', '0', '1471267212', '1471240311', '0', '1', '#d9534f', '0', '600');

-- ----------------------------
-- Table structure for ebcms5_datadict
-- ----------------------------
DROP TABLE IF EXISTS `ebcms5_datadict`;
CREATE TABLE `ebcms5_datadict` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `category_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '标题',
  `value` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `ext` text COMMENT '扩展信息',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '说明',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=489 DEFAULT CHARSET=utf8 COMMENT='数据字典表';

-- ----------------------------
-- Records of ebcms5_datadict
-- ----------------------------
INSERT INTO `ebcms5_datadict` VALUES ('9', '0', '3', '后台菜单', 'admin', '', '', '2015', '2015', '1', '1');
INSERT INTO `ebcms5_datadict` VALUES ('10', '0', '4', '图片文件', 'jpeg,jpg,gif,bmp,png', '', '', '2015', '2015', '20', '1');
INSERT INTO `ebcms5_datadict` VALUES ('11', '10', '4', 'JPG', 'jpg', '', '', '2015', '2015', '1', '1');
INSERT INTO `ebcms5_datadict` VALUES ('12', '10', '4', 'PNG', 'png', '', '', '2015', '2015', '1', '1');
INSERT INTO `ebcms5_datadict` VALUES ('13', '10', '4', 'GIF', 'gif', '', '', '2015', '2015', '1', '1');
INSERT INTO `ebcms5_datadict` VALUES ('14', '10', '4', 'BMP', 'bmp', '', '', '1467883359', '2015', '1', '1');
INSERT INTO `ebcms5_datadict` VALUES ('15', '10', '4', 'JPEG', 'jpeg', '', '', '2015', '2015', '1', '1');
INSERT INTO `ebcms5_datadict` VALUES ('16', '0', '4', '视频文件', 'rmvb,rmb,mkv,mp4,3gp,avi', '', '', '2015', '2015', '10', '1');
INSERT INTO `ebcms5_datadict` VALUES ('17', '16', '4', 'RMVB', 'rmvb', '', '', '2015', '2015', '1', '1');
INSERT INTO `ebcms5_datadict` VALUES ('18', '16', '4', 'MKV', 'mkv', '', '', '2015', '2015', '1', '1');
INSERT INTO `ebcms5_datadict` VALUES ('19', '16', '4', 'RMB', 'rmb', '', '', '2015', '2015', '1', '1');
INSERT INTO `ebcms5_datadict` VALUES ('20', '16', '4', 'AVI', 'avi', '', '', '2015', '2015', '1', '1');
INSERT INTO `ebcms5_datadict` VALUES ('21', '16', '4', 'MP4', 'mp4', '', '', '2015', '2015', '1', '1');
INSERT INTO `ebcms5_datadict` VALUES ('22', '16', '4', '3GP', '3gp', '', '', '2015', '2015', '1', '1');
INSERT INTO `ebcms5_datadict` VALUES ('23', '0', '4', '其他类型', 'zip,rar,7z', '', '', '2015', '2015', '1', '1');
INSERT INTO `ebcms5_datadict` VALUES ('25', '0', '5', '模板样式', '{{eb_encrypt(ROOT_PATH.\'templates\'.DS)}}', '', '', '1471239562', '2015', '1', '1');
INSERT INTO `ebcms5_datadict` VALUES ('26', '0', '5', '静态资源', '{{eb_encrypt(\'./static\')}}', '', '', '1469491152', '2015', '1', '1');
INSERT INTO `ebcms5_datadict` VALUES ('27', '0', '6', '字符', 'string', '', 'required:true/false //是否必填\r\n', '2015', '2015', '250', '1');
INSERT INTO `ebcms5_datadict` VALUES ('29', '0', '6', '整数', 'number', '', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n**注意事项**\r\n*双大括号括起来的标示变量，例如:{{time()}}、{{__FILE__}、{{$value}}等等', '2015', '2015', '222', '1');
INSERT INTO `ebcms5_datadict` VALUES ('30', '0', '6', '布尔', 'bool', '', '0或1\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n**注意事项**\r\n*双大括号括起来的标示变量，例如:{{time()}}、{{__FILE__}、{{$value}}等等', '2015', '2015', '210', '1');
INSERT INTO `ebcms5_datadict` VALUES ('31', '0', '6', '浮点数', 'float', '', '一行一条，例如：\r\n中国\r\n日本\r\n韩国\r\n德国\r\n\r\n\r\n\r\n**注意事项**\r\n*双大括号括起来的标示变量，例如:{{time()}}、{{__FILE__}、{{$value}}等等', '2015', '2015', '195', '1');
INSERT INTO `ebcms5_datadict` VALUES ('32', '0', '6', 'JSON', 'json', '', '标准的json数据格式！\r\n例如：\r\n{\r\n&quot;key1&quot;:&quot;value1&quot;,\r\n&quot;key2&quot;:&quot;value2&quot;\r\n}\r\n例如：\r\n[&quot;value1&quot;,&quot;value2&quot;]\r\n**注意事项**\r\n*双大括号括起来的标示变量，例如:{{time()}}、{{__FILE__}、{{$value}}等等', '2015', '2015', '40', '1');
INSERT INTO `ebcms5_datadict` VALUES ('33', '0', '6', 'INI', 'ini', '', 'key1=value1;\r\nkey2=value2;\r\n\r\n\r\n\r\n\r\n\r\n\r\n**注意事项**\r\n*双大括号括起来的标示变量，例如:{{time()}}、{{__FILE__}、{{$value}}等等', '2015', '2015', '25', '1');
INSERT INTO `ebcms5_datadict` VALUES ('34', '0', '6', 'YAML', 'yaml', '', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n**注意事项**\r\n*双大括号括起来的标示变量，例如:{{time()}}、{{__FILE__}、{{$value}}等等', '2015', '2015', '14', '1');
INSERT INTO `ebcms5_datadict` VALUES ('35', '0', '6', 'XML', 'xml', '', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n**注意事项**\r\n*双大括号括起来的标示变量，例如:{{time()}}、{{__FILE__}、{{$value}}等等', '2015', '2015', '1', '1');
INSERT INTO `ebcms5_datadict` VALUES ('200', '0', '9', '当前栏目', '1', '', '', '2015', '2015', '247', '1');
INSERT INTO `ebcms5_datadict` VALUES ('201', '0', '9', '不调用', '0', '', '', '2015', '2015', '232', '1');
INSERT INTO `ebcms5_datadict` VALUES ('202', '0', '9', '当前栏目及子栏目', '2', '', '', '1468921991', '2015', '198', '1');
INSERT INTO `ebcms5_datadict` VALUES ('203', '0', '9', '所有子孙栏目', '3', '', '', '2015', '2015', '165', '1');
INSERT INTO `ebcms5_datadict` VALUES ('204', '0', '9', '所有栏目', '4', '', '', '1468921983', '2015', '1', '1');
INSERT INTO `ebcms5_datadict` VALUES ('251', '0', '14', '1分钟', '60', '', '', '2015', '2015', '50', '1');
INSERT INTO `ebcms5_datadict` VALUES ('252', '0', '14', '5分钟', '300', '', '', '2015', '2015', '49', '1');
INSERT INTO `ebcms5_datadict` VALUES ('253', '0', '14', '10分钟', '600', '', '', '2015', '2015', '48', '1');
INSERT INTO `ebcms5_datadict` VALUES ('254', '0', '14', '15分钟', '900', '', '', '2015', '2015', '47', '1');
INSERT INTO `ebcms5_datadict` VALUES ('255', '0', '14', '30分钟', '1800', '', '', '2015', '2015', '46', '1');
INSERT INTO `ebcms5_datadict` VALUES ('256', '0', '14', '1小时', '3600', '', '', '2015', '2015', '45', '1');
INSERT INTO `ebcms5_datadict` VALUES ('257', '0', '14', '2小时', '7200', '', '', '2015', '2015', '44', '1');
INSERT INTO `ebcms5_datadict` VALUES ('258', '0', '14', '3小时', '10800', '', '', '2015', '2015', '43', '1');
INSERT INTO `ebcms5_datadict` VALUES ('259', '0', '14', '4小时', '14400', '', '', '2015', '2015', '42', '1');
INSERT INTO `ebcms5_datadict` VALUES ('260', '0', '14', '5小时', '18000', '', '', '2015', '2015', '41', '1');
INSERT INTO `ebcms5_datadict` VALUES ('261', '0', '14', '6小时', '21600', '', '', '2015', '2015', '40', '1');
INSERT INTO `ebcms5_datadict` VALUES ('262', '0', '14', '8小时', '28800', '', '', '2015', '2015', '39', '1');
INSERT INTO `ebcms5_datadict` VALUES ('263', '0', '14', '10小时', '36000', '', '', '2015', '2015', '38', '1');
INSERT INTO `ebcms5_datadict` VALUES ('264', '0', '14', '12小时', '39600', '', '', '2015', '2015', '37', '1');
INSERT INTO `ebcms5_datadict` VALUES ('265', '0', '14', '1天', '86400', '', '', '2015', '2015', '36', '1');
INSERT INTO `ebcms5_datadict` VALUES ('266', '0', '14', '2天', '172800', '', '', '2015', '2015', '35', '1');
INSERT INTO `ebcms5_datadict` VALUES ('267', '0', '14', '3天', '259200', '', '', '2015', '2015', '34', '1');
INSERT INTO `ebcms5_datadict` VALUES ('268', '0', '14', '5天', '432000', '', '', '2015', '2015', '33', '1');
INSERT INTO `ebcms5_datadict` VALUES ('290', '0', '6', '枚举', 'item', '', '一样一个，例如\r\nhaha\r\nhehe\r\nxixi', '2015', '2015', '2', '1');
INSERT INTO `ebcms5_datadict` VALUES ('315', '0', '22', '超链接', 'url', '', '', '2015', '2015', '1', '1');
INSERT INTO `ebcms5_datadict` VALUES ('316', '0', '22', '电子邮箱', 'email', '{\"test\":\"332\"}', '', '2015', '2015', '1', '1');
INSERT INTO `ebcms5_datadict` VALUES ('483', '0', '27', '内容栏目', 'content/category', '', '', '1470233848', '1470233848', '0', '1');
INSERT INTO `ebcms5_datadict` VALUES ('484', '0', '27', '导航分类', 'admin/navcate', '', '', '1470233885', '1470233885', '0', '1');
INSERT INTO `ebcms5_datadict` VALUES ('486', '0', '27', '推荐位', 'recommend/recommendcate', '', '', '1470234075', '1470233946', '0', '1');
INSERT INTO `ebcms5_datadict` VALUES ('487', '0', '27', '数据源', 'admin/datadictcate', '', '', '1470234001', '1470234001', '0', '1');
INSERT INTO `ebcms5_datadict` VALUES ('488', '0', '27', '后台菜单', 'admin/menu', '', '', '1470234022', '1470234022', '0', '1');

-- ----------------------------
-- Table structure for ebcms5_datadictcate
-- ----------------------------
DROP TABLE IF EXISTS `ebcms5_datadictcate`;
CREATE TABLE `ebcms5_datadictcate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group` varchar(255) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '标题',
  `field` varchar(20) NOT NULL DEFAULT '' COMMENT '字段',
  `extend_id` varchar(255) NOT NULL DEFAULT '' COMMENT '扩展id',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '说明',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `sort` int(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `system` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '系统',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='数据字典分类表';

-- ----------------------------
-- Records of ebcms5_datadictcate
-- ----------------------------
INSERT INTO `ebcms5_datadictcate` VALUES ('3', '核心字典', '菜单分类', 'menutype', '10', '未填写', '2015', '2015', '1', '1', '1');
INSERT INTO `ebcms5_datadictcate` VALUES ('4', '核心字典', '附件分类', 'attachtype', '', '', '2015', '2015', '44', '1', '1');
INSERT INTO `ebcms5_datadictcate` VALUES ('5', '核心字典', '模板分类', 'tpltype', '', '', '2015', '2015', '1', '1', '1');
INSERT INTO `ebcms5_datadictcate` VALUES ('6', '核心字典', '配置解析类型', 'configtype', '', '', '2015', '2015', '99', '1', '1');
INSERT INTO `ebcms5_datadictcate` VALUES ('9', '核心字典', '内容调用方式', 'recursion', '', '', '2015', '2015', '1', '1', '1');
INSERT INTO `ebcms5_datadictcate` VALUES ('14', '核心字典', '秒', 'second', '', '', '2015', '2015', '1', '1', '1');
INSERT INTO `ebcms5_datadictcate` VALUES ('22', '核心字典', '表单认证类型', 'formvalidtype', '1', '', '2015', '2015', '2', '1', '1');
INSERT INTO `ebcms5_datadictcate` VALUES ('27', '核心字典', '常用模型', 'models', '0', '常用模型', '1470233817', '1470233817', '0', '1', '1');

-- ----------------------------
-- Table structure for ebcms5_extend
-- ----------------------------
DROP TABLE IF EXISTS `ebcms5_extend`;
CREATE TABLE `ebcms5_extend` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '节点ID',
  `group` varchar(255) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '说明',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `locked` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否锁定',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='扩展表';

-- ----------------------------
-- Records of ebcms5_extend
-- ----------------------------
INSERT INTO `ebcms5_extend` VALUES ('1', '内容扩展', '产品扩展', '', '9', '1467854024', '2015', '1', '0');
INSERT INTO `ebcms5_extend` VALUES ('2', '导航扩展', '顶部导航', '', '7', '2015', '2015', '1', '0');
INSERT INTO `ebcms5_extend` VALUES ('3', '推荐扩展', '扩展1', '', '5', '1469414392', '2015', '1', '0');
INSERT INTO `ebcms5_extend` VALUES ('4', '字典扩展', '地区扩展', '', '3', '2016', '2016', '1', '0');
INSERT INTO `ebcms5_extend` VALUES ('8', '内容扩展', '图集扩展', '', '0', '1467988554', '1467988554', '1', '0');

-- ----------------------------
-- Table structure for ebcms5_extendfield
-- ----------------------------
DROP TABLE IF EXISTS `ebcms5_extendfield`;
CREATE TABLE `ebcms5_extendfield` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类',
  `group` varchar(250) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(250) NOT NULL DEFAULT '' COMMENT '标题',
  `name` char(40) NOT NULL DEFAULT '' COMMENT '键',
  `value` text COMMENT '默认值',
  `type` varchar(255) NOT NULL DEFAULT '' COMMENT '表单类型',
  `config` text COMMENT '表单配置',
  `remark` text COMMENT '表单说明',
  `sort` int(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='扩展字段表';

-- ----------------------------
-- Records of ebcms5_extendfield
-- ----------------------------
INSERT INTO `ebcms5_extendfield` VALUES ('13', '1', '产品资料', '产品图', 'pics', '', 'form_images', '', '', '0', '1469000565', '2016', '1');
INSERT INTO `ebcms5_extendfield` VALUES ('2', '2', '其他设置', '字体颜色', 'color', '', 'form_radio', '{\"disabled\":\"0\",\"readonly\":\"0\",\"values\":\"红|red\\r\\n绿|green\\r\\n蓝|blue\"}', '', '2', '1469458529', '2015', '1');
INSERT INTO `ebcms5_extendfield` VALUES ('4', '3', '扩展', '推荐理由', 'tjly', '', 'form_multitextbox', '', '', '0', '1469414360', '2015', '1');
INSERT INTO `ebcms5_extendfield` VALUES ('21', '3', '扩展', '单选', 'radio', 'beijing', 'form_radio', '{\"disabled\":\"0\",\"readonly\":\"0\",\"values\":\"哈哈|haha\\r\\n中国|china\\r\\n北京|beijing\"}', '', '0', '1469453506', '1469453479', '1');
INSERT INTO `ebcms5_extendfield` VALUES ('19', '4', '基本信息', '国家代号', 'daihao', '', 'form_textbox', '', '', '0', '1469412670', '1469412670', '1');
INSERT INTO `ebcms5_extendfield` VALUES ('20', '4', '基本信息', '国旗', 'guoqi', '', 'form_textbox', '', '', '0', '1469412697', '1469412697', '1');
INSERT INTO `ebcms5_extendfield` VALUES ('14', '1', '产品资料', '价格', 'price', '', 'form_textbox', '{\"datadict\":\"area\",\"editable\":\"1\",\"required\":\"1\",\"rootitem\":\"1\",\"disabled\":\"0\",\"readonly\":\"0\",\"prompt\":\"\"}', '', '9', '1469413244', '1457573415', '1');
INSERT INTO `ebcms5_extendfield` VALUES ('16', '8', '图集管理', '图集', 'pics', '', 'form_images', '{\"required\":\"0\",\"disabled\":\"0\",\"readonly\":\"0\",\"extensions\":\"\",\"prompt\":\"\"}', '', '0', '1469411114', '1467988587', '1');
INSERT INTO `ebcms5_extendfield` VALUES ('17', '1', '更多参数', '参数', 'param', '', 'form_extend', '{\"required\":\"0\",\"disabled\":\"0\",\"readonly\":\"0\",\"height\":\"\",\"width\":\"\",\"maxlength\":\"\",\"minlength\":\"\",\"prompt\":\"\"}', '', '0', '1469413279', '1468162609', '1');
INSERT INTO `ebcms5_extendfield` VALUES ('22', '3', '扩展', '多选', 'checkbox', 'black', 'form_checkbox', '{\"disabled\":\"0\",\"readonly\":\"0\",\"values\":\"红色|red\\r\\n绿色|green\\r\\n黑色|black\\r\\n灰色|gray\"}', '', '0', '1469453546', '1469453528', '1');
INSERT INTO `ebcms5_extendfield` VALUES ('23', '1', '阿斯蒂芬', '但文本扩展', 'xxx1', '', 'form_select', '{\"values\":\"红色|red\\r\\n绿色|green\\r\\n黑色|black\\r\\n灰色|gray\",\"editable\":\"1\",\"readonly\":\"0\",\"disabled\":\"0\"}', '', '0', '1470234436', '1469868152', '1');

-- ----------------------------
-- Table structure for ebcms5_form
-- ----------------------------
DROP TABLE IF EXISTS `ebcms5_form`;
CREATE TABLE `ebcms5_form` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '节点ID',
  `group` varchar(255) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '说明',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `ext` text COMMENT '扩展信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=148 DEFAULT CHARSET=utf8 COMMENT='表单表';

-- ----------------------------
-- Records of ebcms5_form
-- ----------------------------
INSERT INTO `ebcms5_form` VALUES ('19', '表单配置', '单行文本', 'form_textbox', '', '101', '2015', '2015', '1', '');
INSERT INTO `ebcms5_form` VALUES ('20', '表单配置', '布尔选项', 'form_bool', '', '56', '2015', '2015', '1', '');
INSERT INTO `ebcms5_form` VALUES ('21', '表单配置', '隐藏域', 'form_hidden', '', '1', '2015', '2015', '1', '');
INSERT INTO `ebcms5_form` VALUES ('22', '表单配置', '百度编辑器', 'form_ueditor', '', '86', '2015', '2015', '1', '');
INSERT INTO `ebcms5_form` VALUES ('23', '表单配置', '数字框', 'form_numberbox', '', '91', '2015', '2015', '1', '');
INSERT INTO `ebcms5_form` VALUES ('24', '表单配置', '图片', 'form_image', '', '69', '2015', '2015', '1', '');
INSERT INTO `ebcms5_form` VALUES ('25', '表单配置', '多图上传', 'form_images', '', '66', '2015', '2015', '1', '');
INSERT INTO `ebcms5_form` VALUES ('26', '表单配置', '附件', 'form_file', '', '68', '2015', '2015', '1', '');
INSERT INTO `ebcms5_form` VALUES ('27', '表单配置', '多附件', 'form_files', '', '62', '2015', '2015', '1', '');
INSERT INTO `ebcms5_form` VALUES ('28', '表单配置', '日期', 'form_datebox', '', '33', '2015', '2015', '1', '');
INSERT INTO `ebcms5_form` VALUES ('29', '表单配置', '时间', 'form_time', '', '31', '2016', '2015', '1', '');
INSERT INTO `ebcms5_form` VALUES ('30', '表单配置', '时间日期', 'form_datetimebox', '', '32', '2015', '2015', '1', '');
INSERT INTO `ebcms5_form` VALUES ('32', '表单配置', '下拉选项（数据源）', 'form_combotree', '', '45', '1457272266', '2015', '1', '');
INSERT INTO `ebcms5_form` VALUES ('33', '表单配置', '多行文本', 'form_multitextbox', '', '97', '2015', '2015', '1', '');
INSERT INTO `ebcms5_form` VALUES ('34', '表单配置', '数据字典', 'form_datadict', '', '47', '2015', '2015', '1', '');
INSERT INTO `ebcms5_form` VALUES ('47', '模板管理', '添加', 'admin_template_add', '', '121', '2015', '2015', '1', '');
INSERT INTO `ebcms5_form` VALUES ('48', '模板管理', '修改', 'admin_template_edit', '', '1', '2015', '2015', '1', '');
INSERT INTO `ebcms5_form` VALUES ('54', '扩展管理', '添加扩展', 'admin_extend_add', '', '141', '1467988370', '2015', '1', '{\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('55', '扩展管理', '修改扩展', 'admin_extend_edit', '', '71', '1467988376', '2015', '1', '{\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('56', '扩展管理', '添加字段', 'admin_extendfield_add', '', '60', '1467988383', '2015', '1', '{\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('57', '扩展管理', '修改字段', 'admin_extendfield_edit', '', '1', '1467988389', '2015', '1', '{\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('64', '表单配置', '单选', 'form_radio', '', '72', '2015', '2015', '1', '');
INSERT INTO `ebcms5_form` VALUES ('65', '表单配置', '复选', 'form_checkbox', '', '71', '2015', '2015', '1', '');
INSERT INTO `ebcms5_form` VALUES ('66', '数据字典', '添加字典分类', 'admin_datadictcate_add', '', '128', '1468488877', '2015', '1', '{\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('67', '数据字典', '修改字典分类', 'admin_datadictcate_edit', '', '86', '1468488881', '2015', '1', '{\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('68', '数据字典', '添加字典', 'admin_datadict_add', '', '59', '1468488885', '2015', '1', '{\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('69', '数据字典', '修改字典', 'admin_datadict_edit', '', '1', '1468488889', '2015', '1', '{\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('76', '内容管理', '添加分类', 'content_category_add', '', '160', '1471178788', '2015', '1', '{\"submit_alert\":\"0\",\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('77', '内容管理', '修改分类', 'content_category_edit', '', '49', '1471178795', '2015', '1', '{\"submit_alert\":\"0\",\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('78', '内容管理', '添加内容', 'content_content_add', '', '39', '1471178807', '2015', '1', '{\"submit_alert\":\"0\",\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('79', '内容管理', '修改内容', 'content_content_edit', '', '38', '1471178812', '2015', '1', '{\"submit_alert\":\"0\",\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('80', '导航管理', '添加导航', 'admin_nav_add', '', '155', '2015', '2015', '1', '');
INSERT INTO `ebcms5_form` VALUES ('81', '导航管理', '修改导航', 'admin_nav_edit', '', '50', '2015', '2015', '1', '');
INSERT INTO `ebcms5_form` VALUES ('82', '导航管理', '添加导航分类', 'admin_navcate_add', '', '30', '2015', '2015', '1', '');
INSERT INTO `ebcms5_form` VALUES ('83', '导航管理', '修改导航分类', 'admin_navcate_edit', '', '20', '2015', '2015', '1', '');
INSERT INTO `ebcms5_form` VALUES ('84', '友情链接', '添加友情链接', 'admin_link_add', '', '154', '1471178853', '2015', '1', '{\"submit_alert\":\"0\",\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('85', '友情链接', '修改友情链接', 'admin_link_edit', '', '1', '1471178862', '2015', '1', '{\"submit_alert\":\"0\",\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('86', '留言中心', '修改留言', 'admin_guestbook_edit', '', '153', '1471178872', '2015', '1', '{\"submit_alert\":\"0\",\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('87', '留言中心', '回复留言', 'admin_guestbook_reply', '', '50', '1471178877', '2015', '1', '{\"submit_alert\":\"0\",\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('88', '推荐管理', '添加推荐位', 'admin_recommendcate_add', '', '152', '1471178889', '2015', '1', '{\"submit_alert\":\"0\",\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('89', '推荐管理', '修改推荐位', 'admin_recommendcate_edit', '', '45', '1471178893', '2015', '1', '{\"submit_alert\":\"0\",\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('90', '推荐管理', '添加推荐内容', 'admin_recommend_add', '', '40', '1471178902', '2015', '1', '{\"submit_alert\":\"0\",\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('91', '推荐管理', '修改推荐内容', 'admin_recommend_edit', '', '35', '1471178909', '2015', '1', '{\"submit_alert\":\"0\",\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('98', '基本表单', '修改密码', 'admin_index_password', '', '122', '2016', '2016', '1', '');
INSERT INTO `ebcms5_form` VALUES ('107', '表单配置', '下拉选项（枚举）', 'form_select', '', '44', '1457272331', '1457272331', '1', '');
INSERT INTO `ebcms5_form` VALUES ('108', '自定义配置', '添加', 'admin_config_add', '', '128', '1468484127', '1457591227', '1', '{\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('109', '自定义配置', '修改', 'admin_config_edit', '', '1', '1468484138', '1457591250', '1', '{\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('110', '单页管理', '添加单页', 'admin_single_add', '', '240', '1471178763', '1460040107', '1', '{\"submit_alert\":\"0\",\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('111', '单页管理', '修改单页', 'admin_single_edit', '', '0', '1471178774', '1460040129', '1', '{\"submit_alert\":\"0\",\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('117', '表单配置', '扩展类型', 'form_extend', '扩展类型表单。强大的表单。', '2', '0', '0', '1', '');
INSERT INTO `ebcms5_form` VALUES ('129', '基本表单', '地址替换', 'admin_index_replaceattachbaseurl', '', '0', '1468045970', '0', '1', '{\"submit_alert\":\"1\",\"submit_msg\":\"<p><span style=\\\"color: rgb(255, 0, 0);\\\"><strong>\\u8be5\\u64cd\\u4f5c\\u76f8\\u5f53\\u5371\\u9669\\uff01<\\/strong><\\/span><\\/p><p><span style=\\\"color: rgb(255, 0, 0);\\\"><strong>\\u4e00\\u65e6\\u63d0\\u4ea4\\uff0c\\u65e0\\u6cd5\\u6062\\u590d!<\\/strong><\\/span><\\/p><p><span style=\\\"color: rgb(255, 0, 0);\\\"><strong>\\u5efa\\u8bae\\u60a8\\u6267\\u884c\\u6b64\\u64cd\\u4f5c\\u524d\\u5148\\u5907\\u4efd\\u6570\\u636e\\u5e93!<\\/strong><\\/span><\\/p><p>\\u4f60\\u786e\\u5b9a\\u8981\\u63d0\\u4ea4\\u5417\\uff1f<\\/p>\"}');
INSERT INTO `ebcms5_form` VALUES ('136', '内容管理', '内容批量移动', 'content_content_move', '', '37', '1471178817', '1468979536', '1', '{\"submit_alert\":\"1\",\"submit_msg\":\"&lt;p&gt;如果移动的内容和移动到的栏目的模型不一样，会造成移动的内容中模型不一样的那一部分数据的自定义扩展内容数据丢失，但主体内容数据不会丢失！&lt;\\/p&gt;&lt;p&gt;提交吗？&lt;\\/p&gt;\"}');
INSERT INTO `ebcms5_form` VALUES ('137', '内容管理', '合并', 'content_category_merge', '', '48', '1471178801', '1468985263', '1', '{\"submit_alert\":\"1\",\"submit_msg\":\"&lt;p&gt;不同模型之间的栏目合并，如果和目标栏目模型不一样，&lt;strong&gt;会造成这些栏目下面的内容的自定义扩展数据丢失&lt;\\/strong&gt;，但主体内容不受影响！&lt;\\/p&gt;&lt;p&gt;&lt;strong&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;提交吗？&lt;\\/span&gt;&lt;\\/strong&gt;&lt;\\/p&gt;\"}');
INSERT INTO `ebcms5_form` VALUES ('138', '表单配置', '单行文本扩展', 'form_extendtext', '', '3', '1469868111', '1469868111', '1', '{\"submit_alert\":\"0\",\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('139', '表单配置', '关键字', 'form_keywords', '', '4', '1470312668', '1470312668', '1', '{\"submit_alert\":\"0\",\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('142', '万能表单', '添加表单', 'forms_forms_add', '', '0', '1471841830', '1471841830', '1', '{\"submit_alert\":\"0\",\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('143', '万能表单', '编辑表单', 'forms_forms_edit', '', '0', '1471841841', '1471841841', '1', '{\"submit_alert\":\"0\",\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('144', '万能表单', '添加字段', 'forms_formsfield_add', '', '0', '1471841855', '1471841855', '1', '{\"submit_alert\":\"0\",\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('145', '万能表单', '编辑字段', 'forms_formsfield_edit', '', '0', '1471841866', '1471841866', '1', '{\"submit_alert\":\"0\",\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('146', '公告管理', '添加公告', 'bulletin_bulletin_add', '', '0', '1471841888', '1471841888', '1', '{\"submit_alert\":\"0\",\"submit_msg\":\"\"}');
INSERT INTO `ebcms5_form` VALUES ('147', '公告管理', '编辑公告', 'bulletin_bulletin_edit', '', '0', '1471841898', '1471841898', '1', '{\"submit_alert\":\"0\",\"submit_msg\":\"\"}');

-- ----------------------------
-- Table structure for ebcms5_formfield
-- ----------------------------
DROP TABLE IF EXISTS `ebcms5_formfield`;
CREATE TABLE `ebcms5_formfield` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类',
  `group` varchar(250) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(250) NOT NULL DEFAULT '' COMMENT '标题',
  `subtable` varchar(250) NOT NULL DEFAULT '' COMMENT '副表',
  `extfield` varchar(250) NOT NULL DEFAULT '' COMMENT '扩展字段',
  `name` char(40) NOT NULL DEFAULT '' COMMENT '键',
  `defaultvaluetype` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '取值类型',
  `defaultvalue` text COMMENT '默认值',
  `type` varchar(255) NOT NULL DEFAULT '' COMMENT '表单类型',
  `config` text COMMENT '表单配置',
  `remark` text COMMENT '表单说明',
  `sort` int(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=911 DEFAULT CHARSET=utf8 COMMENT='表单字段表';

-- ----------------------------
-- Records of ebcms5_formfield
-- ----------------------------
INSERT INTO `ebcms5_formfield` VALUES ('352', '66', '基本信息', '扩展', '', '', 'extend_id', '0', '', 'form_combotree', '{\"model\":\"admin\\/extend\",\"editable\":\"0\",\"disabled\":\"0\",\"readonly\":\"0\",\"rootitem\":\"1\",\"tree\":\"0\",\"prompt\":\"\",\"queryparams\":\"group|eq|\\u5b57\\u5178\\u6269\\u5c55\",\"pid\":\"\",\"textfield\":\"\",\"valuefield\":\"\",\"width\":\"\"}', '可以进入左上角的扩展  自定义更多字段扩展', '20', '1468489552', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('353', '66', '基本信息', '备注', '', '', 'remark', '0', '', 'form_multitextbox', '', '', '14', '1470233279', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('10', '11', '阿斯顿发', '附件', '', '', 'attachment', '0', '', 'form_files', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('72', '31', '基本配置', '是否必填', '', 'config', 'required', '3', 'required', 'form_bool', '', '', '50', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('26', '19', '基本配置', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('71', '31', '基本配置', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('27', '19', '基本配置', '是否必填', '', 'config', 'required', '3', 'required', 'form_bool', '', '', '45', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('32', '33', '基本配置', '宽度', '', 'config', 'width', '3', 'width', 'form_numberbox', '', '不填写表示 100% ', '30', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('29', '33', '基本配置', '是否必填', '', 'config', 'required', '3', 'required', 'form_bool', '', '', '48', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('30', '33', '基本配置', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('31', '33', '基本配置', '高度', '', 'config', 'height', '3', 'height', 'form_numberbox', '', '这里是指行数。默认5', '31', '1468487028', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('39', '19', '基本配置', '是否只读', '', 'config', 'readonly', '3', 'readonly', 'form_bool', '', '', '40', '1457834503', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('34', '33', '基本配置', '提示字符', '', 'config', 'prompt', '3', 'prompt', 'form_textbox', '{\"width\":\"\",\"prompt\":\"\",\"maxlength\":\"\",\"minlength\":\"\",\"validtype\":\"\",\"required\":\"0\"}', '', '15', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('36', '33', '基本配置', '是否失效', '', 'config', 'disabled', '3', 'disabled', 'form_bool', '', '', '45', '1457834547', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('41', '19', '基本配置', '提示字符', '', 'config', 'prompt', '3', 'prompt', 'form_textbox', '{\"width\":\"\",\"prompt\":\"\",\"maxlength\":\"\",\"minlength\":\"\",\"validtype\":\"\",\"required\":\"0\"}', '', '5', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('42', '33', '基本配置', '最少字符数', '', 'config', 'minlength', '3', 'minlength', 'form_numberbox', '', '默认0', '20', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('43', '33', '基本配置', '最大字符数', '', 'config', 'maxlength', '3', 'maxlength', 'form_numberbox', '', '默认999999', '21', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('45', '34', '基本配置', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('47', '34', '基本配置', '是否必填', '', 'config', 'required', '3', 'required', 'form_bool', '', '', '45', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('48', '34', '基本配置', '提示字符', '', 'config', 'prompt', '3', 'prompt', 'form_textbox', '', '', '10', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('53', '34', '基本配置', '是否失效', '', 'config', 'disabled', '3', 'disabled', 'form_bool', '', '', '30', '1457835284', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('55', '34', '基本配置', '数据来源', '', 'config', 'datadict', '3', 'datadict', 'form_combotree', '{\"model\":\"admin\\/datadictcate\",\"editable\":\"0\",\"disabled\":\"0\",\"readonly\":\"0\",\"rootitem\":\"0\",\"tree\":\"0\",\"prompt\":\"\",\"queryparams\":\"\",\"pid\":\"\",\"textfield\":\"\",\"valuefield\":\"field\",\"width\":\"\"}', '', '50', '1459572401', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('56', '32', '基本配置', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('57', '32', '基本配置', '模型名称', '', 'config', 'model', '3', 'model', 'form_datadict', '{\"datadict\":\"models\",\"editable\":\"1\",\"required\":\"0\",\"rootitem\":\"0\",\"disabled\":\"0\",\"readonly\":\"0\",\"prompt\":\"\"}', '对应的后台的模型名称', '50', '1470234107', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('58', '32', '其他配置', '宽度', '', 'config', 'width', '3', 'width', 'form_numberbox', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('60', '32', '基本配置', '是否必填', '', 'config', 'required', '3', 'required', 'form_bool', '', '', '45', '1457835341', '2015', '0');
INSERT INTO `ebcms5_formfield` VALUES ('61', '32', '基本配置', '提示字符', '', 'config', 'prompt', '3', 'prompt', 'form_textbox', '', '', '10', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('63', '32', '基本配置', '是否失效', '', 'config', 'disabled', '3', 'disabled', 'form_bool', '', '', '43', '1457835349', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('567', '32', '基本配置', '树型化', '', 'config', 'tree', '3', 'tree', 'form_bool', '', '', '35', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('68', '32', '其他配置', '递归字段', '', 'config', 'pid', '3', 'pid', 'form_textbox', '', '通常请不要修改 默认pid', '30', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('69', '32', '基本配置', '根选项', '', 'config', 'rootitem', '3', 'rootitem', 'form_bool', '', '根选项开启后 所有条目都会在根选项之下，通常用于选择父级 默认0', '40', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('73', '31', '基本配置', '提示信息', '', 'config', 'prompt', '3', 'prompt', 'form_textbox', '', '', '35', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('74', '31', '基本配置', '是否只读', '', 'config', 'readonly', '3', 'readonly', 'form_bool', '', '', '30', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('75', '31', '基本配置', '是否失效', '', 'config', 'disabled', '3', 'disabled', 'form_bool', '', '', '10', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('76', '31', '基本配置', '是否可编辑', '', 'config', 'editable', '3', 'editable', 'form_bool', '', '', '40', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('77', '30', '基本配置', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('78', '29', '基本配置', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('79', '28', '基本配置', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('80', '27', '基本配置', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('81', '26', '基本配置', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('82', '25', '基本配置', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('83', '24', '基本配置', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('84', '23', '基本配置', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('85', '22', '基本配置', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('86', '21', '基本配置', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('87', '20', '基本配置', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('88', '19', '基本配置', '认证类型', '', 'config', 'validtype', '3', 'validtype', 'form_datadict', '{\"datadict\":\"formvalidtype\",\"required\":\"0\",\"rootitem\":\"1\",\"disabled\":\"0\",\"prompt\":\"\"}', '', '30', '2015', '2015', '0');
INSERT INTO `ebcms5_formfield` VALUES ('89', '34', '基本配置', '根选项', '', 'config', 'rootitem', '3', 'rootitem', 'form_bool', '', '', '40', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('90', '23', '基本配置', '最小值', '', 'config', 'min', '3', 'min', 'form_numberbox', '', '', '25', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('91', '23', '基本配置', '最大值', '', 'config', 'max', '3', 'max', 'form_numberbox', '', '', '30', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('97', '23', '基本配置', '是否必填', '', 'config', 'required', '3', 'required', 'form_bool', '', '', '45', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('99', '23', '基本配置', '提示信息', '', 'config', 'prompt', '3', 'prompt', 'form_textbox', '', '', '15', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('101', '23', '基本配置', '是否失效', '', 'config', 'disabled', '3', 'disabled', 'form_bool', '', '', '40', '1457834603', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('104', '22', '基本配置', '高度', '', 'config', 'initialframeheight', '3', 'initialframeheight', 'form_numberbox', '', '', '50', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('105', '22', '基本配置', '显示元素路径', '', 'config', 'elementpathenabled', '3', 'elementpathenabled', 'form_bool', '', '', '20', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('106', '22', '基本配置', '开启字数统计', '', 'config', 'wordcount', '3', 'wordcount', 'form_bool', '', '', '30', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('107', '22', '基本配置', '最大字符数', '', 'config', 'maximumwords', '3', 'maximumwords', 'form_numberbox', '{\"required\":\"0\",\"editable\":\"1\",\"readonly\":\"0\",\"max\":\"\",\"min\":\"\",\"prompt\":\"\",\"disabled\":\"0\",\"width\":\"\",\"prefix\":\"\",\"suffix\":\"\",\"groupseparator\":\"\",\"decimalseparator\":\"\",\"precision\":\"\"}', '', '40', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('108', '22', '基本配置', '自动高度', '', 'config', 'autoheightenabled', '3', 'autoheightenabled', 'form_bool', '', '', '45', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('112', '24', '基本配置', '允许的类型', '', 'config', 'extensions', '3', 'extensions', 'form_textbox', '', '多个类型用‘,’分割，例如：jpg,png,gif,bmp', '40', '1470233576', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('113', '24', '基本配置', '是否必填', '', 'config', 'required', '3', 'required', 'form_bool', '', '', '50', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('114', '24', '基本配置', '提示信息', '', 'config', 'prompt', '3', 'prompt', 'form_textbox', '', '', '20', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('116', '24', '基本配置', '是否失效', '', 'config', 'disabled', '3', 'disabled', 'form_bool', '', '', '45', '1457835074', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('118', '26', '基本配置', '允许的类型', '', 'config', 'extensions', '3', 'extensions', 'form_textbox', '', '多个类型用‘,’分割，例如：jpg,png,gif,bmp', '35', '1470233583', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('119', '26', '基本配置', '是否必填', '', 'config', 'required', '3', 'required', 'form_bool', '', '', '50', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('121', '26', '基本配置', '是否失效', '', 'config', 'disabled', '3', 'disabled', 'form_bool', '', '', '40', '1457835114', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('123', '25', '基本配置', '允许的类型', '', 'config', 'extensions', '3', 'extensions', 'form_textbox', '', '多个类型用‘,’分割，例如：jpg,png,gif,bmp', '40', '1470233593', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('124', '25', '基本配置', '是否失效', '', 'config', 'disabled', '3', 'disabled', 'form_bool', '', '', '45', '1457835154', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('126', '25', '基本配置', '是否必填', '', 'config', 'required', '3', 'required', 'form_bool', '', '', '50', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('127', '27', '基本配置', '允许的类型', '', 'config', 'extensions', '3', 'extensions', 'form_textbox', '', '多个类型用‘,’分割，例如：jpg,png,gif,bmp', '40', '1470233599', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('129', '27', '基本配置', '是否必填', '', 'config', 'required', '3', 'required', 'form_bool', '', '', '50', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('132', '27', '基本配置', '是否失效', '', 'config', 'disabled', '3', 'disabled', 'form_bool', '', '', '45', '1457835190', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('133', '28', '基本配置', '面板宽度', '', 'config', 'panelwidth', '3', 'panelwidth', 'form_numberbox', '', '默认180', '15', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('134', '28', '基本配置', '面板高度', '', 'config', 'panelheight', '3', 'panelheight', 'form_numberbox', '', '默认自动', '10', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('139', '28', '基本配置', '是否失效', '', 'config', 'disabled', '3', 'disabled', 'form_bool', '', '', '40', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('140', '28', '基本配置', '是否只读', '', 'config', 'readonly', '3', 'readonly', 'form_bool', '', '', '35', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('141', '28', '基本配置', '提示字符', '', 'config', 'prompt', '3', 'prompt', 'form_textbox', '', '', '25', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('142', '26', '基本配置', '提示字符', '', 'config', 'prompt', '3', 'prompt', 'form_textbox', '', '', '20', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('143', '25', '基本配置', '提示字符', '', 'config', 'prompt', '3', 'prompt', 'form_textbox', '', '', '20', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('144', '27', '基本配置', '提示字符', '', 'config', 'prompt', '3', 'prompt', 'form_textbox', '', '', '20', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('146', '30', '基本配置', '是否必填', '', 'config', 'required', '3', 'required', 'form_bool', '', '', '45', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('147', '28', '基本配置', '是否必填', '', 'config', 'required', '3', 'required', 'form_bool', '', '', '45', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('148', '30', '基本配置', '提示字符', '', 'config', 'prompt', '3', 'prompt', 'form_textbox', '', '', '30', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('149', '30', '基本配置', '是否只读', '', 'config', 'readonly', '3', 'readonly', 'form_bool', '', '', '35', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('150', '30', '基本配置', '是否失效', '', 'config', 'disabled', '3', 'disabled', 'form_bool', '', '', '40', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('158', '29', '基本配置', '是否必填', '', 'config', 'required', '3', 'required', 'form_bool', '', '', '50', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('160', '29', '基本配置', '是否失效', '', 'config', 'disabled', '3', 'disabled', 'form_bool', '', '', '40', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('161', '29', '基本配置', '是否只读', '', 'config', 'readonly', '3', 'readonly', 'form_bool', '', '', '30', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('190', '32', '其他配置', '查询条件', '', 'config', 'queryparams', '3', 'queryparams', 'form_multitextbox', '', '格式：字段|eq|value\r\n字段|eq|(I)value 添加(I)表示的是提交变量\r\n字段|eq|(@)value 添加(@)表示的是变量', '40', '1459578173', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('258', '47', '基本信息', '目录', '', '', 'title', '3', 'title', 'form_textbox', '{\"required\":\"1\",\"readonly\":\"1\",\"disabled\":\"0\",\"maxlength\":\"\",\"minlength\":\"\",\"validtype\":\"\",\"prompt\":\"\"}', '', '40', '1459084153', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('259', '47', '基本信息', '文件名', '', '', 'name', '0', 'newfile.txt', 'form_textbox', '{\"required\":\"1\",\"disabled\":\"0\",\"maxlength\":\"\",\"minlength\":\"\",\"validtype\":\"\",\"prompt\":\"\"}', '请填写完整的文件名 包含后缀', '30', '2016', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('260', '47', '基本信息', '路径', '', '', 'path', '1', 'path', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('261', '47', '基本信息', '内容', '', '', 'content', '0', '默认值，呵呵', 'form_multitextbox', '{\"required\":\"1\",\"disabled\":\"0\",\"height\":\"20\",\"width\":\"\",\"maxlength\":\"\",\"minlength\":\"0\",\"prompt\":\"\"}', '', '20', '2016', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('262', '48', '基本信息', '文件', '', '', 'title', '3', 'title', 'form_textbox', '{\"required\":\"1\",\"readonly\":\"1\",\"disabled\":\"0\",\"maxlength\":\"\",\"minlength\":\"\",\"validtype\":\"\",\"prompt\":\"\"}', '', '40', '1459084165', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('263', '48', '基本信息', '内容', '', '', 'content', '3', 'content', 'form_multitextbox', '{\"required\":\"0\",\"disabled\":\"0\",\"height\":\"20\",\"width\":\"\",\"maxlength\":\"\",\"minlength\":\"0\",\"prompt\":\"\"}', '', '30', '2016', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('264', '48', '基本信息', '文件路径', '', '', 'filename', '1', 'filename', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('281', '19', '基本配置', '最小字符数', '', 'config', 'minlength', '3', 'minlength', 'form_numberbox', '', '', '34', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('282', '19', '基本配置', '最多字符数', '', 'config', 'maxlength', '3', 'maxlength', 'form_numberbox', '', '', '35', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('283', '55', '基本信息', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('284', '55', '基本信息', '标题', '', '', 'title', '3', 'title', 'form_textbox', '{\"required\":\"1\",\"editable\":\"1\",\"maxlength\":\"\",\"minlength\":\"\",\"validtype\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"prompt\":\"\",\"width\":\"\"}', '', '97', '1457524594', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('338', '64', '基本配置', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('287', '55', '基本信息', '说明', '', '', 'remark', '3', 'remark', 'form_multitextbox', '', '', '46', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('291', '54', '基本信息', '标题', '', '', 'title', '0', '', 'form_textbox', '{\"required\":\"1\",\"editable\":\"1\",\"maxlength\":\"\",\"minlength\":\"\",\"validtype\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"prompt\":\"\",\"width\":\"\"}', '', '96', '1457524589', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('339', '64', '基本配置', '可选值', '', 'config', 'values', '3', 'values', 'form_multitextbox', '', '一样一个，用|分割键值对，例如：\r\n红色|red\r\n绿色|green\r\n黑色|black\r\n灰色|gray', '50', '1470233566', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('293', '54', '基本信息', '说明', '', '', 'remark', '0', '', 'form_multitextbox', '', '', '75', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('296', '57', '基本信息', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('297', '57', '基本信息', '分组', '', '', 'group', '3', 'group', 'form_textbox', '{\"required\":\"1\",\"editable\":\"1\",\"maxlength\":\"\",\"minlength\":\"\",\"validtype\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"prompt\":\"\",\"width\":\"\"}', '', '99', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('298', '57', '基本信息', '标题', '', '', 'title', '3', 'title', 'form_textbox', '{\"required\":\"1\",\"editable\":\"1\",\"maxlength\":\"\",\"minlength\":\"\",\"validtype\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"prompt\":\"\",\"width\":\"\"}', '', '95', '1457524606', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('299', '57', '基本信息', '字段', '', '', 'name', '3', 'name', 'form_textbox', '{\"required\":\"1\",\"editable\":\"1\",\"maxlength\":\"\",\"minlength\":\"\",\"validtype\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"prompt\":\"\",\"width\":\"\"}', '', '94', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('300', '57', '基本信息', '默认值', '', '', 'value', '3', 'value', 'form_multitextbox', '', '', '87', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('301', '57', '基本信息', '表单类型', '', '', 'type', '3', 'type', 'form_combotree', '{\"model\":\"admin\\/form\",\"editable\":\"0\",\"disabled\":\"0\",\"readonly\":\"0\",\"rootitem\":\"0\",\"tree\":\"0\",\"prompt\":\"\",\"queryparams\":\"group|eq|\\u8868\\u5355\\u914d\\u7f6e\",\"pid\":\"\",\"textfield\":\"\",\"valuefield\":\"name\",\"width\":\"\"}', '更改表单类型后 请更改上一行字段名称 否则可能报错', '93', '1470234585', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('302', '57', '基本信息', '说明', '', '', 'remark', '3', 'remark', 'form_multitextbox', '', '', '67', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('304', '56', '基本信息', '分组', '', '', 'group', '0', '', 'form_textbox', '{\"required\":\"1\",\"editable\":\"1\",\"maxlength\":\"\",\"minlength\":\"\",\"validtype\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"prompt\":\"\",\"width\":\"\"}', '', '99', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('305', '56', '基本信息', '标题', '', '', 'title', '0', '', 'form_textbox', '{\"required\":\"1\",\"editable\":\"1\",\"maxlength\":\"10\",\"minlength\":\"1\",\"validtype\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"prompt\":\"\",\"width\":\"\"}', '', '96', '1457524600', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('306', '56', '基本信息', '字段', '', '', 'name', '0', '', 'form_textbox', '{\"required\":\"1\",\"editable\":\"1\",\"maxlength\":\"20\",\"minlength\":\"1\",\"validtype\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"prompt\":\"\",\"width\":\"\"}', '', '89', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('307', '56', '基本信息', '默认值', '', '', 'value', '0', '', 'form_multitextbox', '', '', '78', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('308', '56', '基本信息', '表单类型', '', '', 'type', '0', '', 'form_combotree', '{\"model\":\"admin\\/form\",\"editable\":\"0\",\"disabled\":\"0\",\"readonly\":\"0\",\"rootitem\":\"0\",\"tree\":\"0\",\"prompt\":\"\",\"queryparams\":\"group|eq|\\u8868\\u5355\\u914d\\u7f6e\",\"pid\":\"\",\"textfield\":\"\",\"valuefield\":\"name\",\"width\":\"\"}', '', '80', '1460040920', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('309', '56', '基本信息', '说明', '', '', 'remark', '0', '', 'form_multitextbox', '', '', '60', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('650', '65', '基本信息', '是否只读', '', 'config', 'readonly', '3', 'readonly', 'form_bool', '', '', '70', '1457835028', '1457835028', '1');
INSERT INTO `ebcms5_formfield` VALUES ('571', '65', '基本信息', '是否失效', '', 'config', 'disabled', '3', 'disabled', 'form_bool', '', '', '99', '1457835011', '2016', '1');
INSERT INTO `ebcms5_formfield` VALUES ('343', '65', '基本信息', '可选值', '', 'config', 'values', '3', 'values', 'form_multitextbox', '', '一样一个，用|分割键值对，例如：\r\n红色|red\r\n绿色|green\r\n黑色|black\r\n灰色|gray', '50', '1470233559', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('342', '65', '基本信息', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('355', '67', '基本信息', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('356', '67', '基本信息', '分组', '', '', 'group', '3', 'group', 'form_textbox', '', '', '48', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('357', '67', '基本信息', '标题', '', '', 'title', '3', 'title', 'form_textbox', '', '', '44', '1457515428', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('358', '67', '基本信息', '字段', '', '', 'field', '3', 'field', 'form_textbox', '', '', '39', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('359', '67', '基本信息', '扩展', '', '', 'extend_id', '3', 'extend_id', 'form_combotree', '{\"model\":\"admin\\/extend\",\"editable\":\"0\",\"disabled\":\"0\",\"readonly\":\"0\",\"rootitem\":\"1\",\"tree\":\"0\",\"prompt\":\"\",\"queryparams\":\"group|eq|\\u5b57\\u5178\\u6269\\u5c55\",\"pid\":\"\",\"textfield\":\"\",\"valuefield\":\"\",\"width\":\"\"}', '可以进入左上角的扩展  自定义更多字段扩展', '35', '1468489564', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('360', '67', '基本信息', '备注', '', '', 'remark', '3', 'remark', 'form_multitextbox', '', '', '33', '1470233285', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('371', '69', '基本信息', '值', '', '', 'value', '3', 'value', 'form_multitextbox', '', '', '36', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('363', '68', '基本信息', '分类', '', '', 'category_id', '1', 'category_id', 'form_hidden', '{\"url\":\"Admin\\/Datadictcate\\/index\",\"rootitem\":\"0\",\"editable\":\"0\",\"disabled\":\"0\",\"readonly\":\"1\",\"prompt\":\"\",\"required\":\"1\",\"queryparams\":\"\",\"textfield\":\"\",\"pid\":\"\",\"validtype\":\"\",\"maxlength\":\"\",\"minlength\":\"\",\"height\":\"\",\"width\":\"\"}', '', '0', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('364', '68', '基本信息', '父级', '', '', 'pid', '1', 'pid', 'form_combotree', '{\"model\":\"admin\\/datadict\",\"editable\":\"0\",\"disabled\":\"0\",\"readonly\":\"0\",\"rootitem\":\"1\",\"tree\":\"1\",\"prompt\":\"\",\"queryparams\":\"category_id|eq|(I)category_id\",\"pid\":\"\",\"textfield\":\"\",\"valuefield\":\"\",\"width\":\"\"}', '', '47', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('365', '68', '基本信息', '标题', '', '', 'title', '0', '', 'form_textbox', '', '', '32', '1457515434', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('366', '68', '基本信息', '值', '', '', 'value', '0', '', 'form_multitextbox', '', '', '27', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('367', '68', '基本信息', '备注', '', '', 'remark', '0', '', 'form_multitextbox', '', '', '13', '1470233292', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('369', '69', '基本信息', '标题', '', '', 'title', '3', 'title', 'form_textbox', '', '', '42', '1457515442', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('370', '69', '基本信息', '父级', '', '', 'pid', '3', 'pid', 'form_combotree', '{\"model\":\"admin\\/datadict\",\"editable\":\"0\",\"disabled\":\"0\",\"readonly\":\"0\",\"rootitem\":\"1\",\"tree\":\"1\",\"prompt\":\"\",\"queryparams\":\"category_id|eq|(@)category_id\",\"pid\":\"\",\"textfield\":\"\",\"valuefield\":\"\",\"width\":\"\"}', '', '48', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('372', '69', '基本信息', '备注', '', '', 'remark', '3', 'remark', 'form_multitextbox', '', '', '19', '1470233299', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('374', '69', '基本信息', 'id', '', '', 'id', '3', 'id', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('375', '69', '基本信息', '分类', '', '', 'category_id', '3', 'category_id', 'form_hidden', '{\"url\":\"Admin\\/Datadictcate\\/index\",\"rootitem\":\"0\",\"editable\":\"0\",\"disabled\":\"0\",\"readonly\":\"1\",\"prompt\":\"\",\"required\":\"1\",\"queryparams\":\"\",\"textfield\":\"\",\"pid\":\"\",\"validtype\":\"\",\"maxlength\":\"\",\"minlength\":\"\",\"height\":\"\",\"width\":\"\"}', '', '0', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('422', '76', '基本信息', '父级', '', '', 'pid', '1', 'pid', 'form_combotree', '{\"model\":\"content/category\",\"editable\":\"0\",\"disabled\":\"0\",\"rootitem\":\"1\",\"tree\":\"1\",\"prompt\":\"\",\"queryparams\":\"\",\"pid\":\"\",\"textfield\":\"\",\"valuefield\":\"\",\"width\":\"\"}', '', '90', '1457504178', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('647', '23', '基本配置', '是否只读', '', 'config', 'readonly', '3', 'readonly', 'form_bool', '', '', '38', '1457834630', '1457834630', '1');
INSERT INTO `ebcms5_formfield` VALUES ('648', '64', '基本配置', '是否只读', '', 'config', 'readonly', '3', 'readonly', 'form_bool', '', '', '55', '1457834949', '1457834919', '1');
INSERT INTO `ebcms5_formfield` VALUES ('649', '64', '基本配置', '是否失效', '', 'config', 'disabled', '3', 'disabled', 'form_bool', '', '', '60', '1457834943', '1457834943', '1');
INSERT INTO `ebcms5_formfield` VALUES ('424', '76', '基本信息', '名称', '', '', 'name', '0', '', 'form_textbox', '{\"required\":\"1\",\"editable\":\"1\",\"maxlength\":\"20\",\"minlength\":\"2\",\"validtype\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"prompt\":\"\\u8bf7\\u586b\\u5199\\u82f1\\u6587\\u5b57\\u7b26\",\"width\":\"\"}', '请填写英文字符，高级模式生效', '80', '1470232299', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('425', '76', '高级设置', '字段扩展', '', '', 'extend_id', '0', '', 'form_combotree', '{\"model\":\"admin/extend\",\"editable\":\"0\",\"disabled\":\"0\",\"readonly\":\"0\",\"rootitem\":\"1\",\"tree\":\"0\",\"prompt\":\"\",\"queryparams\":\"group|eq|\\u5185\\u5bb9\\u6269\\u5c55\",\"pid\":\"\",\"textfield\":\"\",\"valuefield\":\"\",\"width\":\"\"}', '', '41', '1468825542', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('426', '76', '高级设置', '内容页模板', '', '', 'tpl_detail', '0', '', 'form_textbox', '', '', '21', '1468825562', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('427', '76', '高级设置', '列表页模板', '', '', 'tpl', '0', '', 'form_textbox', '', '', '22', '1468825558', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('428', '76', '高级设置', '列表分页大小', '', '', 'pagenum', '0', '20', 'form_numberbox', '', '0 表示不分页', '33', '1468825546', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('429', '76', '基本信息', '标题', '', '', 'title', '0', '', 'form_textbox', '{\"required\":\"0\",\"editable\":\"1\",\"maxlength\":\"80\",\"minlength\":\"\",\"validtype\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"prompt\":\"\",\"width\":\"\"}', '', '85', '1457833405', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('430', '76', '基本信息', '关键字', '', '', 'keywords', '0', '', 'form_keywords', '{\"field\":\"\",\"strong\":\"0\"}', '', '74', '1470319488', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('431', '76', '基本信息', '摘要', '', '', 'description', '0', '', 'form_multitextbox', '{\"required\":\"0\",\"height\":\"\",\"width\":\"\",\"editable\":\"1\",\"maxlength\":\"255\",\"minlength\":\"\",\"validtype\":\"\",\"prompt\":\"\",\"readonly\":\"0\",\"disabled\":\"0\"}', '', '73', '1457833417', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('433', '77', '基本信息', '父级', '', '', 'pid', '3', 'pid', 'form_combotree', '{\"model\":\"content/category\",\"editable\":\"0\",\"disabled\":\"0\",\"rootitem\":\"1\",\"tree\":\"1\",\"prompt\":\"\",\"queryparams\":\"\",\"pid\":\"\",\"textfield\":\"\",\"valuefield\":\"\",\"width\":\"\"}', '', '90', '1457504174', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('645', '19', '基本配置', '是否失效', '', 'config', 'disabled', '3', 'disabled', 'form_bool', '', '', '38', '1457834468', '1457834468', '1');
INSERT INTO `ebcms5_formfield` VALUES ('646', '33', '基本配置', '是否只读', '', 'config', 'readonly', '3', 'readonly', 'form_bool', '', '', '40', '1457834535', '1457834535', '1');
INSERT INTO `ebcms5_formfield` VALUES ('435', '77', '基本信息', '名称', '', '', 'name', '3', 'name', 'form_textbox', '{\"required\":\"1\",\"editable\":\"1\",\"maxlength\":\"\",\"minlength\":\"\",\"validtype\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"prompt\":\"\",\"width\":\"\"}', '请填写英文字符，高级模式生效', '80', '1470232307', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('436', '77', '高级设置', '字段扩展', '', '', 'extend_id', '3', 'extend_id', 'form_combotree', '{\"model\":\"admin/extend\",\"editable\":\"0\",\"disabled\":\"0\",\"readonly\":\"0\",\"rootitem\":\"1\",\"tree\":\"0\",\"prompt\":\"\",\"queryparams\":\"group|eq|\\u5185\\u5bb9\\u6269\\u5c55\",\"pid\":\"\",\"textfield\":\"\",\"valuefield\":\"\",\"width\":\"\"}', '', '41', '1468825501', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('437', '77', '高级设置', '列表页模板', '', '', 'tpl', '3', 'tpl', 'form_textbox', '', '', '22', '1468825518', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('438', '77', '高级设置', '列表页分页大小', '', '', 'pagenum', '3', 'pagenum', 'form_numberbox', '', '0 表示不分页', '33', '1468825507', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('439', '77', '高级设置', '内容页模板', '', '', 'tpl_detail', '3', 'tpl_detail', 'form_textbox', '', '', '21', '1468825521', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('440', '77', '基本信息', '标题', '', '', 'title', '3', 'title', 'form_textbox', '', '', '85', '1457833347', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('441', '77', '基本信息', '关键字', '', '', 'keywords', '3', 'keywords', 'form_keywords', '', '', '74', '1470312727', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('442', '77', '基本信息', '摘要', '', '', 'description', '3', 'description', 'form_multitextbox', '', '', '73', '1457833359', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('444', '77', '基本信息', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('445', '79', '基本信息', '标题', '', '', 'title', '3', 'title', 'form_textbox', '', '', '90', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('446', '79', '基本信息', '缩略图', '', '', 'thumb', '3', 'thumb', 'form_image', '', '', '20', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('447', '79', '基本信息', '内容', 'body', '', 'body', '3', 'body', 'form_ueditor', '', '', '10', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('448', '79', '基本信息', '关键字', '', '', 'keywords', '3', 'keywords', 'form_keywords', '{\"field\":\"body[body]\",\"strong\":\"1\"}', '', '60', '1470319455', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('449', '79', '高级设置', '摘要', '', '', 'description', '3', 'description', 'form_multitextbox', '', '', '50', '1469236244', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('450', '79', '高级设置', '模板', '', '', 'tpl', '3', 'tpl', 'form_textbox', '', '', '40', '1469236278', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('451', '79', '高级设置', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '0', '1469236417', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('818', '79', '基本信息', '栏目', '', '', 'category_id', '3', 'category_id', 'form_combotree', '{\"model\":\"content\\/category\",\"editable\":\"0\",\"disabled\":\"0\",\"readonly\":\"0\",\"rootitem\":\"0\",\"tree\":\"1\",\"prompt\":\"\",\"queryparams\":\"extend_id|eq|($)category.extend_id\",\"pid\":\"\",\"textfield\":\"\",\"valuefield\":\"\",\"width\":\"\"}', '', '250', '1468156625', '1468153990', '1');
INSERT INTO `ebcms5_formfield` VALUES ('454', '78', '基本信息', '分类', '', '', 'category_id', '1', 'category_id', 'form_combotree', '{\"model\":\"content\\/category\",\"editable\":\"0\",\"disabled\":\"0\",\"readonly\":\"0\",\"rootitem\":\"0\",\"tree\":\"1\",\"prompt\":\"\",\"queryparams\":\"extend_id|eq|($)category.extend_id\",\"pid\":\"\",\"textfield\":\"\",\"valuefield\":\"\",\"width\":\"\"}', '', '90', '1468161897', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('455', '78', '基本信息', '标题', '', '', 'title', '0', '', 'form_textbox', '', '', '50', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('456', '78', '基本信息', '缩略图', '', '', 'thumb', '0', '', 'form_image', '', '', '30', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('457', '78', '基本信息', '内容', '', 'body', 'body', '0', '', 'form_ueditor', '', '', '20', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('458', '78', '基本信息', '关键字', '', '', 'keywords', '0', '', 'form_keywords', '{\"field\":\"body[body]\",\"strong\":\"1\"}', '', '60', '1470319466', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('459', '78', '高级设置', '摘要', '', '', 'description', '0', '', 'form_multitextbox', '', '', '50', '1469235130', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('461', '78', '高级设置', '模板', '', '', 'tpl', '0', '', 'form_textbox', '', '', '40', '1469235144', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('468', '83', '基本信息', '标题', '', '', 'title', '3', 'title', 'form_textbox', '', '', '50', '1457524648', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('464', '82', '基本信息', '标题', '', '', 'title', '0', '', 'form_textbox', '', '', '35', '1457524642', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('465', '82', '基本信息', '标识', '', '', 'mark', '0', '', 'form_textbox', '', '', '30', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('466', '82', '基本信息', '扩展', '', '', 'extend_id', '0', '', 'form_combotree', '{\"model\":\"admin/extend\",\"editable\":\"0\",\"disabled\":\"0\",\"readonly\":\"0\",\"rootitem\":\"1\",\"tree\":\"1\",\"prompt\":\"\",\"queryparams\":\"group|eq|\\u5bfc\\u822a\\u6269\\u5c55\",\"pid\":\"\",\"textfield\":\"\",\"valuefield\":\"\",\"width\":\"\"}', '', '25', '1470232935', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('469', '83', '基本信息', '标识', '', '', 'mark', '3', 'mark', 'form_textbox', '', '', '45', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('470', '83', '基本信息', '扩展', '', '', 'extend_id', '3', 'extend_id', 'form_combotree', '{\"model\":\"admin/extend\",\"editable\":\"0\",\"disabled\":\"0\",\"readonly\":\"0\",\"rootitem\":\"1\",\"tree\":\"0\",\"prompt\":\"\",\"queryparams\":\"group|eq|\\u5bfc\\u822a\\u6269\\u5c55\",\"pid\":\"\",\"textfield\":\"\",\"valuefield\":\"\",\"width\":\"\"}', '', '30', '1470232941', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('472', '83', '基本信息', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('473', '80', '基本信息', '分类', '', '', 'category_id', '1', 'category_id', 'form_hidden', '', '', '50', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('474', '80', '基本信息', '父级', '', '', 'pid', '1', 'pid', 'form_combotree', '{\"model\":\"nav\",\"disabled\":\"0\",\"rootitem\":\"1\",\"tree\":\"1\",\"prompt\":\"\",\"queryparams\":\"category_id|eq|(I)category_id\",\"pid\":\"\",\"textfield\":\"\",\"valuefield\":\"\",\"width\":\"\"}', '', '45', '2016', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('475', '80', '基本信息', '标题', '', '', 'title', '0', '', 'form_textbox', '', '', '40', '1457524622', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('476', '80', '基本信息', '链接地址', '', '', 'ebcms_url', '0', '', 'form_textbox', '', '', '35', '1469454708', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('478', '56', '基本信息', '分类', '', '', 'category_id', '1', 'category_id', 'form_hidden', '', '', '2', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('479', '81', '基本信息', '父级', '', '', 'pid', '3', 'pid', 'form_combotree', '{\"model\":\"nav\",\"disabled\":\"0\",\"rootitem\":\"1\",\"tree\":\"1\",\"prompt\":\"\",\"queryparams\":\"category_id|eq|(@)category_id\",\"pid\":\"\",\"textfield\":\"\",\"valuefield\":\"\",\"width\":\"\"}', '', '45', '1470232774', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('480', '81', '基本信息', '标题', '', '', 'title', '3', 'title', 'form_textbox', '', '', '40', '1457524630', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('481', '81', '基本信息', '链接地址', '', '', 'ebcms_url', '3', 'ebcms_url', 'form_textbox', '', '', '35', '1470232739', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('483', '81', '基本信息', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('484', '81', '基本信息', '分类', '', '', 'category_id', '3', 'category_id', 'form_hidden', '', '', '0', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('485', '85', '基本信息', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '0', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('486', '85', '基本信息', '名称', '', '', 'title', '3', 'title', 'form_textbox', '', '', '45', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('487', '85', '基本信息', '链接', '', '', 'url', '3', 'url', 'form_textbox', '{\"required\":\"1\",\"editable\":\"1\",\"maxlength\":\"\",\"minlength\":\"\",\"validtype\":\"url\",\"readonly\":\"0\",\"disabled\":\"0\",\"prompt\":\"\",\"width\":\"\"}', '', '40', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('488', '85', '基本信息', 'LOGO', '', '', 'logo', '3', 'logo', 'form_image', '', '', '35', '2016', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('489', '85', '基本信息', '简介', '', '', 'description', '3', 'description', 'form_multitextbox', '', '', '30', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('490', '85', '基本信息', '备注', '', '', 'info', '3', 'info', 'form_multitextbox', '', '', '25', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('492', '84', '基本信息', '名称', '', '', 'title', '0', '', 'form_textbox', '', '', '45', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('493', '84', '基本信息', '网址', '', '', 'url', '0', '', 'form_textbox', '{\"required\":\"1\",\"editable\":\"1\",\"maxlength\":\"\",\"minlength\":\"\",\"validtype\":\"url\",\"readonly\":\"0\",\"disabled\":\"0\",\"prompt\":\"\",\"width\":\"\"}', '', '40', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('494', '84', '基本信息', 'LOGO', '', '', 'logo', '0', '', 'form_image', '', '', '35', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('495', '84', '基本信息', '简介', '', '', 'description', '0', '', 'form_multitextbox', '', '', '30', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('496', '84', '基本信息', '备注', '', '', 'info', '0', '', 'form_multitextbox', '', '', '25', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('498', '85', '基本信息', '分组', '', '', 'group', '3', 'group', 'form_select', '{\"values\":\"\\u53cb\\u60c5\\u94fe\\u63a5|\\u53cb\\u60c5\\u94fe\\u63a5\\r\\n\\u5408\\u4f5c\\u4f19\\u4f34|\\u5408\\u4f5c\\u4f19\\u4f34\",\"editable\":\"1\",\"readonly\":\"0\",\"disabled\":\"0\"}', '', '50', '1459580809', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('499', '84', '基本信息', '分组', '', '', 'group', '0', '友情链接', 'form_select', '{\"values\":\"\\u53cb\\u60c5\\u94fe\\u63a5|\\u53cb\\u60c5\\u94fe\\u63a5\\r\\n\\u5408\\u4f5c\\u4f19\\u4f34|\\u5408\\u4f5c\\u4f19\\u4f34\",\"editable\":\"1\",\"readonly\":\"0\",\"disabled\":\"0\"}', '', '50', '1459580869', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('500', '86', '基本信息', '留言内容', '', '', 'content', '3', 'content', 'form_multitextbox', '{\"required\":\"1\",\"height\":\"\",\"width\":\"\",\"editable\":\"1\",\"maxlength\":\"\",\"minlength\":\"\",\"validtype\":\"\",\"prompt\":\"\",\"readonly\":\"0\",\"disabled\":\"0\"}', '', '45', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('501', '86', '基本信息', '回复内容', '', '', 'reply', '3', 'reply', 'form_multitextbox', '{\"required\":\"0\",\"height\":\"\",\"width\":\"\",\"editable\":\"0\",\"maxlength\":\"\",\"minlength\":\"\",\"validtype\":\"\",\"prompt\":\"\",\"readonly\":\"1\",\"disabled\":\"1\"}', '', '40', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('502', '86', '基本信息', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '0', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('503', '87', '基本信息', '留言内容', '', '', 'content', '3', 'content', 'form_multitextbox', '{\"required\":\"1\",\"height\":\"\",\"width\":\"\",\"editable\":\"0\",\"maxlength\":\"\",\"minlength\":\"\",\"validtype\":\"\",\"prompt\":\"\",\"readonly\":\"1\",\"disabled\":\"1\"}', '', '45', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('504', '87', '基本信息', '回复内容', '', '', 'reply', '3', 'reply', 'form_multitextbox', '{\"required\":\"1\",\"height\":\"\",\"width\":\"\",\"editable\":\"1\",\"maxlength\":\"\",\"minlength\":\"\",\"validtype\":\"\",\"prompt\":\"\",\"readonly\":\"0\",\"disabled\":\"0\"}', '', '40', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('505', '87', '基本信息', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '12', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('506', '88', '基本信息', '分组', '', '', 'group', '0', '默认分组', 'form_textbox', '{\"required\":\"1\",\"editable\":\"1\",\"maxlength\":\"\",\"minlength\":\"\",\"validtype\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"prompt\":\"\",\"width\":\"\"}', '', '50', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('507', '88', '基本信息', '标题', '', '', 'title', '0', '', 'form_textbox', '{\"required\":\"1\",\"editable\":\"1\",\"maxlength\":\"20\",\"minlength\":\"1\",\"validtype\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"prompt\":\"\",\"width\":\"\"}', '', '45', '1457524679', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('508', '88', '基本信息', '标识', '', '', 'mark', '0', '', 'form_textbox', '{\"required\":\"1\",\"editable\":\"1\",\"maxlength\":\"20\",\"minlength\":\"2\",\"validtype\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"prompt\":\"\\u82f1\\u6587\\u6807\\u8bc6\",\"width\":\"\"}', '', '40', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('509', '88', '基本信息', '扩展', '', '', 'extend_id', '0', '', 'form_combotree', '{\"model\":\"admin\\/extend\",\"editable\":\"0\",\"disabled\":\"0\",\"readonly\":\"0\",\"rootitem\":\"1\",\"tree\":\"0\",\"prompt\":\"\",\"queryparams\":\"group|eq|\\u63a8\\u8350\\u6269\\u5c55\",\"pid\":\"\",\"textfield\":\"\",\"valuefield\":\"\",\"width\":\"\"}', '', '30', '1470232915', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('512', '89', '基本信息', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '0', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('513', '89', '基本信息', '分组', '', '', 'group', '3', 'group', 'form_textbox', '{\"required\":\"1\",\"editable\":\"1\",\"maxlength\":\"20\",\"minlength\":\"2\",\"validtype\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"prompt\":\"\",\"width\":\"\"}', '', '50', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('514', '89', '基本信息', '标题', '', '', 'title', '3', 'title', 'form_textbox', '', '', '45', '1457524686', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('515', '89', '基本信息', '标识', '', '', 'mark', '3', 'mark', 'form_textbox', '{\"required\":\"1\",\"editable\":\"1\",\"maxlength\":\"10\",\"minlength\":\"2\",\"validtype\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"prompt\":\"\\u82f1\\u6587\\u5b57\\u7b26\",\"width\":\"\"}', '', '40', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('516', '89', '基本信息', '扩展', '', '', 'extend_id', '3', 'extend_id', 'form_combotree', '{\"model\":\"admin\\/extend\",\"editable\":\"0\",\"disabled\":\"0\",\"readonly\":\"0\",\"rootitem\":\"1\",\"tree\":\"0\",\"prompt\":\"\",\"queryparams\":\"group|eq|\\u63a8\\u8350\\u6269\\u5c55\",\"pid\":\"\",\"textfield\":\"\",\"valuefield\":\"\",\"width\":\"\"}', '', '35', '1470232907', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('519', '91', '基本信息', '推荐位', '', '', 'category_id', '3', 'category_id', 'form_hidden', '{\"url\":\"Admin\\/Recommendcate\\/index\",\"required\":\"1\",\"editable\":\"0\",\"rootitem\":\"0\",\"readonly\":\"0\",\"disabled\":\"0\",\"prompt\":\"\",\"queryparams\":\"\",\"textfield\":\"\",\"pid\":\"\",\"validtype\":\"\",\"minlength\":\"\",\"maxlength\":\"\",\"width\":\"\"}', '', '50', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('520', '91', '基本信息', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '22', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('521', '91', '基本信息', '标题', '', '', 'title', '3', 'title', 'form_textbox', '{\"required\":\"1\",\"editable\":\"1\",\"maxlength\":\"\",\"minlength\":\"\",\"validtype\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"prompt\":\"\",\"width\":\"\"}', '', '45', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('522', '91', '基本信息', '图片', '', '', 'thumb', '3', 'thumb', 'form_image', '{\"required\":\"0\",\"disabled\":\"0\",\"readonly\":\"0\",\"extensions\":\"\",\"prompt\":\"\"}', '', '35', '1459050914', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('523', '91', '基本信息', '链接地址', '', '', 'ebcms_url', '3', 'ebcms_url', 'form_textbox', '{\"required\":\"0\",\"editable\":\"1\",\"maxlength\":\"\",\"minlength\":\"\",\"validtype\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"prompt\":\"\",\"width\":\"\"}', '', '40', '1469453932', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('524', '91', '基本信息', '摘要', '', '', 'description', '3', 'description', 'form_multitextbox', '{\"required\":\"0\",\"height\":\"\",\"width\":\"\",\"editable\":\"1\",\"maxlength\":\"255\",\"minlength\":\"\",\"validtype\":\"\",\"prompt\":\"\",\"readonly\":\"0\",\"disabled\":\"0\"}', '', '30', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('526', '90', '基本信息', '推荐位', '', '', 'category_id', '1', 'category_id', 'form_hidden', '', '', '50', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('527', '90', '基本信息', '标题', '', '', 'title', '0', '', 'form_textbox', '', '', '45', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('528', '90', '基本信息', '链接地址', '', '', 'ebcms_url', '0', '', 'form_textbox', '', '', '40', '1469453921', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('529', '90', '基本信息', '图片', '', '', 'thumb', '0', '', 'form_image', '{\"required\":\"0\",\"disabled\":\"0\",\"readonly\":\"0\",\"extensions\":\"\",\"prompt\":\"\"}', '', '35', '1459084215', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('530', '90', '基本信息', '摘要', '', '', 'description', '0', '', 'form_multitextbox', '', '', '30', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('554', '93', '基本信息', '删除文件', '', '', 'dels', '3', 'dels', 'form_multitextbox', '', '', '25', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('537', '93', '基本信息', '版本号', '', '', 'version', '3', 'version', 'form_textbox', '', '', '40', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('538', '93', '基本信息', '数据库', '', '', 'sqls', '3', 'sqls', 'form_multitextbox', '', '', '30', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('539', '93', '基本信息', '更新说明', '', '', 'remark', '3', 'remark', 'form_multitextbox', '', '', '20', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('540', '93', '基本信息', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '1', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('564', '93', '基本信息', '核心版本需求', '', '', 'core_version', '3', 'core_version', 'form_textbox', '', '', '35', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('565', '32', '其他配置', '显示字段', '', 'config', 'textfield', '3', 'textfield', 'form_textbox', '', '默认为text', '9', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('566', '32', '其他配置', '值字段', '', 'config', 'valuefield', '3', 'valuefield', 'form_textbox', '', '默认为id', '6', '2015', '2015', '1');
INSERT INTO `ebcms5_formfield` VALUES ('574', '98', '基本信息', '旧密码', '', '', 'oldpassword', '0', '', 'form_textbox', '', '', '50', '2016', '2016', '1');
INSERT INTO `ebcms5_formfield` VALUES ('575', '98', '基本信息', '新密码', '', '', 'password', '0', '', 'form_textbox', '', '', '45', '2016', '2016', '1');
INSERT INTO `ebcms5_formfield` VALUES ('576', '98', '基本信息', '重复密码', '', '', 'passwordtwo', '0', '', 'form_textbox', '', '', '40', '2016', '2016', '1');
INSERT INTO `ebcms5_formfield` VALUES ('617', '76', '高级设置', '列表数据来源', '', '', 'datatype', '0', '1', 'form_radio', '{\"disabled\":\"0\",\"readonly\":\"0\",\"values\":\"不读取|0\\r\\n当前栏目|1\\r\\n子栏目|2\\r\\n所有子级栏目（数据多时不推荐）|3\\r\\n不限栏目|4\"}', '', '32', '1469353924', '1457270483', '1');
INSERT INTO `ebcms5_formfield` VALUES ('618', '77', '高级设置', '列表数据来源', '', '', 'datatype', '3', 'datatype', 'form_radio', '{\"disabled\":\"0\",\"readonly\":\"0\",\"values\":\"不读取|0\\r\\n当前栏目|1\\r\\n子栏目|2\\r\\n所有子级栏目（数据多时不推荐）|3\\r\\n不限栏目|4\"}', '', '32', '1469353917', '1457270608', '1');
INSERT INTO `ebcms5_formfield` VALUES ('619', '77', '高级设置', '列表排序', '', '', 'order', '3', 'order', 'form_select', '{\"values\":\"id \\u4ece\\u5927\\u5230\\u5c0f(\\u63a8\\u8350)|id desc\\r\\nid \\u4ece\\u5c0f\\u5230\\u5927|id asc\\r\\n\\u6392\\u5e8f \\u4ece\\u5927\\u5230\\u5c0f|sort desc,id desc\\r\\n\\u6392\\u5e8f \\u4ece\\u5c0f\\u5230\\u8fbe|sort asc,id desc\\r\\n\\u66f4\\u65b0\\u65f6\\u95f4 \\u4ece\\u5927\\u5230\\u5c0f|update_time desc,id desc\\r\\n\\u66f4\\u65b0\\u65f6\\u95f4 \\u4ece\\u5c0f\\u5230\\u8fbe|update_time desc,id desc\"}', '', '31', '1468825515', '1457271515', '1');
INSERT INTO `ebcms5_formfield` VALUES ('620', '76', '高级设置', '列表排序', '', '', 'order', '0', 'id desc', 'form_select', '{\"disabled\":\"0\",\"values\":\"id \\u4ece\\u5927\\u5230\\u5c0f(\\u63a8\\u8350)|id desc\\r\\nid \\u4ece\\u5c0f\\u5230\\u5927|id asc\\r\\n\\u6392\\u5e8f \\u4ece\\u5927\\u5230\\u5c0f|sort desc,id desc\\r\\n\\u6392\\u5e8f \\u4ece\\u5c0f\\u5230\\u8fbe|sort asc,id desc\\r\\n\\u66f4\\u65b0\\u65f6\\u95f4 \\u4ece\\u5927\\u5230\\u5c0f|update_time desc,id desc\\r\\n\\u66f4\\u65b0\\u65f6\\u95f4 \\u4ece\\u5c0f\\u5230\\u8fbe|update_time desc,id desc\"}', '', '31', '1468825554', '1457271659', '1');
INSERT INTO `ebcms5_formfield` VALUES ('621', '107', '基本信息', '是否失效', '', 'config', 'disabled', '3', 'disabled', 'form_bool', '', '', '30', '1457835383', '1457272451', '1');
INSERT INTO `ebcms5_formfield` VALUES ('622', '107', '基本信息', '可选值', '', 'config', 'values', '3', 'values', 'form_multitextbox', '', '一样一个，用|分割键值对，例如：\r\n红色|red\r\n绿色|green\r\n黑色|black\r\n灰色|gray', '80', '1470234154', '1457272486', '1');
INSERT INTO `ebcms5_formfield` VALUES ('623', '107', '基本信息', 'id', '', '', 'id', '3', 'id', 'form_hidden', '', '', '1', '1457272520', '1457272520', '1');
INSERT INTO `ebcms5_formfield` VALUES ('628', '108', '基本信息', '父级', '', '', 'pid', '0', '0', 'form_hidden', '', '', '0', '1468484410', '1457591539', '1');
INSERT INTO `ebcms5_formfield` VALUES ('629', '108', '基本信息', '标题', '', '', 'title', '0', '', 'form_textbox', '', '', '80', '1468484823', '1457591584', '1');
INSERT INTO `ebcms5_formfield` VALUES ('630', '108', '基本信息', '表单类型', '', '', 'form', '0', 'form_textbox', 'form_radio', '{\"disabled\":\"0\",\"readonly\":\"0\",\"values\":\"\\u5355\\u884c\\u6587\\u672c|form_textbox\\r\\n\\u591a\\u884c\\u6587\\u672c|form_multitextbox\\r\\n\\u7f16\\u8f91\\u5668|form_ueditor\\r\\n\\u56fe\\u7247|form_image\\r\\n\\u5e03\\u5c14|form_bool\"}', '', '40', '1468485204', '1457591622', '1');
INSERT INTO `ebcms5_formfield` VALUES ('631', '108', '基本信息', '键', '', '', 'name', '0', '', 'form_textbox', '', '英文字符', '60', '1457591703', '1457591703', '1');
INSERT INTO `ebcms5_formfield` VALUES ('633', '108', '基本信息', '解析类型', '', '', 'render', '0', 'string', 'form_hidden', '', '', '0', '1457591824', '1457591824', '1');
INSERT INTO `ebcms5_formfield` VALUES ('634', '108', '基本信息', '备注', '', '', 'remark', '0', '', 'form_multitextbox', '', '', '30', '1457591851', '1457591851', '1');
INSERT INTO `ebcms5_formfield` VALUES ('636', '108', '基本信息', '分类', '', '', 'category_id', '0', '9', 'form_hidden', '', '', '0', '1468484391', '1457591914', '1');
INSERT INTO `ebcms5_formfield` VALUES ('637', '109', '基本信息', '键', '', '', 'name', '3', 'name', 'form_textbox', '', '', '40', '1457592182', '1457592182', '1');
INSERT INTO `ebcms5_formfield` VALUES ('825', '109', '基本信息', '表单类型', '', '', 'form', '3', 'form', 'form_radio', '{\"disabled\":\"0\",\"readonly\":\"0\",\"values\":\"\\u5355\\u884c\\u6587\\u672c|form_textbox\\r\\n\\u591a\\u884c\\u6587\\u672c|form_multitextbox\\r\\n\\u7f16\\u8f91\\u5668|form_ueditor\\r\\n\\u56fe\\u7247|form_image\\r\\n\\u5e03\\u5c14|form_bool\"}', '', '30', '1468485208', '1468485017', '1');
INSERT INTO `ebcms5_formfield` VALUES ('639', '109', '基本信息', '备注', '', '', 'remark', '3', 'remark', 'form_multitextbox', '', '', '20', '1457592292', '1457592226', '1');
INSERT INTO `ebcms5_formfield` VALUES ('640', '109', '基本信息', 'id', '', '', 'id', '3', 'id', 'form_hidden', '', '', '0', '1457592245', '1457592245', '1');
INSERT INTO `ebcms5_formfield` VALUES ('651', '24', '基本配置', '是否只读', '', 'config', 'readonly', '3', 'readonly', 'form_bool', '', '', '42', '1457835095', '1457835095', '1');
INSERT INTO `ebcms5_formfield` VALUES ('652', '26', '基本配置', '是否只读', '', 'config', 'readonly', '3', 'readonly', 'form_bool', '', '', '37', '1457835134', '1457835134', '1');
INSERT INTO `ebcms5_formfield` VALUES ('653', '25', '基本配置', '是否只读', '', 'config', 'readonly', '3', 'readonly', 'form_bool', '', '', '42', '1457835173', '1457835173', '1');
INSERT INTO `ebcms5_formfield` VALUES ('654', '27', '基本配置', '是否只读', '', 'config', 'readonly', '3', 'readonly', 'form_bool', '', '', '42', '1457835211', '1457835211', '1');
INSERT INTO `ebcms5_formfield` VALUES ('655', '20', '基本配置', '是否失效', '', 'config', 'disabled', '3', 'disabled', 'form_bool', '', '', '50', '1457835240', '1457835240', '1');
INSERT INTO `ebcms5_formfield` VALUES ('656', '20', '基本配置', '是否只读', '', 'config', 'readonly', '3', 'readonly', 'form_bool', '', '', '40', '1457835261', '1457835261', '1');
INSERT INTO `ebcms5_formfield` VALUES ('657', '34', '基本配置', '是否只读', '', 'config', 'readonly', '3', 'readonly', 'form_bool', '', '', '25', '1457835304', '1457835304', '1');
INSERT INTO `ebcms5_formfield` VALUES ('658', '32', '基本配置', '是否只读', '', 'config', 'readonly', '3', 'readonly', 'form_bool', '', '', '42', '1457835368', '1457835368', '1');
INSERT INTO `ebcms5_formfield` VALUES ('659', '107', '基本信息', '是否只读', '', 'config', 'readonly', '3', 'readonly', 'form_bool', '', '', '40', '1457835411', '1457835403', '1');
INSERT INTO `ebcms5_formfield` VALUES ('660', '78', '高级设置', '短标题', '', '', 'shorttitle', '0', '', 'form_textbox', '', '一般用作 首页 列表页调用 没有则调用标题', '70', '1469236342', '1459511260', '1');
INSERT INTO `ebcms5_formfield` VALUES ('661', '78', '高级设置', 'META标题', '', '', 'metatitle', '0', '', 'form_textbox', '', '用作seo标题设置，不填则默认为标题', '80', '1469236380', '1459511284', '1');
INSERT INTO `ebcms5_formfield` VALUES ('663', '79', '高级设置', '短标题', '', '', 'shorttitle', '3', 'shorttitle', 'form_textbox', '', '一般用作 首页 列表页调用 没有则调用标题', '70', '1469236335', '1459511458', '1');
INSERT INTO `ebcms5_formfield` VALUES ('664', '79', '高级设置', 'META标题', '', '', 'metatitle', '3', 'metatitle', 'form_textbox', '', '用作seo标题设置，不填则默认为标题', '80', '1469236386', '1459511480', '1');
INSERT INTO `ebcms5_formfield` VALUES ('666', '76', '高级设置', 'meta标题', '', '', 'metatitle', '0', '', 'form_textbox', '', '', '74', '1468825537', '1459512626', '1');
INSERT INTO `ebcms5_formfield` VALUES ('667', '77', '高级设置', 'meta标题', '', '', 'metatitle', '3', 'metatitle', 'form_textbox', '{\"required\":\"0\",\"readonly\":\"0\",\"disabled\":\"0\",\"maxlength\":\"\",\"minlength\":\"\",\"validtype\":\"\",\"prompt\":\"\"}', '', '74', '1468825503', '1459512653', '1');
INSERT INTO `ebcms5_formfield` VALUES ('668', '34', '基本配置', '是否可编辑', '', 'config', 'editable', '3', 'editable', 'form_bool', '', '可编辑是指下拉选项只是作为辅助选项，实际上还是一个文本框', '48', '1459577971', '1459577748', '1');
INSERT INTO `ebcms5_formfield` VALUES ('669', '32', '基本配置', '是否可编辑', '', 'config', 'editable', '3', 'editable', 'form_bool', '', '可编辑是指下拉选项只是作为辅助选项，实际上还是一个文本框', '48', '1459577845', '1459577845', '1');
INSERT INTO `ebcms5_formfield` VALUES ('670', '107', '基本信息', '是否可编辑', '', 'config', 'editable', '3', 'editable', 'form_bool', '', '可编辑是指下拉选项只是作为辅助选项，实际上还是一个文本框', '60', '1459577965', '1459577881', '1');
INSERT INTO `ebcms5_formfield` VALUES ('829', '55', '基本信息', '分组', '', '', 'group', '3', 'group', 'form_textbox', '', '此项请不要修改', '99', '1468490486', '1468490486', '1');
INSERT INTO `ebcms5_formfield` VALUES ('828', '54', '基本信息', '分组', '', '', 'group', '1', 'group', 'form_textbox', '', '此项请不要修改', '99', '1468490732', '1468490448', '1');
INSERT INTO `ebcms5_formfield` VALUES ('820', '111', '基本信息', '内容', '', '', 'body', '3', 'body', 'form_ueditor', '{\"initialframeheight\":\"\",\"autoheightenabled\":\"0\",\"maximumwords\":\"\",\"wordcount\":\"0\",\"elementpathenabled\":\"0\"}', '', '12', '1468822357', '1468473743', '1');
INSERT INTO `ebcms5_formfield` VALUES ('821', '110', '基本信息', '内容', '', '', 'body', '0', '', 'form_ueditor', '', '', '12', '1468473773', '1468473773', '1');
INSERT INTO `ebcms5_formfield` VALUES ('823', '109', '基本信息', '标题', '', '', 'title', '3', 'title', 'form_textbox', '', '', '50', '1468484771', '1468484771', '1');
INSERT INTO `ebcms5_formfield` VALUES ('826', '108', '基本信息', '分组', '', '', 'group', '1', 'group', 'form_textbox', '', '', '90', '1468486423', '1468485320', '1');
INSERT INTO `ebcms5_formfield` VALUES ('827', '109', '基本信息', '分组', '', '', 'group', '3', 'group', 'form_textbox', '', '', '90', '1468485336', '1468485336', '1');
INSERT INTO `ebcms5_formfield` VALUES ('687', '110', '基本信息', '分组', '', '', 'group', '1', 'group', 'form_textbox', '', '', '99', '1469406256', '1460041314', '1');
INSERT INTO `ebcms5_formfield` VALUES ('688', '110', '高级设置', '路径', '', '', 'path', '0', '', 'form_textbox', '', '例如：/about/us、/about、/contactus 等等\r\n可不填', '50', '1469406245', '1460041336', '1');
INSERT INTO `ebcms5_formfield` VALUES ('689', '110', '基本信息', '标题', '', '', 'title', '0', '', 'form_textbox', '', '', '80', '1468476814', '1460041353', '1');
INSERT INTO `ebcms5_formfield` VALUES ('690', '110', '基本信息', '关键字', '', '', 'keywords', '0', '', 'form_keywords', '{\"field\":\"body\",\"strong\":\"1\"}', '', '70', '1470319502', '1460041373', '1');
INSERT INTO `ebcms5_formfield` VALUES ('691', '110', '高级设置', '简介', '', '', 'description', '0', '', 'form_multitextbox', '', '', '60', '1469406313', '1460041395', '1');
INSERT INTO `ebcms5_formfield` VALUES ('693', '111', '基本信息', 'id', '', '', 'id', '3', 'id', 'form_hidden', '', '', '1', '1468822384', '1460041484', '1');
INSERT INTO `ebcms5_formfield` VALUES ('694', '111', '基本信息', '分组', '', '', 'group', '3', 'group', 'form_textbox', '', '', '99', '1469406450', '1460041505', '1');
INSERT INTO `ebcms5_formfield` VALUES ('695', '111', '高级设置', '路径', '', '', 'path', '3', 'path', 'form_textbox', '', '例如：/about/us、/about、/contactus 等等\r\n可不填', '50', '1469406426', '1460041522', '1');
INSERT INTO `ebcms5_formfield` VALUES ('696', '111', '基本信息', '标题', '', '', 'title', '3', 'title', 'form_textbox', '', '', '90', '1468476829', '1460041543', '1');
INSERT INTO `ebcms5_formfield` VALUES ('697', '111', '基本信息', '关键字', '', '', 'keywords', '3', 'keywords', 'form_keywords', '{\"field\":\"body\",\"strong\":\"1\"}', '', '80', '1470319497', '1460041560', '1');
INSERT INTO `ebcms5_formfield` VALUES ('698', '111', '高级设置', '简介', '', '', 'description', '3', 'description', 'form_multitextbox', '', '', '60', '1469406437', '1460041581', '1');
INSERT INTO `ebcms5_formfield` VALUES ('700', '110', '高级设置', '模板', '', '', 'tpl', '0', '', 'form_textbox', '', '模板位于模板目录下的Single目录下。不填默认index', '15', '1469406316', '1462196672', '1');
INSERT INTO `ebcms5_formfield` VALUES ('701', '111', '高级设置', '模板', '', '', 'tpl', '3', 'tpl', 'form_textbox', '', '模板位于模板目录下的Single目录下。不填默认index', '15', '1469406441', '1462196704', '1');
INSERT INTO `ebcms5_formfield` VALUES ('830', '77', '个性扩展', '扩展字段', '', '', 'ext', '3', 'ext', 'form_extend', '', '', '1', '1468835046', '1468826053', '1');
INSERT INTO `ebcms5_formfield` VALUES ('715', '117', '基本信息', '扩展字段', '', 'config', 'field', '3', 'field', 'form_textbox', '', '', '0', '0', '0', '1');
INSERT INTO `ebcms5_formfield` VALUES ('716', '117', '基本信息', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '0', '0', '0', '1');
INSERT INTO `ebcms5_formfield` VALUES ('746', '66', '基本信息', '分组', '', '', 'group', '1', 'group', 'form_textbox', '', '', '48', '1468898550', '0', '1');
INSERT INTO `ebcms5_formfield` VALUES ('747', '66', '基本信息', '标题', '', '', 'title', '0', '', 'form_textbox', '', '', '44', '0', '0', '1');
INSERT INTO `ebcms5_formfield` VALUES ('748', '66', '基本信息', '字段', '', '', 'field', '0', '', 'form_textbox', '', '', '39', '0', '0', '1');
INSERT INTO `ebcms5_formfield` VALUES ('848', '76', '高级设置', '跳转链接', '', '', 'ebcms_url', '0', '', 'form_textbox', '', '', '5', '1469493098', '1469493098', '1');
INSERT INTO `ebcms5_formfield` VALUES ('849', '77', '高级设置', '跳转链接', '', '', 'ebcms_url', '3', 'ebcms_url', 'form_textbox', '', '', '5', '1469493138', '1469493138', '1');
INSERT INTO `ebcms5_formfield` VALUES ('782', '129', '基本信息', '将字符', '', '', 'fromstr', '0', '', 'form_textbox', '', '该功能一般在网站更改域名或更改路径之后才会用到，非专业人士请谨慎操作！\r\n此处一般填写原来的网站域名+安装目录，例如 http://img.baidu.com/dir/', '0', '0', '0', '1');
INSERT INTO `ebcms5_formfield` VALUES ('783', '129', '基本信息', '替换成', '', '', 'tostr', '0', '', 'form_textbox', '', '此处填写替换成的字符，一般填写 当前网站域名+安装目录，例如：http://ebcms5.ebcms.com/dir/', '0', '1468046015', '0', '1');
INSERT INTO `ebcms5_formfield` VALUES ('806', '76', '高级设置', '缓存时间', '', '', 'expire', '0', '0', 'form_numberbox', '', '0标识不缓存 单位秒', '10', '1468825565', '1467730081', '1');
INSERT INTO `ebcms5_formfield` VALUES ('807', '77', '高级设置', '缓存时间', '', '', 'expire', '3', 'expire', 'form_numberbox', '', '0表示不缓存 单位秒', '10', '1468825527', '1467730184', '1');
INSERT INTO `ebcms5_formfield` VALUES ('831', '76', '个性扩展', '个性扩展', '', '', 'ext', '0', '', 'form_extend', '', '', '1', '1468835067', '1468835067', '1');
INSERT INTO `ebcms5_formfield` VALUES ('832', '110', '个性扩展', '个性扩展', '', '', 'ext', '0', '', 'form_extend', '', '', '1', '1468835354', '1468835354', '1');
INSERT INTO `ebcms5_formfield` VALUES ('833', '111', '个性扩展', '个性扩展', '', '', 'ext', '3', 'ext', 'form_extend', '', '', '10', '1468835389', '1468835389', '1');
INSERT INTO `ebcms5_formfield` VALUES ('834', '136', '基本信息', '内容id', '', '', 'ids', '1', 'ids', 'form_multitextbox', '', '', '0', '1468980037', '1468979577', '1');
INSERT INTO `ebcms5_formfield` VALUES ('835', '136', '基本信息', '移动到', '', '', 'category_id', '1', 'category_id', 'form_combotree', '{\"model\":\"content\\/category\",\"editable\":\"0\",\"disabled\":\"0\",\"readonly\":\"0\",\"rootitem\":\"0\",\"tree\":\"1\",\"prompt\":\"\",\"queryparams\":\"\",\"pid\":\"\",\"textfield\":\"\",\"valuefield\":\"\",\"width\":\"\"}', '如果移动的内容和移动到的栏目的模型不一样，会造成移动的内容中模型不一样的那一部分数据的自定义扩展内容数据丢失，但主体内容数据不会丢失！\r\n非超级管理员操作，会自动排除已经锁定的数据。', '0', '1468981649', '1468979611', '1');
INSERT INTO `ebcms5_formfield` VALUES ('836', '137', '基本信息', '栏目id', '', '', 'ids', '1', 'ids', 'form_multitextbox', '{\"required\":\"1\",\"disabled\":\"0\",\"readonly\":\"1\",\"height\":\"\",\"width\":\"\",\"maxlength\":\"\",\"minlength\":\"\",\"prompt\":\"\"}', '', '0', '1468985752', '1468985302', '1');
INSERT INTO `ebcms5_formfield` VALUES ('837', '137', '基本信息', '合并到', '', '', 'id', '0', '', 'form_combotree', '{\"model\":\"content\\/category\",\"editable\":\"0\",\"disabled\":\"0\",\"readonly\":\"0\",\"rootitem\":\"0\",\"tree\":\"1\",\"prompt\":\"\",\"queryparams\":\"id|notin|(I)ids\",\"pid\":\"\",\"textfield\":\"\",\"valuefield\":\"\",\"width\":\"\"}', '不同模型之间的栏目合并，如果和目标栏目模型不一样，会造成这些栏目下面的内容的自定义扩展数据丢失，但主体内容不受影响！', '0', '1468985757', '1468985486', '1');
INSERT INTO `ebcms5_formfield` VALUES ('840', '110', '基本信息', '缩略图', '', '', 'thumb', '0', '', 'form_image', '', '', '60', '1469406278', '1469195366', '1');
INSERT INTO `ebcms5_formfield` VALUES ('841', '111', '基本信息', '缩略图', '', '', 'thumb', '3', 'thumb', 'form_image', '', '', '70', '1469406458', '1469195394', '1');
INSERT INTO `ebcms5_formfield` VALUES ('842', '78', '高级设置', '外部链接', '', '', 'ebcms_url', '0', '', 'form_textbox', '{\"required\":\"0\",\"readonly\":\"0\",\"disabled\":\"0\",\"maxlength\":\"\",\"minlength\":\"\",\"validtype\":\"0\",\"prompt\":\"http:\\/\\/\"}', '如果需要链接到其他地址，请填写完整url', '10', '1469458969', '1469236199', '1');
INSERT INTO `ebcms5_formfield` VALUES ('843', '79', '高级设置', '外部链接', '', '', 'ebcms_url', '3', 'ebcms_url', 'form_textbox', '{\"required\":\"0\",\"readonly\":\"0\",\"disabled\":\"0\",\"maxlength\":\"\",\"minlength\":\"\",\"validtype\":\"0\",\"prompt\":\"http:\\/\\/\"}', '链接到外部地址', '10', '1469458976', '1469236468', '1');
INSERT INTO `ebcms5_formfield` VALUES ('844', '110', '高级设置', '短标题', '', '', 'shorttitle', '0', '', 'form_textbox', '', '', '85', '1469406366', '1469406366', '1');
INSERT INTO `ebcms5_formfield` VALUES ('845', '110', '高级设置', 'META标题', '', '', 'metatitle', '0', '', 'form_textbox', '', '', '90', '1469406384', '1469406384', '1');
INSERT INTO `ebcms5_formfield` VALUES ('846', '111', '高级设置', '短标题', '', '', 'shorttitle', '3', 'shorttitle', 'form_textbox', '', '', '80', '1469406517', '1469406517', '1');
INSERT INTO `ebcms5_formfield` VALUES ('847', '111', '高级设置', 'META标题', '', '', 'metatitle', '3', 'metatitle', 'form_textbox', '', '', '90', '1469406532', '1469406532', '1');
INSERT INTO `ebcms5_formfield` VALUES ('850', '79', '高级设置', '文件名', '', '', 'filename', '3', 'filename', 'form_textbox', '', '', '30', '1469851161', '1469851161', '1');
INSERT INTO `ebcms5_formfield` VALUES ('853', '110', '高级设置', '跳转链接', '', '', 'ebcms_url', '0', '', 'form_textbox', '', '', '0', '1469872747', '1469872747', '1');
INSERT INTO `ebcms5_formfield` VALUES ('854', '111', '高级设置', '跳转链接', '', '', 'ebcms_url', '3', 'ebcms_url', 'form_textbox', '', '', '0', '1469872777', '1469872777', '1');
INSERT INTO `ebcms5_formfield` VALUES ('855', '78', '高级设置', '文件名', '', '', 'filename', '0', '', 'form_textbox', '', '', '30', '1470232456', '1470232456', '1');
INSERT INTO `ebcms5_formfield` VALUES ('856', '139', '基本配置', '接收字段', '', 'config', 'field', '3', 'field', 'form_textbox', '', '如果需要随机插入到内容，此处请填写内容字段', '8', '1470319339', '1470315282', '1');
INSERT INTO `ebcms5_formfield` VALUES ('857', '139', '基本配置', 'id', '', '', 'id', '1', 'id', 'form_hidden', '', '', '0', '1470315541', '1470315541', '1');
INSERT INTO `ebcms5_formfield` VALUES ('858', '139', '基本配置', '是否强调', '', 'config', 'strong', '3', 'strong', 'form_bool', '', '勾选强调后，插入的时候会自动加粗', '6', '1470318415', '1470318367', '1');
INSERT INTO `ebcms5_formfield` VALUES ('870', '142', '基本信息', '标题', '', '', 'title', '0', '', 'form_textbox', null, '', '0', '1471841918', '1471841918', '1');
INSERT INTO `ebcms5_formfield` VALUES ('871', '142', '基本信息', '名称', '', '', 'name', '0', '', 'form_textbox', null, '', '0', '1471841926', '1471841926', '1');
INSERT INTO `ebcms5_formfield` VALUES ('872', '142', '基本信息', '是否开启验证码', '', '', 'verify', '0', '1', 'form_bool', null, '', '0', '1471841950', '1471841943', '1');
INSERT INTO `ebcms5_formfield` VALUES ('873', '142', '基本信息', '备注', '', '', 'remark', '0', '', 'form_multitextbox', null, '', '0', '1471841966', '1471841966', '1');
INSERT INTO `ebcms5_formfield` VALUES ('874', '143', '基本信息', '标题', '', '', 'title', '3', 'title', 'form_textbox', null, '', '0', '1471841983', '1471841983', '1');
INSERT INTO `ebcms5_formfield` VALUES ('875', '143', '基本信息', '名称', '', '', 'name', '3', 'name', 'form_textbox', null, '', '0', '1471841992', '1471841992', '1');
INSERT INTO `ebcms5_formfield` VALUES ('876', '143', '基本信息', '启用验证码', '', '', 'verify', '3', 'verify', 'form_bool', null, '', '0', '1471842757', '1471842013', '1');
INSERT INTO `ebcms5_formfield` VALUES ('877', '143', '基本信息', '备注', '', '', 'remark', '3', 'remark', 'form_multitextbox', null, '', '0', '1471842024', '1471842024', '1');
INSERT INTO `ebcms5_formfield` VALUES ('878', '143', '基本信息', 'id', '', '', 'id', '3', 'id', 'form_hidden', null, '', '0', '1471842038', '1471842038', '1');
INSERT INTO `ebcms5_formfield` VALUES ('879', '144', '基本信息', '表单', '', '', 'forms_id', '0', 'forms_id', 'form_combotree', '{\"model\":\"forms\\/forms\",\"editable\":\"0\",\"disabled\":\"0\",\"readonly\":\"0\",\"rootitem\":\"0\",\"tree\":\"0\",\"prompt\":\"\",\"queryparams\":\"\",\"pid\":\"\",\"textfield\":\"\",\"valuefield\":\"\",\"width\":\"\"}', '', '0', '1471842175', '1471842079', '1');
INSERT INTO `ebcms5_formfield` VALUES ('880', '144', '基本信息', '标题', '', '', 'title', '0', '', 'form_textbox', null, '', '0', '1471842812', '1471842100', '1');
INSERT INTO `ebcms5_formfield` VALUES ('881', '144', '基本信息', '类型', '', '', 'type', '0', 'text', 'form_radio', '{\"disabled\":\"0\",\"readonly\":\"0\",\"values\":\"单行文本|text\\r\\n多行文本|textarea\\r\\n单选|radio\\r\\n多选|checkbox\"}', '', '0', '1471842164', '1471842117', '1');
INSERT INTO `ebcms5_formfield` VALUES ('882', '144', '基本信息', '配置', '', '', 'config', '0', '', 'form_multitextbox', null, '单选 多选 配置格式为一行一个\r\n红色\r\n黑色\r\n黄色', '0', '1471842138', '1471842138', '1');
INSERT INTO `ebcms5_formfield` VALUES ('883', '144', '基本信息', '备注', '', '', 'remark', '0', '', 'form_multitextbox', null, '', '0', '1471842860', '1471842153', '1');
INSERT INTO `ebcms5_formfield` VALUES ('884', '145', '基本信息', '表单', '', '', 'forms_id', '3', 'forms_id', 'form_combotree', '{\"model\":\"forms\\/forms\",\"editable\":\"0\",\"disabled\":\"0\",\"readonly\":\"0\",\"rootitem\":\"0\",\"tree\":\"0\",\"prompt\":\"\",\"queryparams\":\"\",\"pid\":\"\",\"textfield\":\"\",\"valuefield\":\"\",\"width\":\"\"}', '', '0', '1471842270', '1471842194', '1');
INSERT INTO `ebcms5_formfield` VALUES ('885', '145', '基本信息', '标题', '', '', 'title', '3', 'title', 'form_textbox', null, '', '0', '1471842210', '1471842210', '1');
INSERT INTO `ebcms5_formfield` VALUES ('886', '145', '基本信息', '类型', '', '', 'type', '3', 'type', 'form_radio', '{\"disabled\":\"0\",\"readonly\":\"0\",\"values\":\"单行文本|text\\r\\n多行文本|textarea\\r\\n单选|radio\\r\\n多选|checkbox\"}', '', '0', '1471842280', '1471842221', '1');
INSERT INTO `ebcms5_formfield` VALUES ('887', '145', '基本信息', '配置', '', '', 'config', '3', 'config', 'form_multitextbox', null, '单选 多选 配置格式为一行一个\r\n红色\r\n黑色\r\n黄色', '0', '1471842291', '1471842231', '1');
INSERT INTO `ebcms5_formfield` VALUES ('888', '145', '基本信息', '备注', '', '', 'remark', '3', 'remark', 'form_multitextbox', null, '', '0', '1471842247', '1471842247', '1');
INSERT INTO `ebcms5_formfield` VALUES ('889', '145', '基本信息', 'id', '', '', 'id', '3', 'id', 'form_hidden', null, '', '0', '1471842260', '1471842260', '1');
INSERT INTO `ebcms5_formfield` VALUES ('890', '146', '基本信息', '标题', '', '', 'title', '0', '', 'form_textbox', null, '', '0', '1471842324', '1471842324', '1');
INSERT INTO `ebcms5_formfield` VALUES ('891', '146', '基本信息', '内容', '', '', 'body', '0', '', 'form_ueditor', null, '', '0', '1471842334', '1471842334', '1');
INSERT INTO `ebcms5_formfield` VALUES ('892', '146', '更多设置', '关键词', '', '', 'keywords', '0', '', 'form_keywords', '{\"field\":\"body\",\"strong\":\"1\"}', '', '0', '1471842686', '1471842356', '1');
INSERT INTO `ebcms5_formfield` VALUES ('893', '146', '更多设置', '简介', '', '', 'description', '0', '', 'form_multitextbox', null, '', '0', '1471842371', '1471842371', '1');
INSERT INTO `ebcms5_formfield` VALUES ('894', '146', '更多设置', '短标题', '', '', 'shorttitle', '0', '', 'form_textbox', null, '', '0', '1471842385', '1471842385', '1');
INSERT INTO `ebcms5_formfield` VALUES ('895', '146', '更多设置', 'meta标题', '', '', 'metatitle', '0', '', 'form_textbox', null, '', '0', '1471842396', '1471842396', '1');
INSERT INTO `ebcms5_formfield` VALUES ('896', '146', '更多设置', '缩略图', '', '', 'thumb', '0', '', 'form_image', null, '', '0', '1471842413', '1471842413', '1');
INSERT INTO `ebcms5_formfield` VALUES ('897', '146', '更多设置', '模板', '', '', 'tpl', '0', '', 'form_textbox', null, '', '0', '1471842423', '1471842423', '1');
INSERT INTO `ebcms5_formfield` VALUES ('898', '146', '更多设置', '跳转链接', '', '', 'ebcms_url', '0', '', 'form_textbox', null, '', '0', '1471842440', '1471842440', '1');
INSERT INTO `ebcms5_formfield` VALUES ('899', '146', '个性扩展', '个性扩展', '', '', 'ext', '0', '', 'form_extend', null, '', '0', '1471842457', '1471842457', '1');
INSERT INTO `ebcms5_formfield` VALUES ('900', '147', '基本信息', '标题', '', '', 'title', '3', 'title', 'form_textbox', null, '', '0', '1471842477', '1471842477', '1');
INSERT INTO `ebcms5_formfield` VALUES ('901', '147', '基本信息', '内容', '', '', 'body', '3', 'body', 'form_ueditor', null, '', '0', '1471842488', '1471842488', '1');
INSERT INTO `ebcms5_formfield` VALUES ('902', '147', '更多设置', '关键词', '', '', 'keywords', '3', 'keywords', 'form_keywords', '{\"field\":\"body\",\"strong\":\"1\"}', '', '0', '1471842680', '1471842511', '1');
INSERT INTO `ebcms5_formfield` VALUES ('903', '147', '更多设置', '简介', '', '', 'description', '3', 'description', 'form_multitextbox', null, '', '0', '1471842528', '1471842528', '1');
INSERT INTO `ebcms5_formfield` VALUES ('904', '147', '更多设置', '短标题', '', '', 'shorttitle', '3', 'shorttitle', 'form_textbox', null, '', '0', '1471842540', '1471842540', '1');
INSERT INTO `ebcms5_formfield` VALUES ('905', '147', '更多设置', 'meta标题', '', '', 'metatitle', '3', 'metatitle', 'form_textbox', null, '', '0', '1471842551', '1471842551', '1');
INSERT INTO `ebcms5_formfield` VALUES ('906', '147', '更多设置', '缩略图', '', '', 'thumb', '3', 'thumb', 'form_image', null, '', '0', '1471842567', '1471842567', '1');
INSERT INTO `ebcms5_formfield` VALUES ('907', '147', '更多设置', '模板', '', '', 'tpl', '3', 'tpl', 'form_textbox', null, '', '0', '1471842577', '1471842577', '1');
INSERT INTO `ebcms5_formfield` VALUES ('908', '147', '更多设置', '跳转链接', '', '', 'ebcms_url', '3', 'ebcms_url', 'form_textbox', null, '', '0', '1471842590', '1471842590', '1');
INSERT INTO `ebcms5_formfield` VALUES ('909', '147', '个性扩展', '个性扩展', '', '', 'ext', '3', 'ext', 'form_extend', null, '', '0', '1471842612', '1471842612', '1');
INSERT INTO `ebcms5_formfield` VALUES ('910', '147', '基本信息', 'id', '', '', 'id', '3', 'id', 'form_hidden', null, '', '0', '1471842624', '1471842624', '1');

-- ----------------------------
-- Table structure for ebcms5_forms
-- ----------------------------
DROP TABLE IF EXISTS `ebcms5_forms`;
CREATE TABLE `ebcms5_forms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '节点ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '表单名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '说明',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `verify` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '验证码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='万能表单表';

-- ----------------------------
-- Records of ebcms5_forms
-- ----------------------------
INSERT INTO `ebcms5_forms` VALUES ('1', '意见反馈', 'suggest', '', '0', '1471842772', '1471838809', '1', '1');

-- ----------------------------
-- Table structure for ebcms5_formsdata
-- ----------------------------
DROP TABLE IF EXISTS `ebcms5_formsdata`;
CREATE TABLE `ebcms5_formsdata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '节点ID',
  `forms_id` int(10) unsigned DEFAULT '0',
  `data` text,
  `ip` varchar(255) NOT NULL DEFAULT '' COMMENT 'ip',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='万能表单数据表';

-- ----------------------------
-- Records of ebcms5_formsdata
-- ----------------------------
INSERT INTO `ebcms5_formsdata` VALUES ('1', '1', '{\"您的称呼\":\"小明\",\"您的联系方式\":\"15451425568\",\"您的意见\":\"希望增加投稿功能\"}', '0.0.0.0', '1471838977', '1471838977', '0', '1');

-- ----------------------------
-- Table structure for ebcms5_formsfield
-- ----------------------------
DROP TABLE IF EXISTS `ebcms5_formsfield`;
CREATE TABLE `ebcms5_formsfield` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `forms_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类',
  `title` varchar(250) NOT NULL DEFAULT '' COMMENT '标题',
  `type` varchar(255) NOT NULL DEFAULT '' COMMENT '表单类型',
  `config` text COMMENT '表单配置',
  `remark` text COMMENT '表单说明',
  `sort` int(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='万能表单字段表';

-- ----------------------------
-- Records of ebcms5_formsfield
-- ----------------------------
INSERT INTO `ebcms5_formsfield` VALUES ('1', '1', '您的称呼', 'text', '', '', '0', '1471838824', '1471838824', '1');
INSERT INTO `ebcms5_formsfield` VALUES ('2', '1', '您的联系方式', 'text', '', '', '0', '1471838844', '1471838844', '1');
INSERT INTO `ebcms5_formsfield` VALUES ('3', '1', '您的意见', 'textarea', '', '', '0', '1471838854', '1471838854', '1');

-- ----------------------------
-- Table structure for ebcms5_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `ebcms5_guestbook`;
CREATE TABLE `ebcms5_guestbook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '节点ID',
  `nickname` varchar(255) NOT NULL DEFAULT '' COMMENT '昵称',
  `mobile` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '手机号码',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '留言内容',
  `reply` varchar(255) NOT NULL DEFAULT '' COMMENT '回复内容',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回复时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '99' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='留言板表';

-- ----------------------------
-- Records of ebcms5_guestbook
-- ----------------------------
INSERT INTO `ebcms5_guestbook` VALUES ('1', '呵呵', '15425263253', '测试一下留言', '感谢你的留言。', '1468206437', '1469002109', '0', '1');

-- ----------------------------
-- Table structure for ebcms5_link
-- ----------------------------
DROP TABLE IF EXISTS `ebcms5_link`;
CREATE TABLE `ebcms5_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '节点ID',
  `group` varchar(255) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `info` varchar(255) NOT NULL DEFAULT '' COMMENT '其他信息',
  `logo` varchar(255) NOT NULL DEFAULT '' COMMENT '图片地址',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '连接地址',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '99' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='友情链接表';

-- ----------------------------
-- Records of ebcms5_link
-- ----------------------------
INSERT INTO `ebcms5_link` VALUES ('1', '友情链接', '易贝CMS', '易贝cms是一款开源的cms系统', '', '', 'http://www.ebcms.com', '1468853839', '1468148360', '0', '1');
INSERT INTO `ebcms5_link` VALUES ('2', '友情链接', 'ThinkPHP官网', 'thinkphp是国内著名的php开发框架', '', '', 'http://www.thinkphp.cn/', '1468148406', '1468148406', '0', '1');

-- ----------------------------
-- Table structure for ebcms5_menu
-- ----------------------------
DROP TABLE IF EXISTS `ebcms5_menu`;
CREATE TABLE `ebcms5_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜菜单ID',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT '类型',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '标题',
  `url` varchar(250) NOT NULL DEFAULT '' COMMENT '附加参数',
  `iconcls` varchar(40) NOT NULL DEFAULT '' COMMENT '图标',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `sort` int(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='功能菜单表';

-- ----------------------------
-- Records of ebcms5_menu
-- ----------------------------
INSERT INTO `ebcms5_menu` VALUES ('13', '96', 'admin', '模板管理', 'admin/template/index', 'iconfont icon-sheweimoban', '1457527938', '2015', '14', '1');
INSERT INTO `ebcms5_menu` VALUES ('72', '0', 'admin', '基本管理', '', 'icon-rainbow', '2015', '2015', '50', '1');
INSERT INTO `ebcms5_menu` VALUES ('79', '72', 'admin', '导航管理', 'admin/nav/index', 'iconfont icon-caidan', '1457527841', '2015', '10', '1');
INSERT INTO `ebcms5_menu` VALUES ('80', '72', 'admin', '友情链接', 'admin/link/index', 'iconfont icon-lianjie', '1471179062', '2015', '20', '1');
INSERT INTO `ebcms5_menu` VALUES ('81', '72', 'admin', '留言中心', 'admin/guestbook/index', 'iconfont icon-fangbianregistration-copy', '1471179055', '2015', '31', '1');
INSERT INTO `ebcms5_menu` VALUES ('92', '96', 'admin', '备份优化', 'admin/database/index', 'iconfont icon-mysqlshujuku', '1457745746', '2015', '10', '1');
INSERT INTO `ebcms5_menu` VALUES ('95', '72', 'admin', '推荐管理', 'admin/recommend/index', 'iconfont icon-tuijian', '1471179049', '2015', '40', '1');
INSERT INTO `ebcms5_menu` VALUES ('96', '0', 'admin', '站点管理', '', 'icon-zone', '1469019491', '2015', '30', '1');
INSERT INTO `ebcms5_menu` VALUES ('118', '72', 'admin', '单页管理', 'admin/single/index', 'iconfont icon-wenzhang', '1471179044', '1460039274', '48', '1');
INSERT INTO `ebcms5_menu` VALUES ('127', '0', 'admin', '内容管理', '', '', '1467938803', '1467938803', '120', '1');
INSERT INTO `ebcms5_menu` VALUES ('128', '127', 'admin', '内容管理', 'content/content/index', 'iconfont icon-wenzhang', '1471179009', '1467938833', '0', '1');
INSERT INTO `ebcms5_menu` VALUES ('129', '127', 'admin', '栏目管理', 'content/category/index', 'iconfont icon-lanmu', '1471178998', '1467938852', '0', '1');
INSERT INTO `ebcms5_menu` VALUES ('130', '127', 'admin', '内容扩展', 'admin/extend/index?group=内容扩展', 'iconfont icon-unie678', '1467988323', '1467938877', '0', '1');
INSERT INTO `ebcms5_menu` VALUES ('135', '72', 'admin', '万能表单', 'forms/formsdata/index', 'iconfont icon-wenzhang', '1471840120', '1471840110', '0', '1');
INSERT INTO `ebcms5_menu` VALUES ('136', '72', 'admin', '公告管理', 'bulletin/bulletin/index', 'iconfont icon-fangbianregistration-copy', '1471840683', '1471840170', '0', '1');

-- ----------------------------
-- Table structure for ebcms5_nav
-- ----------------------------
DROP TABLE IF EXISTS `ebcms5_nav`;
CREATE TABLE `ebcms5_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '节点ID',
  `group` varchar(255) NOT NULL DEFAULT '' COMMENT '分组',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'category_id 冗余',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `ebcms_url` varchar(255) NOT NULL DEFAULT '' COMMENT '连接地址',
  `ext` text COMMENT '扩展信息',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='导航表';

-- ----------------------------
-- Records of ebcms5_nav
-- ----------------------------
INSERT INTO `ebcms5_nav` VALUES ('8', '', '2', '0', '关于我们', '/company/jianjie', '{\"icon\":\"AISA\",\"bigicon\":\"\"}', '1468480673', '1469929046', '0', '1');
INSERT INTO `ebcms5_nav` VALUES ('11', '', '1', '0', '首页', 'index/index/index', null, '1471184693', '1471184693', '0', '1');
INSERT INTO `ebcms5_nav` VALUES ('12', '', '1', '0', '公司简介', 'index/single/index?id=1', null, '1471184708', '1471184708', '0', '1');
INSERT INTO `ebcms5_nav` VALUES ('13', '', '1', '0', '联系我们', 'index/single/index?id=2', null, '1471184717', '1471184717', '0', '1');
INSERT INTO `ebcms5_nav` VALUES ('14', '', '1', '0', '新闻中心', '', null, '1471184729', '1471184729', '0', '1');
INSERT INTO `ebcms5_nav` VALUES ('15', '', '1', '0', '人才招聘', 'index/single/index?id=3', null, '1471184744', '1471184744', '0', '1');
INSERT INTO `ebcms5_nav` VALUES ('16', '', '1', '0', '留言', 'index/guestbook/index', null, '1471184757', '1471184757', '0', '1');
INSERT INTO `ebcms5_nav` VALUES ('17', '', '1', '14', '公司新闻', 'index/content/index?id=1', null, '1471184782', '1471240496', '0', '1');
INSERT INTO `ebcms5_nav` VALUES ('18', '', '1', '14', '行业新闻', 'index/content/index?id=2', null, '1471184805', '1471240500', '0', '1');

-- ----------------------------
-- Table structure for ebcms5_navcate
-- ----------------------------
DROP TABLE IF EXISTS `ebcms5_navcate`;
CREATE TABLE `ebcms5_navcate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '节点ID',
  `mark` varchar(255) NOT NULL DEFAULT '' COMMENT '标识',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `extend_id` varchar(255) NOT NULL DEFAULT '' COMMENT '导航模型',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='导航分类表';

-- ----------------------------
-- Records of ebcms5_navcate
-- ----------------------------
INSERT INTO `ebcms5_navcate` VALUES ('2', 'bottom', '底部导航', '2', '1468639064', '0', '10', '1');
INSERT INTO `ebcms5_navcate` VALUES ('1', 'main', '主导航', '0', '1471240475', '1471184662', '15', '1');

-- ----------------------------
-- Table structure for ebcms5_recommend
-- ----------------------------
DROP TABLE IF EXISTS `ebcms5_recommend`;
CREATE TABLE `ebcms5_recommend` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '节点ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `ebcms_url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `push_url` varchar(255) NOT NULL DEFAULT '' COMMENT '未处理的url',
  `push_mode_0` varchar(255) NOT NULL DEFAULT '' COMMENT '高级模式下 url处理的附加字符',
  `push_mode_1` varchar(255) NOT NULL DEFAULT '' COMMENT '高级模式下 url处理的附加字符',
  `push_mode_2` varchar(255) NOT NULL DEFAULT '' COMMENT '高级模式下 url处理的附加字符',
  `ext` text COMMENT '扩展信息',
  `model` varchar(255) NOT NULL DEFAULT '' COMMENT '模块',
  `content_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `color` varchar(255) NOT NULL DEFAULT '' COMMENT '字体颜色',
  `size` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '字号',
  `bold` varchar(255) NOT NULL DEFAULT '' COMMENT '加粗',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='推荐内容表';

-- ----------------------------
-- Records of ebcms5_recommend
-- ----------------------------
INSERT INTO `ebcms5_recommend` VALUES ('11', '1', '质量方针', '', '华为质量方针：时刻铭记质量是华为生存的基石，是客户选择华为的理由。我们把客户要求与期望准确传递到华为整个价值链，共同构建质量；我们尊重规则流程，一次把事情做对；我们发挥全球员工潜能，持续改进；我们与客户一起平衡机会与风险，快速响应客户需求，实现可持续发展。华为承诺向客户提供高质量的产品、服务和解决方案，持续不断让客户体验到我们致力于为每个客户创造价值。', '', 'index/content/detail', 'id=5', 'id=5', 'id=5&amp;category_id=1', '', 'content/content', '5', '0', '0', '0', '1', '', '0', '');
INSERT INTO `ebcms5_recommend` VALUES ('7', '2', '开放合作共赢', 'http://www.ebcms.com/demo/v1/upload/image/20160820/f5a3fc93e6b2f111c166c48a5ab984ab.jpg!1200_300_3.jpg', '网络的价值在于开放和互联互通，未来将是一个开放合作的全联接世界。数字经济时代的创新不可能单打独斗，企业必须与产业链、产业生态圈共同发展与繁荣。华为把“开放、合作、共赢”作为企业发展的重要基石，致力于为全联接的信息社会打造良性生态系统。在运营商业务领域，华为提出了“OpenROADStoaBetterConnectedWorld”理念，通过聚焦ICT基础设施、全面开放ICT能力，建设面向运营商数字化', '', 'index/content/detail', 'id=4', 'id=4', 'id=4&amp;category_id=1', '', 'content/content', '4', '1471662108', '0', '0', '1', '', '0', '');
INSERT INTO `ebcms5_recommend` VALUES ('4', '1', '公司治理', '', '股东会是公司最高权力机构，对公司增资、利润分配、选举董事/监事等重大事项作出决策。董事会是公司战略和经营管理的决策机构，对公司的整体业务运作进行指导和监督，对公司在战略和运作过程中的重大事项进行决策。监事会主要职责包括内外合规监督，检查公司财务和公司经营状况，对董事、高级管理人员执行职务的行为和董事会运作规范性进行监督。公司实行董事会领导下的轮值CEO制度，轮值CEO在轮值期间作为公司经营管理以及', '', 'index/content/detail', 'id=2', 'id=2', 'id=2&amp;category_id=1', '', 'content/content', '2', '0', '0', '0', '1', '', '0', '');
INSERT INTO `ebcms5_recommend` VALUES ('9', '2', '价值主张', 'http://www.ebcms.com/demo/v1/upload/image/20160820/835e35d0b4abc233c366a9e53e90b866.jpg!1200_300_3.jpg', '随着ICT技术的加速融合，以云计算、大数据为特征的技术正在成为引领和促进ICT行业创新和发展的核心技术。新的技术创新，不仅在全方位地重构CT产业，而且通过IT和CT产业融合带来巨大的商业发展机遇。为适应这一革命性变化，华为围绕客户需求和技术领先持续创新，与业界伙伴开放合作，聚焦构筑面向未来的信息管道，致力于共建更美好的全联接世界，持续为客户和全社会创造价值。我们力争成为运营商客户面向未来转型的战略', '', 'index/content/detail', 'id=1', 'id=1', 'id=1&amp;category_id=1', '', 'content/content', '1', '1471662096', '0', '0', '1', '', '0', '');
INSERT INTO `ebcms5_recommend` VALUES ('6', '1', '华为网络安全白皮书', '', '网络安全一直是我们的客户非常关注的一件事情，也是政府和供应商非常关注的事情。这也是华为关注的一个焦点，保障网络安全是我们公司的核心战略之一。我们认为，只有通过供应商、客户和政策与法律制定者之间的全球合作，我们才能在应对全球网络安全挑战方面取得显著成绩。我们还认为，我们必须共享知识和理解，知道什么行得通、什么行不通，从而减少人们将技术用于从未预料之处的风险。如果真存在一个针对网络安全挑战的简单答案或', '', 'index/content/detail', 'id=9', 'id=9', 'id=9&amp;category_id=2', '', 'content/content', '9', '0', '0', '0', '1', '', '0', '');
INSERT INTO `ebcms5_recommend` VALUES ('8', '1', '开放合作共赢', '', '网络的价值在于开放和互联互通，未来将是一个开放合作的全联接世界。数字经济时代的创新不可能单打独斗，企业必须与产业链、产业生态圈共同发展与繁荣。华为把“开放、合作、共赢”作为企业发展的重要基石，致力于为全联接的信息社会打造良性生态系统。在运营商业务领域，华为提出了“OpenROADStoaBetterConnectedWorld”理念，通过聚焦ICT基础设施、全面开放ICT能力，建设面向运营商数字化', '', 'index/content/detail', 'id=4', 'id=4', 'id=4&amp;category_id=1', '', 'content/content', '4', '0', '0', '0', '1', '', '0', '');
INSERT INTO `ebcms5_recommend` VALUES ('10', '1', '价值主张', '', '随着ICT技术的加速融合，以云计算、大数据为特征的技术正在成为引领和促进ICT行业创新和发展的核心技术。新的技术创新，不仅在全方位地重构CT产业，而且通过IT和CT产业融合带来巨大的商业发展机遇。为适应这一革命性变化，华为围绕客户需求和技术领先持续创新，与业界伙伴开放合作，聚焦构筑面向未来的信息管道，致力于共建更美好的全联接世界，持续为客户和全社会创造价值。我们力争成为运营商客户面向未来转型的战略', '', 'index/content/detail', 'id=1', 'id=1', 'id=1&amp;category_id=1', '', 'content/content', '1', '0', '0', '0', '1', '', '0', '');

-- ----------------------------
-- Table structure for ebcms5_recommendcate
-- ----------------------------
DROP TABLE IF EXISTS `ebcms5_recommendcate`;
CREATE TABLE `ebcms5_recommendcate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `group` varchar(255) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `mark` varchar(255) NOT NULL DEFAULT '' COMMENT '标识',
  `extend_id` varchar(255) NOT NULL DEFAULT '' COMMENT '模型',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='推荐位表';

-- ----------------------------
-- Records of ebcms5_recommendcate
-- ----------------------------
INSERT INTO `ebcms5_recommendcate` VALUES ('1', '默认分组', '推荐', 'index_tuijian', '3', '1471240830', '1468150377', '0', '1');
INSERT INTO `ebcms5_recommendcate` VALUES ('2', '默认分组', '轮播', 'index_slide', '', '1468573414', '1468150388', '0', '1');

-- ----------------------------
-- Table structure for ebcms5_single
-- ----------------------------
DROP TABLE IF EXISTS `ebcms5_single`;
CREATE TABLE `ebcms5_single` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '节点ID',
  `group` varchar(255) NOT NULL DEFAULT '' COMMENT '分组',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `ebcms_url` varchar(255) NOT NULL DEFAULT '' COMMENT '外部链接',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `shorttitle` varchar(255) NOT NULL DEFAULT '' COMMENT '短标题',
  `metatitle` varchar(255) NOT NULL DEFAULT '' COMMENT 'META标题',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图',
  `tpl` varchar(255) NOT NULL DEFAULT '' COMMENT '模板',
  `body` text COMMENT '内容',
  `ext` text COMMENT '扩展内容',
  `click` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='单页表';

-- ----------------------------
-- Records of ebcms5_single
-- ----------------------------
INSERT INTO `ebcms5_single` VALUES ('1', '公司相关', '/company', '', '公司简介', '', '', '', '某某公司是一个什么养的公司。', 'http://www.ebcms.com/demo/v1/Uploads/image/20160418/thumb_150_150_5714d31b84f91.png', '', '&lt;p&gt;华为是全球领先的信息与通信技术( ICT)解决方案供应商，专注于ICT领域，坚持稳健经营、持续创新、开放合 作，在电信运营商、企业、终端和云计算等领域构筑了端到端的解决方案优势，为运营商客户、企业客户和消 费者提供有竞争力的ICT解决方案、 产品和服务， 并致力于使能未来信息社会、 构建更美好的全联接世界。 目 前，华为有17万多名员工，业务遍及全球170多个国家和地区，服务全世界三分之一以上的人口。&lt;/p&gt;&lt;h3&gt;我们为世界带来了什么？&lt;/h3&gt;&lt;p&gt;为客户创造价值。华为和运营商一起，在全球建设了1,500多张网络，帮助世界超过三分之一的人口实现联接。 华为和企业客户一起，以开放的云计算和敏捷的企业网络，助力平安城市、金融、交通、能源等领域实现高效运 营和敏捷创新。华为智能终端和智能手机，正在帮助人们享受高品质的数字工作、生活和娱乐体验。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '{\"__config__\":{\"__test__\":\"test\"}}', '0', '1471241193', '1468478445', '10', '1');
INSERT INTO `ebcms5_single` VALUES ('2', '公司相关', '/contact', '', '联系我们', '', '', '', '/about/us /about /contactus', '', '', '&lt;p&gt;地址：成都高新区环球中心A座13楼&lt;/p&gt;&lt;p&gt;电话：18000534006&lt;/p&gt;', '{\"联系方式\":\"成都市武侯区。。\",\"__config__\":{\"联系方式\":\"text\",\"联系电话\":\"text\",\"公司简介\":\"textarea\",\"公司logo\":\"file\",\"__test__\":\"test\"},\"联系电话\":\"18202839759\",\"公司简介\":\"我们公司是。。。\",\"公司logo\":\"\\/image\\/20160722\\/cb8748649029192ee9bd1d1dd7bbc7d5.jpg\"}', '0', '1471580807', '1468479488', '6', '1');
INSERT INTO `ebcms5_single` VALUES ('3', '公司相关', '/expect', '', '价值主张', '', '', '', '阿斯顿发生啊手动阀十大撒旦发射点发', '/image/20160717/1468749632483246578b5740b590c.png', '', '&lt;p&gt;随着ICT技术的加速融合，以云计算、大数据为特征的技术正在成为引领和促进ICT行业创新和发展的核心技 术。新的技术创新，不仅在全方位地重构CT产业，而且通过IT和CT产业融合带来巨大的商业发展机遇。为适应 这一革命性变化，华为围绕客户需求和技术领先持续创新，与业界伙伴开放合作，聚焦构筑面向未来的信息管 道，致力于共建更美好的全联接世界，持续为客户和全社会创造价值。我们力争成为运营商客户面向未来转型 的战略合作伙伴，成为领先的企业ICT基础设施提供商，成为消费者喜爱和信赖的、全球领先的智能终端品牌。&lt;/p&gt;&lt;p&gt;无处不在的宽带&lt;/p&gt;&lt;p&gt;互联网使得信息的传播和获取更加便捷， 人们将越来越渴望能在任意时间、 任意地点使用任意设备联接到网 络，尽情体验快速增长的高质量内容和应用，享受移动办公带来的便利。企业IT向数据中心和云服务的迁移， 将对网络提出更高的需求。面对即将到来的数字洪水， 网络需要变得更宽、 覆盖更广、更敏捷，让更多的人享 受到网络带来的好处。&lt;/p&gt;&lt;p&gt;由于消费者对网络联接、带宽、可靠性和安全性的需求还远远没有得到满足，因此华为将针对全球不同运营商 所处的不同发展阶段，不同解决方案需求，进行有效适配，与客户共同应对商业和技术上的挑战。华为将致 力于帮助运营商提升网络容量、优化网络管理，实现互联网化运营 ；在新架构( Soft COM)、新技术等方面持续 创新，向客户提供技术领先、平滑演进的产品和解决方案，帮助客户建设高效的基础网络。提供面向用户On- Demand的服务，帮助运营商利用IT技术改造电信网络，实现互联网化运营，向用户提供高质量的内容。帮助运 营商实现现有IT资源整合，以及网络的NFV/ SDN转型 ；聚合优质内容资源，帮助运营商提升收入 ；支撑运营商 数字化运营，实现ROADS (Real-time, On-demand, All-online, DIY, Social)体验，使人们更加自由地 享受到无处不在的宽带。&lt;/p&gt;&lt;p&gt;敏捷创新&lt;/p&gt;&lt;p&gt;展望未来，ICT仍处于快速发展阶段， 移动性、 云计算、大数据和社区化等新趋势正在引领行业开创新的格 局 ；世界正在发生深刻的数字化变革，互联网正在促进传统产业的升级和重构。&lt;/p&gt;&lt;p&gt;各行各业需要快速洞察商机，并借助IT不断提升组织的协同，更快更好地将新产品、新业务推向市场。IT正在 从支撑系统转变为生产系统，成为企业的核心竞争力。&lt;/p&gt;&lt;p&gt;华为致力于成为创新的“一站式I CT基础设施提供商”，提供基于云计算的数据中心基础设施和数字基础设施解 决方案，帮助客户提升存储、计算、网络资源的使用效率，实现业务系统的快速部署、精简运维和高效管理 ； 提供行业解决方案以有效适配垂直行业需求 ；提供基于大数据的智能数据分析系统，帮助客户洞察商机、实现 敏捷的商业创新。 通过合作、 创新， 华为将自身的ICT产品嵌入到合作伙伴的行业解决方案中， 让产品能够适 配行业化需求，易于集成。&lt;/p&gt;&lt;p&gt;未来30年是企业逐渐拆除传统数据中心、向混合云迁移的30年。华为构建基于公有云服务技术的混合云解决方 案，满足企业客户的多样化需求，并协助运营商建设公有云，共同把握云服务的巨大机会。&lt;/p&gt;&lt;p&gt;极致体验&lt;/p&gt;&lt;p&gt;未来智能终端将不断丰富和加强人类情感、需求的识别以及对外部环境的感知，成为人们生活方式中不可缺少 的工具和伙伴。&lt;/p&gt;&lt;p&gt;华为将通过工业设计创新和关键技术创新，聚焦精品，持续打造设计时尚、领先创新、安全易用的高品质产 品 ；通过构建应用和服务的生态系统，围绕个人健康与生活、工作、家庭、出行等各种场景，提供手机、智能 手表、 智能终端等产品和服务， 聚焦端云协同，携手打造更美好的全场景体验，与用户建立长期情感联接 ；为 全球用户提供O2O的购买体验和服务，全方位提升用户体验。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '{\"__config__\":{\"__test__\":\"test\"}}', '0', '1471241431', '1468583893', '9', '1');

-- ----------------------------
-- Table structure for ebcms5_tongji
-- ----------------------------
DROP TABLE IF EXISTS `ebcms5_tongji`;
CREATE TABLE `ebcms5_tongji` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '节点ID',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '网页标题',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  `ip` varchar(255) NOT NULL DEFAULT '' COMMENT 'ip',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='浏览统计表';

-- ----------------------------
-- Records of ebcms5_tongji
-- ----------------------------

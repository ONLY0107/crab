DROP TABLE IF EXISTS `crab_administrator`;
create table `crab_administrator`(
`id` int(11) not null auto_increment comment '管理员id',
`adname` varchar(50) not null,
`password` varchar(50) not null,
`create_time` datetime not null ,
`update_time` datetime not null,
primary key (`id`),
unique key `adname_unique` (`adname`) using btree
)ENGINE=InnoDB   DEFAULT CHARSET =utf8;

DROP TABLE IF EXISTS `crab_user`;
create table `crab_user`(
`id` int(11) not null auto_increment ,
`user_id` int(11) not null ,
`name` varchar(50) not null,
`password` varchar(50) not null,
`role` int(4) not null comment '角色 0-管理员，1-普通用户',
`create_time` datetime not null ,
`update_time` datetime not null,
primary key (`id`),
unique key `name_unique` (`name`) using btree
)ENGINE=InnoDB AUTO_INCREMENT =201801 DEFAULT CHARSET =utf8;

DROP TABLE IF EXISTS `crab_normaluser`;
create table `crab_normaluser`(
`id` int(11) not null auto_increment  ,
`username` varchar(50) not null,
`password` varchar(50) not null,
`email` varchar(50) DEFAULT null,
`phone` varchar(20) DEFAULT null,
`question` varchar(100) DEFAULT null,
`answer` varchar(100) DEFAULT null,
`create_time` datetime not null ,
`update_time` datetime not null,
primary key (`id`),
unique key `username_unique` (`username`) using btree
)ENGINE=InnoDB   DEFAULT CHARSET =utf8;

DROP TABLE IF EXISTS `crab_category`;
create table `crab_category`(
`id` int(11) not null auto_increment comment '类别id',
`parent_id` int(11) DEFAULT null  ,
`name` varchar(50) DEFAULT null,
`status` tinyint(1) DEFAULT '1' comment '类别状态1-正常， 2-废弃',
`sort_order` int(4) DEFAULT null,
`create_time` datetime DEFAULT null ,
`update_time` datetime DEFAULT null,
primary key (`id`)
)ENGINE=InnoDB AUTO_INCREMENT=100000 DEFAULT CHARSET =utf8;

DROP TABLE IF EXISTS `crab_product`;
create table `crab_product`(
`id` int(11) not null auto_increment comment '产品id',
`category_id` int(11) not null  ,
`name` varchar(100) not null,
`subtitle` varchar(200)  DEFAULT null,
`image_main` varchar(500) DEFAULT null,
`image_add` text comment '图片地址，json格式，扩展用',
`detail` text comment'商品详情',
`price` decimal(20,2) not null ,
`stock` int(11) not null comment '库存数量', 
`status` int(6) DEFAULT '1' comment '商品状态1-在售， 2-下架 ， 3-删除',
`create_time` datetime DEFAULT null ,
`update_time` datetime DEFAULT null,
primary key (`id`)
)ENGINE=InnoDB AUTO_INCREMENT =26 DEFAULT CHARSET =utf8;

 

DROP TABLE IF EXISTS `crab_cart`;
create table `crab_cart`(
`id` int(11) not null auto_increment comment '购物车id',
`user_id` int(11) not null  ,
`product_id` int(11) DEFAULT null,
`quantity` int(11) DEFAULT null comment '数量',
`checked` int(11) DEFAULT null comment '是否勾选状态1-已勾选， 0-未勾选',
`create_time` datetime DEFAULT null ,
`update_time` datetime DEFAULT null,
primary key (`id`),
key `user_id_index` (`user_id`)
)ENGINE=InnoDB AUTO_INCREMENT =121 DEFAULT CHARSET =utf8;

DROP TABLE IF EXISTS `crab_pay_info`;
create table `crab_pay_info`(
`id` int(11) not null auto_increment comment '支付信息id',
`user_id` int(11) DEFAULT null  ,
`order_no` bigint(20) DEFAULT null comment '订单号',
`pay_platform` int(11) DEFAULT null comment '支付平台 1-支付宝，2-微信',
`platform_numble` varchar(200) DEFAULT null comment '支付宝支付流水号',
`platform_status` varchar(20) DEFAULT null comment '支付宝支付状态',
`create_time` datetime DEFAULT null ,
`update_time` datetime DEFAULT null,
primary key (`id`)
)ENGINE=InnoDB AUTO_INCREMENT =57 DEFAULT CHARSET =utf8;


DROP TABLE IF EXISTS `crab_order`;
create table `crab_order`(
`id` int(11) not null auto_increment comment '订单id',
`user_id` int(11) DEFAULT null  ,
`order_no` bigint(20) DEFAULT null comment '订单号',
`shipping-id` int(11) DEFAULT null,
`payment` decimal(20,2) DEFAULT null comment '实际支付金额',
`payment_type` int(4) DEFAULT null comment '支付类型1-在线支付',
`postage` int(10) DEFAULT null comment '运费',
`status` int(10) DEFAULT null comment '订单状态 ：0-已取消，10-未支付，20-已支付，30-已发货，40-交易成功，50-交易关闭',
`payment_time` datetime DEFAULT null,
`send_time` datetime DEFAULT null comment'发货时间',
`end_time` datetime DEFAULT null comment'交易完成时间',
`close_time` datetime DEFAULT null comment'交易关闭时间',
`create_time` datetime DEFAULT null ,
`update_time` datetime DEFAULT null,
primary key (`id`),
unique key `order_no_index`(`order_no`) using btree
)ENGINE=InnoDB AUTO_INCREMENT =101 DEFAULT CHARSET =utf8;



DROP TABLE IF EXISTS `crab_order_item`;
create table `crab_order_item`(
`id` int(11) not null auto_increment comment '订单明细表id',
`user_id` int(11) DEFAULT null  ,
`order_no` bigint(20) DEFAULT null comment '订单号',
`product_id` int(11) DEFAULT null ,
`product_name` varchar(100) DEFAULT null ,
`product_image` varchar(500) DEFAULT null,
`current_unit_price` decimal(20,2) DEFAULT null comment'生成订单时的商品单价',
`quantity` int(11) DEFAULT null comment '数量',
`total_price` decimal(20,2) DEFAULT null comment'商品总价',
`create_time` datetime DEFAULT null ,
`update_time` datetime DEFAULT null,
primary key (`id`),
key `order_no_index`(`order_no`)using btree,
key `order_no_user_id_index`(`user_id`,`order_no`)using btree
)ENGINE=InnoDB AUTO_INCREMENT =111 DEFAULT CHARSET =utf8;



DROP TABLE IF EXISTS `crab_order_shipping`;
create table `crab_order_shipping`(
`id` int(11) not null auto_increment comment '收货地址id',
`user_id` int(11) DEFAULT null  ,
`recevier_name` varchar(20) DEFAULT null comment'收货姓名',
`recevier_phone` varchar(20) DEFAULT null,
`recevier_mobile` varchar(20) DEFAULT null,
`recevier_province` varchar(20) DEFAULT null comment'省份',
`recevier_city` varchar(20) DEFAULT null comment'城市',
`recevier_district` varchar(20) DEFAULT null comment '区/县',
`recevier_address` varchar(200) DEFAULT null comment '详细地址',
`recevier_zip` varchar(6) DEFAULT null comment '邮编',
`create_time` datetime DEFAULT null ,
`update_time` datetime DEFAULT null,
primary key (`id`)
)ENGINE=InnoDB AUTO_INCREMENT =31 DEFAULT CHARSET =utf8;



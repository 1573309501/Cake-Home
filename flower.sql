#设置客户端连接服务器端编码
SET NAMES UTF8;
#丢弃数据库，如果存在
DROP DATABASE IF EXISTS dangao;
#创建数据库，设置存储的编码
CREATE DATABASE dangao CHARSET=UTF8;
#进入数据库
USE dangao;


#创建保存鲜花数据的表
CREATE TABLE flower(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR
(64) UNIQUE NOT NULL,         #标题
  price DECIMAL
(7,2) NOT NULL ,              #特价
  price1 DECIMAL
(7,2) NOT NULL ,              #原价
  img VARCHAR
(5000),                       #图片路径
  category VARCHAR
(32),                         #所属分类
  detail VARCHAR
(64),                         #分类详情
  categoryimg VARCHAR
(5000)                        #所属分类图片
);
#插入数据
INSERT INTO flower
VALUES
  (1, "天使降临", 198, 238, "https://img.yzcdn.cn/upload_files/2019/12/10/FkMgOEsdWVo2iltEE5kIxCnb9I_-.jpeg!large.webp", "玫瑰花束", "表达爱意送祝福", "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2146851836,661138354&fm=26&gp=0.jpg"),
  (2, "爱您一生", 238, 388, "https://img.yzcdn.cn/upload_files/2019/12/10/Fu0vBnMd9UZA6Y0eWha-dVqylqeM.jpeg!large.webp", "康乃馨花束", "粉红色的感恩", "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605019546805&di=e5f19dab455bf5d8acabe330bc97c09e&imgtype=0&src=http%3A%2F%2Fimg1.imgtn.bdimg.com%2Fit%2Fu%3D3245162136%2C2145485205%26fm%3D214%26gp%3D0.jpg"),
  (3, "心心相印", 159, 239, "https://img.yzcdn.cn/upload_files/2020/04/22/Ft-epohzyG3QL-WFH6RG0bIUA2CS.jpg!large.webp", "向日葵花束", "伟大沉默的爱", "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605019589678&di=3fc9e6a63dc6a252559b97dad6d7701a&imgtype=0&src=http%3A%2F%2Fimg.xiangsidi.com%2Fattachment%2Fgoods%2F800%2F201908%2F5d6746c5bf254.jpg"),
  (4, "长久的爱", 178, 356, "https://img.yzcdn.cn/upload_files/2019/04/02/Fp2INoTTMoYDZd7gaudqESR_nnEx.jpeg!large.webp", "玫瑰花束", "表达爱意送祝福", "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2146851836,661138354&fm=26&gp=0.jpg"),
  (5, "胭脂雪", 198, 268, "https://img.yzcdn.cn/upload_files/2019/12/10/Fji4y7xRVJ6j9fJVPISb94wPPsjp.jpeg!large.webp", "玫瑰花束", "表达爱意送祝福", "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2146851836,661138354&fm=26&gp=0.jpg"),
  (6, "自由女神", 368, 528, "https://img.yzcdn.cn/upload_files/2019/04/02/FnZ2RodGBbJsxWnpnWKiPrgNpUEZ.jpeg!large.webp", "大型花束", "99朵玫瑰告白求婚必备", "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3275285352,2023905289&fm=26&gp=0.jpg"),
  (7, "小仙女", 188, 319, "https://img.yzcdn.cn/upload_files/2020/04/23/FkLNyeu3tkar16UNbANKwT1Prv_4.jpg!large.webp", "创意花束", "韩式混搭蓝色妖姬", "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605019755952&di=df60e1d0f1cedbd6d761311c9b3b69df&imgtype=0&src=http%3A%2F%2Fm.360buyimg.com%2Fn12%2Fg15%2Fm00%2F17%2F19%2Frbehwfkqxp0iaaaaaattq91gmskaaf2sge1z68abnpd254.jpg!q70.jpg"),
  (8, "缤纷魂动", 598, 699, "https://img.yzcdn.cn/upload_files/2019/03/29/FguJ4DlW_L162trIgx99CwroZZbt.jpeg!large.webp", "高端花束", "大牌进口高端花束", "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605174921839&di=fb2f1f7d1ecc4038aaa4ab6b2568b3ee&imgtype=0&src=http%3A%2F%2Fimg3.tbcdn.cn%2Ftfscom%2Fi4%2F249727959%2FTB2IrXpaV95V1Bjy0FdXXc5BVXa_%2521%2521249727959.jpg"),
  (9, "岁月静好", 169, 239, "https://img.yzcdn.cn/upload_files/2020/06/16/Fr7hyYHK9tcM4-0TdT9WPvyrinaB.jpg!large.webp", "向日葵花束", "伟大沉默的爱", "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605019589678&di=3fc9e6a63dc6a252559b97dad6d7701a&imgtype=0&src=http%3A%2F%2Fimg.xiangsidi.com%2Fattachment%2Fgoods%2F800%2F201908%2F5d6746c5bf254.jpg")
,
  (10, "心存感激", 269, 358, "https://img.yzcdn.cn/upload_files/2020/04/23/Fi3u9sF5U_tZbEOWN9wjff7-P3hb.jpg!large.webp", "康乃馨花束", "粉红色的感恩", "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605019546805&di=e5f19dab455bf5d8acabe330bc97c09e&imgtype=0&src=http%3A%2F%2Fimg1.imgtn.bdimg.com%2Fit%2Fu%3D3245162136%2C2145485205%26fm%3D214%26gp%3D0.jpg"),
  (11, "只要有你", 188, 328, "https://img.yzcdn.cn/upload_files/2019/04/02/FrcBprxFWmmR2FUtVzsKhHf-69U4.jpeg!large.webp", "大型花束", "99朵玫瑰告白求婚必备", "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3275285352,2023905289&fm=26&gp=0.jpg"),
  (12, "心想事成", 219, 319, "https://img.yzcdn.cn/upload_files/2019/04/21/FqhY02IAnHQ4g_AydoSLjp5txCRn.jpeg!large.webp", "创意花束", "韩式混搭蓝色妖姬", "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605019755952&di=df60e1d0f1cedbd6d761311c9b3b69df&imgtype=0&src=http%3A%2F%2Fm.360buyimg.com%2Fn12%2Fg15%2Fm00%2F17%2F19%2Frbehwfkqxp0iaaaaaattq91gmskaaf2sge1z68abnpd254.jpg!q70.jpg"),
  (13, "浪漫告白", 288, 399, "https://img.yzcdn.cn/upload_files/2019/04/05/FiYsQMZ3Y4ayl4THOZF5mCSyMG4E.jpeg!large.webp", "高端花束", "大牌进口高端花束", "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605174921839&di=fb2f1f7d1ecc4038aaa4ab6b2568b3ee&imgtype=0&src=http%3A%2F%2Fimg3.tbcdn.cn%2Ftfscom%2Fi4%2F249727959%2FTB2IrXpaV95V1Bjy0FdXXc5BVXa_%2521%2521249727959.jpg"),
  (14, "浅浅微笑", 169, 239, "https://img.yzcdn.cn/upload_files/2019/05/26/FuAWCEsAwVtzD_Zcb7QcX0l8kRuk.jpeg!large.webp", "向日葵花束", "伟大沉默的爱", "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605019589678&di=3fc9e6a63dc6a252559b97dad6d7701a&imgtype=0&src=http%3A%2F%2Fimg.xiangsidi.com%2Fattachment%2Fgoods%2F800%2F201908%2F5d6746c5bf254.jpg")
,
  (15, "爱到永久", 238, 388, "https://img.yzcdn.cn/upload_files/2019/04/06/FrUPLxp7aHagopohZM4BsrgIkZcv.jpeg!large.webp", "康乃馨花束", "粉红色的感恩", "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605019546805&di=e5f19dab455bf5d8acabe330bc97c09e&imgtype=0&src=http%3A%2F%2Fimg1.imgtn.bdimg.com%2Fit%2Fu%3D3245162136%2C2145485205%26fm%3D214%26gp%3D0.jpg"),
  (16, "半夏微凉", 208, 368, "https://img.yzcdn.cn/upload_files/2019/04/01/FqtA7pJscbVoDrauMg60vSRYO7ou.jpeg!large.webp", "大型花束", "99朵玫瑰告白求婚必备", "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3275285352,2023905289&fm=26&gp=0.jpg"),
  (17, "真爱如初", 198, 329, "https://img.yzcdn.cn/upload_files/2020/04/22/Fh6IVFR10XilssqVJUyDR7OUKApl.jpg!large.webp", "创意花束", "韩式混搭蓝色妖姬", "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605019755952&di=df60e1d0f1cedbd6d761311c9b3b69df&imgtype=0&src=http%3A%2F%2Fm.360buyimg.com%2Fn12%2Fg15%2Fm00%2F17%2F19%2Frbehwfkqxp0iaaaaaattq91gmskaaf2sge1z68abnpd254.jpg!q70.jpg"),
  (18, "爱的故事", 368, 459, "https://img.yzcdn.cn/upload_files/2020/04/22/FvHkEFOQrVSFlnydp3JRM8FYTJOl.jpg!large.webp", "高端花束", "大牌进口高端花束", "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605174921839&di=fb2f1f7d1ecc4038aaa4ab6b2568b3ee&imgtype=0&src=http%3A%2F%2Fimg3.tbcdn.cn%2Ftfscom%2Fi4%2F249727959%2FTB2IrXpaV95V1Bjy0FdXXc5BVXa_%2521%2521249727959.jpg");





#创建保存鲜花轮播图数据的表
CREATE TABLE flowerbanner
(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  pic VARCHAR
(5000)
  #轮播图图片路径
);
INSERT INTO flowerbanner
VALUES
  (1, "https://img02.hua.com/slider/xianhua01_9012441.jpg"),
  (2, "https://img02.hua.com/slider/xianhua02_20190213.jpg"),
  (3, "https://img02.hua.com/slider/xianhua03_20190213.jpg");
#创建表单
CREATE TABLE cake_classify(		
	cid INT PRIMARY KEY AUTO_INCREMENT,
	classify VARCHAR
(8)
);
INSERT INTO cake_classify
VALUES
  (1, '人气推荐'),
  (2, '蛋糕品牌'),
  (3, '蛋糕口味'),
  (4, '蛋糕人群');
CREATE TABLE cake_classify_details
(
  #分类详情
    cid
  INT PRIMARY KEY AUTO_INCREMENT,  #id	
	brand VARCHAR
  (10),		#分类
	brand_img VARCHAR
  (100),	#分类图片
	aid INT				#和cake_classify对应的id
);
  INSERT INTO cake_classify_details
  VALUES
    (null, '元祖食品', 'https://img02.hua.com/pc/pimg/cake_brand_s_04.jpg?0313', 2),
    (null, '甘一客', 'https://img02.hua.com/pc/pimg/cake_brand_21cake.png', 2),
    (null, 'BONCAKE', 'https://img02.hua.com/pc/pimg/boncake.png', 2),
    (null, '窝夫小子', 'https://img02.hua.com/pc/pimg/cake_brand_s_02.jpg', 2),
    (null, 'Mcake', 'https://img02.hua.com/pc/pimg/cake_brand_s_14.jpg', 2),
    (null, '心之和', 'https://img02.hua.com/pc/pimg/cake_brand_s_xinzhihe.png', 2),
    (null, '派悦坊', 'https://img02.hua.com/pc/pimg/cake_brand_s_pantry.png', 2),
    (null, '米卡米卡', 'https://img02.hua.com/pc/pimg/cake_brand_s_03.jpg', 2),
    (null, '诺心', 'https://img02.hua.com/pc/pimg/cake_brand_s_10.jpg', 2);
  CREATE TABLE cake_details
  (
    #详情
      cid
    INT PRIMARY KEY AUTO_INCREMENT,  #id	
	img_a VARCHAR
    (100),		#轮播图图片
	img_b VARCHAR
    (100),		#轮播图图片
	img_c VARCHAR
    (100),		#轮播图图片
	aid INT,			#和cake_classify_details对应的id
	details VARCHAR
    (20),		#详情
	details_img_a VARCHAR
    (100),		#详情图片
	details_img_b VARCHAR
    (100),		#详情图片
	details_img_c VARCHAR
    (100),		#详情图片
	title VARCHAR
    (20),		#标题
	price INT,			#价格
	discount_prices INT		#折后价格
);
    INSERT INTO cake_details
    VALUES
    

(2,'http://static.wdmcake.cn/images/202010/goods_img/3167_G_1602264616254.jpg','http://static.wdmcake.cn/images/202010/goods_img/3167_P_1602264636721.jpg','http://static.wdmcake.cn/images/202010/thumb_img/3167_thumb_P_1603057956921.jpg',1,'9种口味，一次过瘾,100%使用进口天然稀奶油；','http://www.wdmcake.cn/images/upload/Image/9%E6%8B%BC%E8%9B%8B%E7%B3%95(1).jpg','http://www.wdmcake.cn/images/upload/Image/870_01(1).jpg','http://www.wdmcake.cn/images/upload/Image/870%E5%89%AF%E6%9C%AC(1).jpg','9拼蛋糕','398','298'),

(3,'http://static.wdmcake.cn/images/202007/goods_img/2261_P_1594590569865.jpg','http://static.wdmcake.cn/images/201910/thumb_img/2261_thumb_P_1570504357278.jpg','http://static.wdmcake.cn/images/202010/thumb_img/2261_thumb_P_1603059997848.jpg',1,'100%使用进口天然稀奶油；奶油丰富，简约时尚，享受经典原味','http://www.wdmcake.cn/images/upload/Image/870(54).jpg','http://www.wdmcake.cn/images/upload/Image/%E7%BB%8F%E5%85%B8100_02.jpg','http://www.wdmcake.cn/images/upload/Image/%E7%BB%8F%E5%85%B8100_03.jpg','经典100%蛋糕','358','258'),

(4,'http://static.wdmcake.cn/images/201910/goods_img/2256_P_1570498400004.jpg','http://static.wdmcake.cn/images/201910/thumb_img/2256_thumb_P_1570498410148.jpg','http://static.wdmcake.cn/images/202010/thumb_img/2256_thumb_P_1603060155341.jpg',1,'娇艳欲滴草莓公主，在100%使用天然稀奶油的陪衬下鲜美无比，似乎每个人都想咬上一口','http://www.wdmcake.cn/images/upload/Image/2018071925.jpg','http://www.wdmcake.cn/images/upload/Image/2018071927.jpg','http://www.wdmcake.cn/images/upload/Image/2018071928.jpg','草莓公主蛋糕','369','225'),

(5,'http://static.wdmcake.cn/images/201910/goods_img/2262_G_1570496820942.jpg','http://static.wdmcake.cn/images/201910/thumb_img/2262_thumb_P_1570496830070.jpg','http://static.wdmcake.cn/images/202010/thumb_img/2262_thumb_P_1603059939349.jpg',1,'100%使用进口天然稀奶油；搭配丰富的水果。','http://www.wdmcake.cn/images/upload/Image/2018071915.jpg','http://www.wdmcake.cn/images/upload/Image/2018071917.jpg','http://www.wdmcake.cn/images/upload/Image/2018071918.jpg','缤纷盛果蛋糕','376','240'),

(6,'http://www.wdmcake.cn/images/upload/Image/201811261.jpg','http://static.wdmcake.cn/images/201910/thumb_img/2264_thumb_P_1570504893014.jpg','http://static.wdmcake.cn/images/201910/thumb_img/2264_thumb_P_1570504896644.jpg',1,'100%使用进口天然稀奶油，与樱桃层层融合。','http://www.wdmcake.cn/images/upload/Image/2018071915.jpg','http://www.wdmcake.cn/images/upload/Image/201811261.jpg','http://www.wdmcake.cn/images/upload/Image/201811262.jpg','经典黑森林蛋糕','376','240'),

(7,'http://static.wdmcake.cn/images/201908/thumb_img/2275_thumb_P_1567106728710.jpg','http://static.wdmcake.cn/images/202010/thumb_img/2275_thumb_P_1603059278873.jpg','http://static.wdmcake.cn/images/202010/thumb_img/2275_thumb_P_1603059278873.jpg',1,'100%使用进口天然稀奶油；搭配丰富的水果。','http://www.wdmcake.cn/images/upload/Image/%E9%9B%AA%E5%9F%9F%E6%A3%AE%E6%9E%97%E8%9B%8B%E7%B3%95%E8%AF%A6%E6%83%85%E9%A1%B5_01.jpg','http://www.wdmcake.cn/images/upload/Image/%E9%9B%AA%E5%9F%9F%E6%A3%AE%E6%9E%97%E8%9B%8B%E7%B3%95%E8%AF%A6%E6%83%85%E9%A1%B5_03.jpg','http://www.wdmcake.cn/images/upload/Image/%E9%9B%AA%E5%9F%9F%E6%A3%AE%E6%9E%97%E8%9B%8B%E7%B3%95%E8%AF%A6%E6%83%85%E9%A1%B5_02.jpg','雪域森林蛋糕','376','240'),

(8,'http://static.wdmcake.cn/images/202007/goods_img/2258_G_1594595945579.jpg','http://static.wdmcake.cn/images/202007/thumb_img/2258_thumb_P_1594589520436.jpg','http://static.wdmcake.cn/images/202010/thumb_img/2258_thumb_P_1603060116198.jpg',1,'100%使用进口天然稀奶油；搭配丰富的水果。','http://www.wdmcake.cn/images/upload/Image/2018071915.jpg','http://www.wdmcake.cn/images/upload/Image/2018071917.jpg','http://www.wdmcake.cn/images/upload/Image/2018071918.jpg','粉色少女蛋糕','376','240'),

(9,'http://static.wdmcake.cn/images/201910/goods_img/2262_G_1570496820942.jpg','http://static.wdmcake.cn/images/201910/thumb_img/2262_thumb_P_1570496830070.jpg','http://static.wdmcake.cn/images/202010/thumb_img/2262_thumb_P_1603059939349.jpg',1,'100%使用进口天然稀奶油。','http://www.wdmcake.cn/images/upload/Image/%E7%B2%89%E8%89%B2%E5%B0%91%E5%A5%B3%E8%9B%8B%E7%B3%95_01.jpg','http://www.wdmcake.cn/images/upload/Image/%E7%B2%89%E8%89%B2%E5%B0%91%E5%A5%B3%E8%9B%8B%E7%B3%95_02.jpg','http://www.wdmcake.cn/images/upload/Image/%E7%B2%89%E8%89%B2%E5%B0%91%E5%A5%B3%E8%9B%8B%E7%B3%95%E8%AF%A6%E6%83%85%E9%A1%B5_04.jpg','缤纷盛果蛋糕','376','240'),

(10,'http://static.wdmcake.cn/images/201910/goods_img/2263_G_1570502358595.jpg','http://static.wdmcake.cn/images/201910/thumb_img/2263_thumb_P_1570502367811.jpg','http://static.wdmcake.cn/images/202010/thumb_img/2263_thumb_P_1603059892884.jpg',1,'100%使用进口天然稀奶油；搭配进口扁桃仁片。','http://www.wdmcake.cn/images/upload/Image/2018071987.jpg','http://www.wdmcake.cn/images/upload/Image/2018071988.jpg','http://www.wdmcake.cn/images/upload/Image/2018071989.jpg','华尔兹蛋糕','376','240'),

(11,'http://static.wdmcake.cn/images/201910/goods_img/2265_G_1570507480866.jpg','http://static.wdmcake.cn/images/201910/thumb_img/2265_thumb_P_1570507480434.jpg','http://static.wdmcake.cn/images/202010/thumb_img/2265_thumb_P_1603059803729.jpg',1,'巧克力奶油天堂，每一口都能尝到巧克力的香甜，每一口都有100%使用进口天然稀奶油的自然味道','http://www.wdmcake.cn/images/upload/Image/20180719165.jpg','http://www.wdmcake.cn/images/upload/Image/20180719166.jpg','http://www.wdmcake.cn/images/upload/Image/20180719167.jpg','巧克力盛宴蛋糕','376','240'),

(12,'http://static.wdmcake.cn/images/202007/goods_img/2272_G_1594596050683.jpg','http://static.wdmcake.cn/images/202007/thumb_img/2272_thumb_P_1594592871606.jpg','http://static.wdmcake.cn/images/202008/thumb_img/2272_thumb_P_1597184776960.jpg',1,'呆萌兔儿的梦想很简单，就是吃口100%使用进口天然稀奶油的香甜','http://www.wdmcake.cn/images/upload/Image/%E8%90%8C%E8%90%8C%E5%85%94%E8%9B%8B%E7%B3%95_01.jpg','http://www.wdmcake.cn/images/upload/Image/%E8%90%8C%E8%90%8C%E5%85%94%E8%9B%8B%E7%B3%95_02.jpg','http://www.wdmcake.cn/images/upload/Image/%E8%90%8C%E8%90%8C%E5%85%94%E8%9B%8B%E7%B3%95_03.jpg','萌萌兔蛋糕','376','240'),

(13,'http://static.wdmcake.cn/images/201910/goods_img/2273_G_1570501535205.jpg','http://static.wdmcake.cn/images/201910/thumb_img/2273_thumb_P_1570501544566.jpg','http://static.wdmcake.cn/images/202010/thumb_img/2273_thumb_P_1603059332582.jpg',1,'选用法国或英国天然稀奶油；奶油丰富，享受经典原味。','http://www.wdmcake.cn/images/upload/Image/2018071977.jpg','http://www.wdmcake.cn/images/upload/Image/2018071978.jpg','http://www.wdmcake.cn/images/upload/Image/2018071979.jpg','花漾蛋糕','376','240'),

(14,'http://static.wdmcake.cn/images/201910/goods_img/2270_G_1570501058402.jpg','http://static.wdmcake.cn/images/201910/thumb_img/2270_thumb_P_1570501068821.jpg','http://static.wdmcake.cn/images/202010/thumb_img/2270_thumb_P_1603059542931.jpg',1,'100%使用进口天然稀奶油；福寿绵延，祝寿好礼。','http://www.wdmcake.cn/images/upload/Image/2018071959.jpg','http://www.wdmcake.cn/images/upload/Image/2018071960.jpg','http://www.wdmcake.cn/images/upload/Image/2018071961.jpg','富贵天喜蛋糕','376','240'),

(15,'http://static.wdmcake.cn/images/201907/goods_img/2252_P_1563839278050.jpg','http://static.wdmcake.cn/images/201907/thumb_img/2252_thumb_P_1563839299157.jpg','http://static.wdmcake.cn/images/201907/thumb_img/2252_thumb_P_1563839302987.jpg',1,'憨态可掬的北极熊，相互交流着各自的探险经历和欢乐趣事，你一句、我一句，场面热闹非凡','http://www.wdmcake.cn/images/upload/Image/%E5%8F%8C%E5%B1%82%E5%8C%97%E6%9E%81%E7%86%8A%E8%9B%8B%E7%B3%95_01.jpg','http://www.wdmcake.cn/images/upload/Image/%E5%8F%8C%E5%B1%82%E5%8C%97%E6%9E%81%E7%86%8A%E8%9B%8B%E7%B3%95_02.jpg','http://www.wdmcake.cn/images/upload/Image/%E5%8F%8C%E5%B1%82%E5%8C%97%E6%9E%81%E7%86%8A%E8%9B%8B%E7%B3%95_03.jpg','双层北极熊蛋糕','376','240'),

(16,'http://static.wdmcake.cn/images/201908/goods_img/2289_P_1567106636546.jpg','http://static.wdmcake.cn/images/201910/thumb_img/2289_thumb_P_1570504302019.jpg','http://static.wdmcake.cn/images/202010/thumb_img/2289_thumb_P_1603059076895.jpg',1,'100%使用进口天然稀奶油','http://www.wdmcake.cn/images/upload/Image/%E7%88%B1%E7%9A%84%E8%8A%B1%E8%AF%AD%E8%9B%8B%E7%B3%95%E8%AF%A6%E6%83%85%E9%A1%B5_01.jpg','http://www.wdmcake.cn/images/upload/Image/%E7%88%B1%E7%9A%84%E8%8A%B1%E8%AF%AD%E8%9B%8B%E7%B3%95%E8%AF%A6%E6%83%85%E9%A1%B5_02.jpg','http://www.wdmcake.cn/images/upload/Image/%E7%88%B1%E7%9A%84%E8%8A%B1%E8%AF%AD%E8%9B%8B%E7%B3%95%E8%AF%A6%E6%83%85%E9%A1%B5_03.jpg','爱的花语蛋糕','376','240'),

(17,'http://static.wdmcake.cn/images/201910/goods_img/2262_G_1570496820942.jpg','http://static.wdmcake.cn/images/201910/thumb_img/2262_thumb_P_1570496830070.jpg','http://static.wdmcake.cn/images/202010/thumb_img/2262_thumb_P_1603059939349.jpg',1,'100%使用进口干酪的轻柔，表达着赤诚的真心，感动你我','http://www.wdmcake.cn/images/upload/Image/%E8%BD%BB%E6%9F%94%E8%8A%9D%E5%A3%AB%E8%9B%8B%E7%B3%95%E8%AF%A6%E6%83%85%E9%A1%B51(1).jpg','http://www.wdmcake.cn/images/upload/Image/%E8%BD%BB%E6%9F%94%E8%8A%9D%E5%A3%AB%E8%9B%8B%E7%B3%95%E8%AF%A6%E6%83%85%E9%A1%B52.jpg','http://www.wdmcake.cn/images/upload/Image/%E8%BD%BB%E6%9F%94%E8%8A%9D%E5%A3%AB%E8%9B%8B%E7%B3%95%E8%AF%A6%E6%83%85%E9%A1%B53.jpg','轻柔芝士蛋糕','376','240'),

(18,'http://static.wdmcake.cn/images/201910/goods_img/2271_G_1570506874022.jpg','http://static.wdmcake.cn/images/201910/thumb_img/2271_thumb_P_1570506884228.jpg','http://static.wdmcake.cn/images/202010/thumb_img/2271_thumb_P_1603059441211.jpg',1,'小羊的聪明才智来源于不断地尝试，不断地创新，不断地发掘100%使用进口天然稀奶油的美味所在','http://www.wdmcake.cn/images/upload/Image/20180719130.jpg','http://www.wdmcake.cn/images/upload/Image/20180719131.jpg','http://www.wdmcake.cn/images/upload/Image/20180719132.jpg','咩咩羊蛋糕','376','240'),

(19,'http://static.wdmcake.cn/images/201910/thumb_img/2368_thumb_P_1570555395218.jpg','http://static.wdmcake.cn/images/201910/thumb_img/2368_thumb_P_1570555406239.jpg','http://static.wdmcake.cn/images/201910/thumb_img/2368_thumb_P_1570555409093.jpg',1,'100%使用进口天然稀奶油，多桃多寿','http://www.wdmcake.cn/images/upload/Image/2018071915.jpg','http://www.wdmcake.cn/images/upload/Image/2018071917.jpg','http://www.wdmcake.cn/images/upload/Image/2018071918.jpg','福寿延年','1299','1599');


 
  
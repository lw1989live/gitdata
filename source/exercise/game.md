我需要一个游戏列表

功能
    运行
    增加
    配置
    卸载
    导入
        遍历子文件夹
        压缩包
    标签
    过滤
        反选

游戏信息
    ID
    游戏平台ID
    运行环境ID
    编号
    显示名称
    游戏名称
    文件名称
    发行商
    发行年份
    版本
    语言
游戏关联表
    游戏ID
    关联游戏ID
    关联类型ID
标签信息
    ID
    标签名
    固定标签
游戏标签
    标签ID
    游戏ID
发行商
    ID
    发行商类型
    发行商名称
游戏平台
    ID
    发行商ID
    名称
    发行时间
    停售时间
    版本
    运行环境ID
运行环境信息
    ID
    发行商ID
    游戏平台
    名称
    执行文件
    执行参数
    文件目录
    可执行文件类型
关联类型
    ID
    关联名称
    关联类型:系列，翻译，再版，重制，移植



drop table if exists GAMEINFO;

drop table if exists LABLEINFO;

drop table if exists LINKTYPE;

drop table if exists 发行商;

drop table if exists 游戏关联表;

drop table if exists 游戏平台;

drop table if exists 游戏标签;

drop table if exists 运行环境信息;

/*==============================================================*/
/* Table: GAMEINFO                                              */
/*==============================================================*/
create table GAMEINFO
(
   ID                   bigint not null,
   游戏平台ID               int,
   运行环境ID               int,
   发行商ID                int,
   编号                   varchar(64),
   显示名称                 varchar(256),
   游戏名称                 varchar(256),
   文件名称                 varchar(256),
   发行年份                 date,
   版本                   varchar(64),
   语言                   varchar(64),
   primary key (ID)
);

/*==============================================================*/
/* Table: LABLEINFO                                             */
/*==============================================================*/
create table LABLEINFO
(
   ID                   int not null,
   LABLE_NAME           varchar(60),
   LABLE_TYPE           int,
   primary key (ID)
);

/*==============================================================*/
/* Table: LINKTYPE                                              */
/*==============================================================*/
create table LINKTYPE
(
   ID                   int not null,
   LINKNAME             varchar(64),
   LINKTYPE             int,
   primary key (ID)
);

/*==============================================================*/
/* Table: 发行商                                                   */
/*==============================================================*/
create table 发行商
(
   ID                   int not null,
   发行商类型                int,
   发行商名称                varchar(256),
   primary key (ID)
);

/*==============================================================*/
/* Table: 游戏关联表                                                 */
/*==============================================================*/
create table 游戏关联表
(
   游戏ID                 int,
   关联类型ID               int,
   关联游戏ID               int
);

/*==============================================================*/
/* Table: 游戏平台                                                  */
/*==============================================================*/
create table 游戏平台
(
   ID                   int not null,
   发行商ID                int,
   运行环境ID               int,
   名称                   varchar(256),
   发行年份                 date,
   停产年份                 date,
   版本                   varchar(64),
   primary key (ID)
);

/*==============================================================*/
/* Table: 游戏标签                                                  */
/*==============================================================*/
create table 游戏标签
(
   标签ID                 int,
   游戏ID                 int
);

/*==============================================================*/
/* Table: 运行环境信息                                                */
/*==============================================================*/
create table 运行环境信息
(
   ID                   int not null,
   发行商ID                int,
   游戏平台ID               int,
   名称                   varchar(256),
   执行文件                 varchar(512),
   执行参数                 varchar(512),
   文件目录                 varchar(256),
   可执行文件类型              varchar(256),
   primary key (ID)
);

alter table GAMEINFO add constraint FK_gameinfo_运行环境ID foreign key (运行环境ID)
      references 运行环境信息 (ID) on delete restrict on update restrict;

alter table GAMEINFO add constraint FK_游戏信息_发行商ID foreign key (发行商ID)
      references 发行商 (ID) on delete restrict on update restrict;

alter table GAMEINFO add constraint FK_游戏信息_游戏平台ID foreign key (游戏平台ID)
      references 游戏平台 (ID) on delete restrict on update restrict;

alter table 游戏关联表 add constraint FK_游戏关联_关联游戏ID foreign key (关联游戏ID)
      references GAMEINFO (ID) on delete restrict on update restrict;

alter table 游戏关联表 add constraint FK_游戏关联_关联类型ID foreign key (关联类型ID)
      references LINKTYPE (ID) on delete restrict on update restrict;

alter table 游戏关联表 add constraint FK_游戏关联_游戏ID foreign key (游戏ID)
      references GAMEINFO (ID) on delete restrict on update restrict;

alter table 游戏平台 add constraint FK_游戏平台_发行商ID foreign key (发行商ID)
      references 发行商 (ID) on delete restrict on update restrict;

alter table 游戏平台 add constraint FK_游戏平台_运行环境ID foreign key (运行环境ID)
      references 运行环境信息 (ID) on delete restrict on update restrict;

alter table 游戏标签 add constraint FK_游戏标签_标签ID foreign key (标签ID)
      references LABLEINFO (ID) on delete restrict on update restrict;

alter table 游戏标签 add constraint FK_游戏标签_游戏ID foreign key (游戏ID)
      references GAMEINFO (ID) on delete restrict on update restrict;

alter table 运行环境信息 add constraint FK_运行环境_发行商ID foreign key (发行商ID)
      references 发行商 (ID) on delete restrict on update restrict;

alter table 运行环境信息 add constraint FK_运行环境_游戏平台ID foreign key (游戏平台ID)
      references 游戏平台 (ID) on delete restrict on update restrict;


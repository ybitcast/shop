-- --------------------------------------------------------
-- 主机                            :127.0.0.1
-- 服务器版本                         :5.0.67-community-log - MySQL Community Edition (GPL)
-- 服务器操作系统                       :Win32
-- HeidiSQL 版本                   :7.0.0.4278
-- 创建                            :2023-04-24 09:15:57
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出  表 ry.edu_clazz 结构
DROP TABLE IF EXISTS `edu_clazz`;
CREATE TABLE IF NOT EXISTS `edu_clazz` (
  `id` int(11) NOT NULL auto_increment COMMENT '班级ID',
  `clazz_name` varchar(255) NOT NULL COMMENT '班级名称',
  `clazz_count` varchar(255) NOT NULL COMMENT '班级人数',
  `visible` varchar(255) NOT NULL COMMENT '显示状态(0显示，1不显示)',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- 正在导出表  ry.edu_clazz 的数据: ~1 rows ((大约))
DELETE FROM `edu_clazz`;
/*!40000 ALTER TABLE `edu_clazz` DISABLE KEYS */;
INSERT INTO `edu_clazz` (`id`, `clazz_name`, `clazz_count`, `visible`) VALUES
	(1, '11', '1', '22');
/*!40000 ALTER TABLE `edu_clazz` ENABLE KEYS */;


-- 导出  表 ry.edu_menu 结构
DROP TABLE IF EXISTS `edu_menu`;
CREATE TABLE IF NOT EXISTS `edu_menu` (
  `id` int(11) NOT NULL auto_increment,
  `menu_name` varchar(255) default NULL COMMENT '菜单名',
  `menu_url` varchar(255) default NULL COMMENT '路由',
  `menu_img` varchar(255) default NULL COMMENT '菜单图标',
  `menu_visible` varchar(255) default NULL COMMENT '菜单状态',
  `menu_flag` int(11) default NULL COMMENT '隐藏状态',
  `menu_ordernum` int(11) default NULL COMMENT '菜单排序',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='菜单名';

-- 正在导出表  ry.edu_menu 的数据: 0 rows
DELETE FROM `edu_menu`;
/*!40000 ALTER TABLE `edu_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `edu_menu` ENABLE KEYS */;


-- 导出  表 ry.edu_student 结构
DROP TABLE IF EXISTS `edu_student`;
CREATE TABLE IF NOT EXISTS `edu_student` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `stu_sno` varchar(100) default NULL COMMENT '学号',
  `stu_name` varchar(100) default NULL COMMENT '姓名',
  `stu_ncid` varchar(100) default NULL COMMENT '新班级',
  `stu_ocid` varchar(100) default NULL COMMENT '旧班级',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='学生表';

-- 正在导出表  ry.edu_student 的数据: ~0 rows ((大约))
DELETE FROM `edu_student`;
/*!40000 ALTER TABLE `edu_student` DISABLE KEYS */;
/*!40000 ALTER TABLE `edu_student` ENABLE KEYS */;


-- 导出  表 ry.edu_teacher 结构
DROP TABLE IF EXISTS `edu_teacher`;
CREATE TABLE IF NOT EXISTS `edu_teacher` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `tea_sno` int(11) default NULL COMMENT '工号',
  `tea_name` varchar(255) default NULL COMMENT '教师姓名',
  `flag` varchar(255) default NULL COMMENT '身份',
  `tea_title` varchar(255) default NULL COMMENT '职称',
  `dept_id` int(255) default NULL COMMENT '所属部门',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- 正在导出表  ry.edu_teacher 的数据: ~0 rows ((大约))
DELETE FROM `edu_teacher`;
/*!40000 ALTER TABLE `edu_teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `edu_teacher` ENABLE KEYS */;


-- 导出  表 ry.edu_tea_clazz 结构
DROP TABLE IF EXISTS `edu_tea_clazz`;
CREATE TABLE IF NOT EXISTS `edu_tea_clazz` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `tid` int(11) default NULL COMMENT '老师id',
  `cid` int(11) default NULL COMMENT '班级id',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- 正在导出表  ry.edu_tea_clazz 的数据: ~0 rows ((大约))
DELETE FROM `edu_tea_clazz`;
/*!40000 ALTER TABLE `edu_tea_clazz` DISABLE KEYS */;
/*!40000 ALTER TABLE `edu_tea_clazz` ENABLE KEYS */;


-- 导出  表 ry.gen_table 结构
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE IF NOT EXISTS `gen_table` (
  `table_id` bigint(20) NOT NULL auto_increment COMMENT '编号',
  `table_name` varchar(200) default '' COMMENT '表名称',
  `table_comment` varchar(500) default '' COMMENT '表描述',
  `sub_table_name` varchar(64) default NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) default NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) default '' COMMENT '实体类名称',
  `tpl_category` varchar(200) default 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) default NULL COMMENT '生成包路径',
  `module_name` varchar(30) default NULL COMMENT '生成模块名',
  `business_name` varchar(30) default NULL COMMENT '生成业务名',
  `function_name` varchar(50) default NULL COMMENT '生成功能名',
  `function_author` varchar(50) default NULL COMMENT '生成功能作者',
  `gen_type` char(1) default '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) default '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) default NULL COMMENT '其它生成选项',
  `create_by` varchar(64) default '' COMMENT '创建者',
  `create_time` datetime default NULL COMMENT '创建时间',
  `update_by` varchar(64) default '' COMMENT '更新者',
  `update_time` datetime default NULL COMMENT '更新时间',
  `remark` varchar(500) default NULL COMMENT '备注',
  PRIMARY KEY  (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';

-- 正在导出表  ry.gen_table 的数据: ~5 rows ((大约))
DELETE FROM `gen_table`;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, 'test', 'InnoDB free: 7168 kB', NULL, NULL, 'Test', 'crud', 'com.ruoyi.system', 'system', 'test', 'InnoDB free: 7168 kB', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-06 18:45:33', '', NULL, NULL),
	(6, 'edu_clazz', 'InnoDB free: 7168 kB', '', NULL, 'EduClazz', 'crud', 'com.ruoyi.edu', 'edu', 'clazz', '班级管理', 'ruoyi', '0', '/', '{"parentMenuId":"1068","treeName":"","treeParentCode":"","parentMenuName":"选课管理","treeCode":""}', 'admin', '2023-04-18 13:20:16', '', '2023-04-18 13:24:40', ''),
	(7, 'edu_menu', '菜单名', NULL, NULL, 'EduMenu', 'crud', 'com.ruoyi.edu', 'edu', 'menu', '菜单名', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-18 13:20:16', '', NULL, NULL),
	(8, 'edu_student', '学生表; InnoDB free: 7168 kB', NULL, NULL, 'EduStudent', 'crud', 'com.ruoyi.edu', 'edu', 'student', '学生; InnoDB free: 7168 kB', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-18 13:20:16', '', NULL, NULL),
	(9, 'edu_teacher', 'InnoDB free: 7168 kB', NULL, NULL, 'EduTeacher', 'crud', 'com.ruoyi.edu', 'edu', 'teacher', 'InnoDB free: 7168 kB', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-18 13:20:16', '', NULL, NULL);
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;


-- 导出  表 ry.gen_table_column 结构
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE IF NOT EXISTS `gen_table_column` (
  `column_id` bigint(20) NOT NULL auto_increment COMMENT '编号',
  `table_id` varchar(64) default NULL COMMENT '归属表编号',
  `column_name` varchar(200) default NULL COMMENT '列名称',
  `column_comment` varchar(500) default NULL COMMENT '列描述',
  `column_type` varchar(100) default NULL COMMENT '列类型',
  `java_type` varchar(500) default NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) default NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) default NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) default NULL COMMENT '是否自增（1是）',
  `is_required` char(1) default NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) default NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) default NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) default NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) default NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) default 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) default NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) default '' COMMENT '字典类型',
  `sort` int(11) default NULL COMMENT '排序',
  `create_by` varchar(64) default '' COMMENT '创建者',
  `create_time` datetime default NULL COMMENT '创建时间',
  `update_by` varchar(64) default '' COMMENT '更新者',
  `update_time` datetime default NULL COMMENT '更新时间',
  PRIMARY KEY  (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';

-- 正在导出表  ry.gen_table_column 的数据: ~25 rows ((大约))
DELETE FROM `gen_table_column`;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
	(1, '1', 'id', NULL, 'int(10)', 'Integer', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-06 18:45:33', '', NULL),
	(2, '1', 'name', NULL, 'varchar(50)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-04-06 18:45:33', '', NULL),
	(3, '1', 'age', NULL, 'varchar(50)', 'String', 'age', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-06 18:45:33', '', NULL),
	(26, '6', 'id', '班级ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-18 13:20:16', NULL, '2023-04-18 13:24:40'),
	(27, '6', 'clazz_name', '班级名称', 'varchar(255)', 'String', 'clazzName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-04-18 13:20:16', NULL, '2023-04-18 13:24:40'),
	(28, '6', 'clazz_count', '班级人数', 'varchar(255)', 'String', 'clazzCount', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-18 13:20:16', NULL, '2023-04-18 13:24:40'),
	(29, '6', 'visible', '显示状态(0显示，1不显示)', 'varchar(255)', 'String', 'visible', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-18 13:20:16', NULL, '2023-04-18 13:24:40'),
	(30, '7', 'id', NULL, 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-18 13:20:16', '', NULL),
	(31, '7', 'menu_name', '菜单名', 'varchar(255)', 'String', 'menuName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-04-18 13:20:16', '', NULL),
	(32, '7', 'menu_url', '路由', 'varchar(255)', 'String', 'menuUrl', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-18 13:20:16', '', NULL),
	(33, '7', 'menu_img', '菜单图标', 'varchar(255)', 'String', 'menuImg', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-18 13:20:16', '', NULL),
	(34, '7', 'menu_visible', '菜单状态', 'varchar(255)', 'String', 'menuVisible', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-04-18 13:20:16', '', NULL),
	(35, '7', 'menu_flag', '隐藏状态', 'int(11)', 'Long', 'menuFlag', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-04-18 13:20:16', '', NULL),
	(36, '7', 'menu_ordernum', '菜单排序', 'int(11)', 'Long', 'menuOrdernum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-04-18 13:20:16', '', NULL),
	(37, '8', 'id', 'id', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-18 13:20:16', '', NULL),
	(38, '8', 'stu_sno', '学号', 'varchar(100)', 'String', 'stuSno', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-18 13:20:16', '', NULL),
	(39, '8', 'stu_name', '姓名', 'varchar(100)', 'String', 'stuName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-04-18 13:20:16', '', NULL),
	(40, '8', 'stu_ncid', '新班级', 'varchar(100)', 'String', 'stuNcid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-18 13:20:16', '', NULL),
	(41, '8', 'stu_ocid', '旧班级', 'varchar(100)', 'String', 'stuOcid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-04-18 13:20:16', '', NULL),
	(42, '9', 'id', 'ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-18 13:20:16', '', NULL),
	(43, '9', 'tea_sno', '工号', 'int(11)', 'Long', 'teaSno', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-18 13:20:16', '', NULL),
	(44, '9', 'tea_name', '教师姓名', 'varchar(255)', 'String', 'teaName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-04-18 13:20:16', '', NULL),
	(45, '9', 'flag', '身份', 'varchar(255)', 'String', 'flag', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-18 13:20:16', '', NULL),
	(46, '9', 'tea_title', '职称', 'varchar(255)', 'String', 'teaTitle', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-04-18 13:20:16', '', NULL),
	(47, '9', 'dept_id', '所属部门', 'int(255)', 'Long', 'deptId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-04-18 13:20:16', '', NULL);
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;


-- 导出  表 ry.qrtz_blob_triggers 结构
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE IF NOT EXISTS `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY  (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Blob类型的触发器表';

-- 正在导出表  ry.qrtz_blob_triggers 的数据: ~0 rows ((大约))
DELETE FROM `qrtz_blob_triggers`;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;


-- 导出  表 ry.qrtz_calendars 结构
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE IF NOT EXISTS `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY  (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日历信息表';

-- 正在导出表  ry.qrtz_calendars 的数据: ~0 rows ((大约))
DELETE FROM `qrtz_calendars`;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;


-- 导出  表 ry.qrtz_cron_triggers 结构
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE IF NOT EXISTS `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) default NULL COMMENT '时区',
  PRIMARY KEY  (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron类型的触发器表';

-- 正在导出表  ry.qrtz_cron_triggers 的数据: ~0 rows ((大约))
DELETE FROM `qrtz_cron_triggers`;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;


-- 导出  表 ry.qrtz_fired_triggers 结构
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE IF NOT EXISTS `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) default NULL COMMENT '任务名称',
  `job_group` varchar(200) default NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) default NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) default NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY  (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='已触发的触发器表';

-- 正在导出表  ry.qrtz_fired_triggers 的数据: ~0 rows ((大约))
DELETE FROM `qrtz_fired_triggers`;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;


-- 导出  表 ry.qrtz_job_details 结构
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE IF NOT EXISTS `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) default NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY  (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务详细信息表';

-- 正在导出表  ry.qrtz_job_details 的数据: ~0 rows ((大约))
DELETE FROM `qrtz_job_details`;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;


-- 导出  表 ry.qrtz_locks 结构
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE IF NOT EXISTS `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY  (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='存储的悲观锁信息表';

-- 正在导出表  ry.qrtz_locks 的数据: ~0 rows ((大约))
DELETE FROM `qrtz_locks`;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;


-- 导出  表 ry.qrtz_paused_trigger_grps 结构
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE IF NOT EXISTS `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY  (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂停的触发器表';

-- 正在导出表  ry.qrtz_paused_trigger_grps 的数据: ~0 rows ((大约))
DELETE FROM `qrtz_paused_trigger_grps`;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;


-- 导出  表 ry.qrtz_scheduler_state 结构
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE IF NOT EXISTS `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY  (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调度器状态表';

-- 正在导出表  ry.qrtz_scheduler_state 的数据: ~0 rows ((大约))
DELETE FROM `qrtz_scheduler_state`;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;


-- 导出  表 ry.qrtz_simple_triggers 结构
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE IF NOT EXISTS `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY  (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='简单触发器的信息表';

-- 正在导出表  ry.qrtz_simple_triggers 的数据: ~0 rows ((大约))
DELETE FROM `qrtz_simple_triggers`;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;


-- 导出  表 ry.qrtz_simprop_triggers 结构
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE IF NOT EXISTS `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) default NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) default NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) default NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) default NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) default NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) default NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) default NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) default NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) default NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) default NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) default NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY  (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='同步机制的行锁表';

-- 正在导出表  ry.qrtz_simprop_triggers 的数据: ~0 rows ((大约))
DELETE FROM `qrtz_simprop_triggers`;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;


-- 导出  表 ry.qrtz_triggers 结构
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE IF NOT EXISTS `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) default NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) default NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) default NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) default NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) default NULL COMMENT '结束时间',
  `calendar_name` varchar(200) default NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) default NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY  (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='触发器详细信息表';

-- 正在导出表  ry.qrtz_triggers 的数据: ~0 rows ((大约))
DELETE FROM `qrtz_triggers`;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;


-- 导出  表 ry.sys_config 结构
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE IF NOT EXISTS `sys_config` (
  `config_id` int(5) NOT NULL auto_increment COMMENT '参数主键',
  `config_name` varchar(100) default '' COMMENT '参数名称',
  `config_key` varchar(100) default '' COMMENT '参数键名',
  `config_value` varchar(500) default '' COMMENT '参数键值',
  `config_type` char(1) default 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) default '' COMMENT '创建者',
  `create_time` datetime default NULL COMMENT '创建时间',
  `update_by` varchar(64) default '' COMMENT '更新者',
  `update_time` datetime default NULL COMMENT '更新时间',
  `remark` varchar(500) default NULL COMMENT '备注',
  PRIMARY KEY  (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- 正在导出表  ry.sys_config 的数据: ~11 rows ((大约))
DELETE FROM `sys_config`;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-04-04 09:01:01', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),
	(2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-04-04 09:01:01', '', NULL, '初始化密码 123456'),
	(3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2023-04-04 09:01:01', '', NULL, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue'),
	(4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2023-04-04 09:01:02', '', NULL, '是否开启注册用户功能（true开启，false关闭）'),
	(5, '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2023-04-04 09:01:02', '', NULL, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）'),
	(6, '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '0', 'Y', 'admin', '2023-04-04 09:01:02', '', NULL, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框'),
	(7, '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2023-04-04 09:01:02', '', NULL, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框'),
	(8, '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2023-04-04 09:01:03', '', NULL, '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）'),
	(9, '主框架页-是否开启页脚', 'sys.index.footer', 'true', 'Y', 'admin', '2023-04-04 09:01:03', '', NULL, '是否开启底部页脚显示（true显示，false隐藏）'),
	(10, '主框架页-是否开启页签', 'sys.index.tagsView', 'true', 'Y', 'admin', '2023-04-04 09:01:03', '', NULL, '是否开启菜单多页签显示（true显示，false隐藏）'),
	(11, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2023-04-04 09:01:03', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;


-- 导出  表 ry.sys_dept 结构
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE IF NOT EXISTS `sys_dept` (
  `dept_id` bigint(20) NOT NULL auto_increment COMMENT '部门id',
  `parent_id` bigint(20) default '0' COMMENT '父部门id',
  `ancestors` varchar(50) default '' COMMENT '祖级列表',
  `dept_name` varchar(30) default '' COMMENT '部门名称',
  `order_num` int(4) default '0' COMMENT '显示顺序',
  `leader` varchar(20) default NULL COMMENT '负责人',
  `phone` varchar(11) default NULL COMMENT '联系电话',
  `email` varchar(50) default NULL COMMENT '邮箱',
  `status` char(1) default '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) default '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) default '' COMMENT '创建者',
  `create_time` datetime default NULL COMMENT '创建时间',
  `update_by` varchar(64) default '' COMMENT '更新者',
  `update_time` datetime default NULL COMMENT '更新时间',
  PRIMARY KEY  (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- 正在导出表  ry.sys_dept 的数据: ~10 rows ((大约))
DELETE FROM `sys_dept`;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
	(100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-04 09:00:01', '', NULL),
	(101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-04 09:00:01', '', NULL),
	(102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-04 09:00:01', '', NULL),
	(103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-04 09:00:01', '', NULL),
	(104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-04 09:00:02', '', NULL),
	(105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-04 09:00:02', '', NULL),
	(106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-04 09:00:02', '', NULL),
	(107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-04 09:00:02', '', NULL),
	(108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-04 09:00:03', '', NULL),
	(109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-04 09:00:03', '', NULL);
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;


-- 导出  表 ry.sys_dict_data 结构
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE IF NOT EXISTS `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL auto_increment COMMENT '字典编码',
  `dict_sort` int(4) default '0' COMMENT '字典排序',
  `dict_label` varchar(100) default '' COMMENT '字典标签',
  `dict_value` varchar(100) default '' COMMENT '字典键值',
  `dict_type` varchar(100) default '' COMMENT '字典类型',
  `css_class` varchar(100) default NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) default NULL COMMENT '表格回显样式',
  `is_default` char(1) default 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) default '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) default '' COMMENT '创建者',
  `create_time` datetime default NULL COMMENT '创建时间',
  `update_by` varchar(64) default '' COMMENT '更新者',
  `update_time` datetime default NULL COMMENT '更新时间',
  `remark` varchar(500) default NULL COMMENT '备注',
  PRIMARY KEY  (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- 正在导出表  ry.sys_dict_data 的数据: ~29 rows ((大约))
DELETE FROM `sys_dict_data`;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-04-04 09:00:53', '', NULL, '性别男'),
	(2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-04-04 09:00:53', '', NULL, '性别女'),
	(3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-04-04 09:00:54', '', NULL, '性别未知'),
	(4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-04-04 09:00:54', '', NULL, '显示菜单'),
	(5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-04-04 09:00:54', '', NULL, '隐藏菜单'),
	(6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-04-04 09:00:54', '', NULL, '正常状态'),
	(7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-04-04 09:00:55', '', NULL, '停用状态'),
	(8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-04-04 09:00:55', '', NULL, '正常状态'),
	(9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-04-04 09:00:55', '', NULL, '停用状态'),
	(10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-04-04 09:00:55', '', NULL, '默认分组'),
	(11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-04-04 09:00:56', '', NULL, '系统分组'),
	(12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-04-04 09:00:56', '', NULL, '系统默认是'),
	(13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-04-04 09:00:56', '', NULL, '系统默认否'),
	(14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-04-04 09:00:56', '', NULL, '通知'),
	(15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-04-04 09:00:57', '', NULL, '公告'),
	(16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-04-04 09:00:57', '', NULL, '正常状态'),
	(17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-04-04 09:00:57', '', NULL, '关闭状态'),
	(18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-04-04 09:00:58', '', NULL, '其他操作'),
	(19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-04-04 09:00:58', '', NULL, '新增操作'),
	(20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-04-04 09:00:58', '', NULL, '修改操作'),
	(21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-04-04 09:00:58', '', NULL, '删除操作'),
	(22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-04-04 09:00:59', '', NULL, '授权操作'),
	(23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-04-04 09:00:59', '', NULL, '导出操作'),
	(24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-04-04 09:00:59', '', NULL, '导入操作'),
	(25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-04-04 09:00:59', '', NULL, '强退操作'),
	(26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-04-04 09:01:00', '', NULL, '生成操作'),
	(27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-04-04 09:01:00', '', NULL, '清空操作'),
	(28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-04-04 09:01:00', '', NULL, '正常状态'),
	(29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-04-04 09:01:00', '', NULL, '停用状态');
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;


-- 导出  表 ry.sys_dict_type 结构
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE IF NOT EXISTS `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL auto_increment COMMENT '字典主键',
  `dict_name` varchar(100) default '' COMMENT '字典名称',
  `dict_type` varchar(100) default '' COMMENT '字典类型',
  `status` char(1) default '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) default '' COMMENT '创建者',
  `create_time` datetime default NULL COMMENT '创建时间',
  `update_by` varchar(64) default '' COMMENT '更新者',
  `update_time` datetime default NULL COMMENT '更新时间',
  `remark` varchar(500) default NULL COMMENT '备注',
  PRIMARY KEY  (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- 正在导出表  ry.sys_dict_type 的数据: ~10 rows ((大约))
DELETE FROM `sys_dict_type`;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '用户性别', 'sys_user_sex', '0', 'admin', '2023-04-04 09:00:50', '', NULL, '用户性别列表'),
	(2, '菜单状态', 'sys_show_hide', '0', 'admin', '2023-04-04 09:00:51', '', NULL, '菜单状态列表'),
	(3, '系统开关', 'sys_normal_disable', '0', 'admin', '2023-04-04 09:00:51', '', NULL, '系统开关列表'),
	(4, '任务状态', 'sys_job_status', '0', 'admin', '2023-04-04 09:00:51', '', NULL, '任务状态列表'),
	(5, '任务分组', 'sys_job_group', '0', 'admin', '2023-04-04 09:00:51', '', NULL, '任务分组列表'),
	(6, '系统是否', 'sys_yes_no', '0', 'admin', '2023-04-04 09:00:52', '', NULL, '系统是否列表'),
	(7, '通知类型', 'sys_notice_type', '0', 'admin', '2023-04-04 09:00:52', '', NULL, '通知类型列表'),
	(8, '通知状态', 'sys_notice_status', '0', 'admin', '2023-04-04 09:00:52', '', NULL, '通知状态列表'),
	(9, '操作类型', 'sys_oper_type', '0', 'admin', '2023-04-04 09:00:52', '', NULL, '操作类型列表'),
	(10, '系统状态', 'sys_common_status', '0', 'admin', '2023-04-04 09:00:53', '', NULL, '登录状态列表');
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;


-- 导出  表 ry.sys_job 结构
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE IF NOT EXISTS `sys_job` (
  `job_id` bigint(20) NOT NULL auto_increment COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL default '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL default 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) default '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) default '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) default '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) default '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) default '' COMMENT '创建者',
  `create_time` datetime default NULL COMMENT '创建时间',
  `update_by` varchar(64) default '' COMMENT '更新者',
  `update_time` datetime default NULL COMMENT '更新时间',
  `remark` varchar(500) default '' COMMENT '备注信息',
  PRIMARY KEY  (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

-- 正在导出表  ry.sys_job 的数据: ~3 rows ((大约))
DELETE FROM `sys_job`;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` (`job_id`, `job_name`, `job_group`, `invoke_target`, `cron_expression`, `misfire_policy`, `concurrent`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2023-04-04 09:01:04', '', NULL, ''),
	(2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2023-04-04 09:01:04', '', NULL, ''),
	(3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2023-04-04 09:01:05', '', NULL, '');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;


-- 导出  表 ry.sys_job_log 结构
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE IF NOT EXISTS `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL auto_increment COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) default NULL COMMENT '日志信息',
  `status` char(1) default '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) default '' COMMENT '异常信息',
  `create_time` datetime default NULL COMMENT '创建时间',
  PRIMARY KEY  (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- 正在导出表  ry.sys_job_log 的数据: ~0 rows ((大约))
DELETE FROM `sys_job_log`;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;


-- 导出  表 ry.sys_logininfor 结构
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE IF NOT EXISTS `sys_logininfor` (
  `info_id` bigint(20) NOT NULL auto_increment COMMENT '访问ID',
  `login_name` varchar(50) default '' COMMENT '登录账号',
  `ipaddr` varchar(128) default '' COMMENT '登录IP地址',
  `login_location` varchar(255) default '' COMMENT '登录地点',
  `browser` varchar(50) default '' COMMENT '浏览器类型',
  `os` varchar(50) default '' COMMENT '操作系统',
  `status` char(1) default '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) default '' COMMENT '提示消息',
  `login_time` datetime default NULL COMMENT '访问时间',
  PRIMARY KEY  (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- 正在导出表  ry.sys_logininfor 的数据: ~15 rows ((大约))
DELETE FROM `sys_logininfor`;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES
	(100, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-04-04 09:07:24'),
	(101, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-04 09:07:29'),
	(102, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-04 13:05:07'),
	(103, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-06 17:25:16'),
	(104, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-18 08:31:29'),
	(105, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-18 09:27:49'),
	(106, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-18 12:32:36'),
	(107, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-18 13:15:43'),
	(108, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-18 13:17:46'),
	(109, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-18 13:19:12'),
	(110, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-18 13:40:38'),
	(111, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-18 13:45:18'),
	(112, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-20 17:33:26'),
	(113, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-20 18:35:28'),
	(114, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-24 08:55:00'),
	(115, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-24 09:08:17'),
	(116, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-24 09:10:19');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;


-- 导出  表 ry.sys_menu 结构
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE IF NOT EXISTS `sys_menu` (
  `menu_id` bigint(20) NOT NULL auto_increment COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) default '0' COMMENT '父菜单ID',
  `order_num` int(4) default '0' COMMENT '显示顺序',
  `url` varchar(200) default '#' COMMENT '请求地址',
  `target` varchar(20) default '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) default '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) default '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) default '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) default NULL COMMENT '权限标识',
  `icon` varchar(100) default '#' COMMENT '菜单图标',
  `create_by` varchar(64) default '' COMMENT '创建者',
  `create_time` datetime default NULL COMMENT '创建时间',
  `update_by` varchar(64) default '' COMMENT '更新者',
  `update_time` datetime default NULL COMMENT '更新时间',
  `remark` varchar(500) default '' COMMENT '备注',
  PRIMARY KEY  (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1081 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- 正在导出表  ry.sys_menu 的数据: ~91 rows ((大约))
DELETE FROM `sys_menu`;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '系统管理', 0, 1, '#', '', 'M', '0', '1', '', 'fa fa-gear', 'admin', '2023-04-04 09:00:06', '', NULL, '系统管理目录'),
	(2, '系统监控', 0, 2, '#', '', 'M', '0', '1', '', 'fa fa-video-camera', 'admin', '2023-04-04 09:00:06', '', NULL, '系统监控目录'),
	(3, '系统工具', 0, 3, '#', '', 'M', '0', '1', '', 'fa fa-bars', 'admin', '2023-04-04 09:00:06', '', NULL, '系统工具目录'),
	(100, '用户管理', 1, 1, '/system/user', '', 'C', '0', '1', 'system:user:view', 'fa fa-user-o', 'admin', '2023-04-04 09:00:07', '', NULL, '用户管理菜单'),
	(101, '角色管理', 1, 2, '/system/role', '', 'C', '0', '1', 'system:role:view', 'fa fa-user-secret', 'admin', '2023-04-04 09:00:07', '', NULL, '角色管理菜单'),
	(102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', '1', 'system:menu:view', 'fa fa-th-list', 'admin', '2023-04-04 09:00:07', '', NULL, '菜单管理菜单'),
	(103, '部门管理', 1, 4, '/system/dept', '', 'C', '0', '1', 'system:dept:view', 'fa fa-outdent', 'admin', '2023-04-04 09:00:08', '', NULL, '部门管理菜单'),
	(104, '岗位管理', 1, 5, '/system/post', '', 'C', '0', '1', 'system:post:view', 'fa fa-address-card-o', 'admin', '2023-04-04 09:00:08', '', NULL, '岗位管理菜单'),
	(105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', '1', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2023-04-04 09:00:08', '', NULL, '字典管理菜单'),
	(106, '参数设置', 1, 7, '/system/config', '', 'C', '0', '1', 'system:config:view', 'fa fa-sun-o', 'admin', '2023-04-04 09:00:09', '', NULL, '参数设置菜单'),
	(107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', '1', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2023-04-04 09:00:09', '', NULL, '通知公告菜单'),
	(108, '日志管理', 1, 9, '#', '', 'M', '0', '1', '', 'fa fa-pencil-square-o', 'admin', '2023-04-04 09:00:09', '', NULL, '日志管理菜单'),
	(109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', '1', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2023-04-04 09:00:09', '', NULL, '在线用户菜单'),
	(110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', '1', 'monitor:job:view', 'fa fa-tasks', 'admin', '2023-04-04 09:00:10', '', NULL, '定时任务菜单'),
	(111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', '1', 'monitor:data:view', 'fa fa-bug', 'admin', '2023-04-04 09:00:10', '', NULL, '数据监控菜单'),
	(112, '服务监控', 2, 4, '/monitor/server', '', 'C', '0', '1', 'monitor:server:view', 'fa fa-server', 'admin', '2023-04-04 09:00:10', '', NULL, '服务监控菜单'),
	(113, '缓存监控', 2, 5, '/monitor/cache', '', 'C', '0', '1', 'monitor:cache:view', 'fa fa-cube', 'admin', '2023-04-04 09:00:11', '', NULL, '缓存监控菜单'),
	(114, '表单构建', 3, 1, '/tool/build', '', 'C', '0', '1', 'tool:build:view', 'fa fa-wpforms', 'admin', '2023-04-04 09:00:11', '', NULL, '表单构建菜单'),
	(115, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', '1', 'tool:gen:view', 'fa fa-code', 'admin', '2023-04-04 09:00:11', '', NULL, '代码生成菜单'),
	(116, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', '1', 'tool:swagger:view', 'fa fa-gg', 'admin', '2023-04-04 09:00:11', '', NULL, '系统接口菜单'),
	(500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', '1', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2023-04-04 09:00:12', '', NULL, '操作日志菜单'),
	(501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', '1', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2023-04-04 09:00:12', '', NULL, '登录日志菜单'),
	(1000, '用户查询', 100, 1, '#', '', 'F', '0', '1', 'system:user:list', '#', 'admin', '2023-04-04 09:00:12', '', NULL, ''),
	(1001, '用户新增', 100, 2, '#', '', 'F', '0', '1', 'system:user:add', '#', 'admin', '2023-04-04 09:00:13', '', NULL, ''),
	(1002, '用户修改', 100, 3, '#', '', 'F', '0', '1', 'system:user:edit', '#', 'admin', '2023-04-04 09:00:13', '', NULL, ''),
	(1003, '用户删除', 100, 4, '#', '', 'F', '0', '1', 'system:user:remove', '#', 'admin', '2023-04-04 09:00:13', '', NULL, ''),
	(1004, '用户导出', 100, 5, '#', '', 'F', '0', '1', 'system:user:export', '#', 'admin', '2023-04-04 09:00:13', '', NULL, ''),
	(1005, '用户导入', 100, 6, '#', '', 'F', '0', '1', 'system:user:import', '#', 'admin', '2023-04-04 09:00:14', '', NULL, ''),
	(1006, '重置密码', 100, 7, '#', '', 'F', '0', '1', 'system:user:resetPwd', '#', 'admin', '2023-04-04 09:00:14', '', NULL, ''),
	(1007, '角色查询', 101, 1, '#', '', 'F', '0', '1', 'system:role:list', '#', 'admin', '2023-04-04 09:00:14', '', NULL, ''),
	(1008, '角色新增', 101, 2, '#', '', 'F', '0', '1', 'system:role:add', '#', 'admin', '2023-04-04 09:00:14', '', NULL, ''),
	(1009, '角色修改', 101, 3, '#', '', 'F', '0', '1', 'system:role:edit', '#', 'admin', '2023-04-04 09:00:15', '', NULL, ''),
	(1010, '角色删除', 101, 4, '#', '', 'F', '0', '1', 'system:role:remove', '#', 'admin', '2023-04-04 09:00:15', '', NULL, ''),
	(1011, '角色导出', 101, 5, '#', '', 'F', '0', '1', 'system:role:export', '#', 'admin', '2023-04-04 09:00:15', '', NULL, ''),
	(1012, '菜单查询', 102, 1, '#', '', 'F', '0', '1', 'system:menu:list', '#', 'admin', '2023-04-04 09:00:15', '', NULL, ''),
	(1013, '菜单新增', 102, 2, '#', '', 'F', '0', '1', 'system:menu:add', '#', 'admin', '2023-04-04 09:00:16', '', NULL, ''),
	(1014, '菜单修改', 102, 3, '#', '', 'F', '0', '1', 'system:menu:edit', '#', 'admin', '2023-04-04 09:00:16', '', NULL, ''),
	(1015, '菜单删除', 102, 4, '#', '', 'F', '0', '1', 'system:menu:remove', '#', 'admin', '2023-04-04 09:00:16', '', NULL, ''),
	(1016, '部门查询', 103, 1, '#', '', 'F', '0', '1', 'system:dept:list', '#', 'admin', '2023-04-04 09:00:16', '', NULL, ''),
	(1017, '部门新增', 103, 2, '#', '', 'F', '0', '1', 'system:dept:add', '#', 'admin', '2023-04-04 09:00:17', '', NULL, ''),
	(1018, '部门修改', 103, 3, '#', '', 'F', '0', '1', 'system:dept:edit', '#', 'admin', '2023-04-04 09:00:17', '', NULL, ''),
	(1019, '部门删除', 103, 4, '#', '', 'F', '0', '1', 'system:dept:remove', '#', 'admin', '2023-04-04 09:00:17', '', NULL, ''),
	(1020, '岗位查询', 104, 1, '#', '', 'F', '0', '1', 'system:post:list', '#', 'admin', '2023-04-04 09:00:17', '', NULL, ''),
	(1021, '岗位新增', 104, 2, '#', '', 'F', '0', '1', 'system:post:add', '#', 'admin', '2023-04-04 09:00:18', '', NULL, ''),
	(1022, '岗位修改', 104, 3, '#', '', 'F', '0', '1', 'system:post:edit', '#', 'admin', '2023-04-04 09:00:18', '', NULL, ''),
	(1023, '岗位删除', 104, 4, '#', '', 'F', '0', '1', 'system:post:remove', '#', 'admin', '2023-04-04 09:00:18', '', NULL, ''),
	(1024, '岗位导出', 104, 5, '#', '', 'F', '0', '1', 'system:post:export', '#', 'admin', '2023-04-04 09:00:18', '', NULL, ''),
	(1025, '字典查询', 105, 1, '#', '', 'F', '0', '1', 'system:dict:list', '#', 'admin', '2023-04-04 09:00:19', '', NULL, ''),
	(1026, '字典新增', 105, 2, '#', '', 'F', '0', '1', 'system:dict:add', '#', 'admin', '2023-04-04 09:00:19', '', NULL, ''),
	(1027, '字典修改', 105, 3, '#', '', 'F', '0', '1', 'system:dict:edit', '#', 'admin', '2023-04-04 09:00:19', '', NULL, ''),
	(1028, '字典删除', 105, 4, '#', '', 'F', '0', '1', 'system:dict:remove', '#', 'admin', '2023-04-04 09:00:19', '', NULL, ''),
	(1029, '字典导出', 105, 5, '#', '', 'F', '0', '1', 'system:dict:export', '#', 'admin', '2023-04-04 09:00:20', '', NULL, ''),
	(1030, '参数查询', 106, 1, '#', '', 'F', '0', '1', 'system:config:list', '#', 'admin', '2023-04-04 09:00:20', '', NULL, ''),
	(1031, '参数新增', 106, 2, '#', '', 'F', '0', '1', 'system:config:add', '#', 'admin', '2023-04-04 09:00:20', '', NULL, ''),
	(1032, '参数修改', 106, 3, '#', '', 'F', '0', '1', 'system:config:edit', '#', 'admin', '2023-04-04 09:00:20', '', NULL, ''),
	(1033, '参数删除', 106, 4, '#', '', 'F', '0', '1', 'system:config:remove', '#', 'admin', '2023-04-04 09:00:21', '', NULL, ''),
	(1034, '参数导出', 106, 5, '#', '', 'F', '0', '1', 'system:config:export', '#', 'admin', '2023-04-04 09:00:21', '', NULL, ''),
	(1035, '公告查询', 107, 1, '#', '', 'F', '0', '1', 'system:notice:list', '#', 'admin', '2023-04-04 09:00:21', '', NULL, ''),
	(1036, '公告新增', 107, 2, '#', '', 'F', '0', '1', 'system:notice:add', '#', 'admin', '2023-04-04 09:00:21', '', NULL, ''),
	(1037, '公告修改', 107, 3, '#', '', 'F', '0', '1', 'system:notice:edit', '#', 'admin', '2023-04-04 09:00:22', '', NULL, ''),
	(1038, '公告删除', 107, 4, '#', '', 'F', '0', '1', 'system:notice:remove', '#', 'admin', '2023-04-04 09:00:22', '', NULL, ''),
	(1039, '操作查询', 500, 1, '#', '', 'F', '0', '1', 'monitor:operlog:list', '#', 'admin', '2023-04-04 09:00:22', '', NULL, ''),
	(1040, '操作删除', 500, 2, '#', '', 'F', '0', '1', 'monitor:operlog:remove', '#', 'admin', '2023-04-04 09:00:22', '', NULL, ''),
	(1041, '详细信息', 500, 3, '#', '', 'F', '0', '1', 'monitor:operlog:detail', '#', 'admin', '2023-04-04 09:00:23', '', NULL, ''),
	(1042, '日志导出', 500, 4, '#', '', 'F', '0', '1', 'monitor:operlog:export', '#', 'admin', '2023-04-04 09:00:23', '', NULL, ''),
	(1043, '登录查询', 501, 1, '#', '', 'F', '0', '1', 'monitor:logininfor:list', '#', 'admin', '2023-04-04 09:00:23', '', NULL, ''),
	(1044, '登录删除', 501, 2, '#', '', 'F', '0', '1', 'monitor:logininfor:remove', '#', 'admin', '2023-04-04 09:00:24', '', NULL, ''),
	(1045, '日志导出', 501, 3, '#', '', 'F', '0', '1', 'monitor:logininfor:export', '#', 'admin', '2023-04-04 09:00:24', '', NULL, ''),
	(1046, '账户解锁', 501, 4, '#', '', 'F', '0', '1', 'monitor:logininfor:unlock', '#', 'admin', '2023-04-04 09:00:24', '', NULL, ''),
	(1047, '在线查询', 109, 1, '#', '', 'F', '0', '1', 'monitor:online:list', '#', 'admin', '2023-04-04 09:00:24', '', NULL, ''),
	(1048, '批量强退', 109, 2, '#', '', 'F', '0', '1', 'monitor:online:batchForceLogout', '#', 'admin', '2023-04-04 09:00:24', '', NULL, ''),
	(1049, '单条强退', 109, 3, '#', '', 'F', '0', '1', 'monitor:online:forceLogout', '#', 'admin', '2023-04-04 09:00:25', '', NULL, ''),
	(1050, '任务查询', 110, 1, '#', '', 'F', '0', '1', 'monitor:job:list', '#', 'admin', '2023-04-04 09:00:25', '', NULL, ''),
	(1051, '任务新增', 110, 2, '#', '', 'F', '0', '1', 'monitor:job:add', '#', 'admin', '2023-04-04 09:00:25', '', NULL, ''),
	(1052, '任务修改', 110, 3, '#', '', 'F', '0', '1', 'monitor:job:edit', '#', 'admin', '2023-04-04 09:00:25', '', NULL, ''),
	(1053, '任务删除', 110, 4, '#', '', 'F', '0', '1', 'monitor:job:remove', '#', 'admin', '2023-04-04 09:00:26', '', NULL, ''),
	(1054, '状态修改', 110, 5, '#', '', 'F', '0', '1', 'monitor:job:changeStatus', '#', 'admin', '2023-04-04 09:00:26', '', NULL, ''),
	(1055, '任务详细', 110, 6, '#', '', 'F', '0', '1', 'monitor:job:detail', '#', 'admin', '2023-04-04 09:00:26', '', NULL, ''),
	(1056, '任务导出', 110, 7, '#', '', 'F', '0', '1', 'monitor:job:export', '#', 'admin', '2023-04-04 09:00:26', '', NULL, ''),
	(1057, '生成查询', 115, 1, '#', '', 'F', '0', '1', 'tool:gen:list', '#', 'admin', '2023-04-04 09:00:27', '', NULL, ''),
	(1058, '生成修改', 115, 2, '#', '', 'F', '0', '1', 'tool:gen:edit', '#', 'admin', '2023-04-04 09:00:27', '', NULL, ''),
	(1059, '生成删除', 115, 3, '#', '', 'F', '0', '1', 'tool:gen:remove', '#', 'admin', '2023-04-04 09:00:27', '', NULL, ''),
	(1060, '预览代码', 115, 4, '#', '', 'F', '0', '1', 'tool:gen:preview', '#', 'admin', '2023-04-04 09:00:27', '', NULL, ''),
	(1061, '生成代码', 115, 5, '#', '', 'F', '0', '1', 'tool:gen:code', '#', 'admin', '2023-04-04 09:00:27', '', NULL, ''),
	(1068, '选课管理', 0, 5, '#', 'menuItem', 'M', '0', '1', NULL, 'fa fa-cc', 'admin', '2023-04-18 13:23:57', '', NULL, ''),
	(1069, '班级管理', 1068, 1, '/edu/clazz', '', 'C', '0', '1', 'edu:clazz:view', '#', 'admin', '2023-04-18 13:26:18', '', NULL, '班级管理菜单'),
	(1070, '班级管理查询', 1069, 1, '#', '', 'F', '0', '1', 'edu:clazz:list', '#', 'admin', '2023-04-18 13:26:19', '', NULL, ''),
	(1071, '班级管理新增', 1069, 2, '#', '', 'F', '0', '1', 'edu:clazz:add', '#', 'admin', '2023-04-18 13:26:19', '', NULL, ''),
	(1072, '班级管理修改', 1069, 3, '#', '', 'F', '0', '1', 'edu:clazz:edit', '#', 'admin', '2023-04-18 13:26:19', '', NULL, ''),
	(1073, '班级管理删除', 1069, 4, '#', '', 'F', '0', '1', 'edu:clazz:remove', '#', 'admin', '2023-04-18 13:26:19', '', NULL, ''),
	(1074, '班级管理导出', 1069, 5, '#', '', 'F', '0', '1', 'edu:clazz:export', '#', 'admin', '2023-04-18 13:26:20', '', NULL, ''),
	(1075, '教师管理', 1068, 1, '/edu/teacher', 'menuItem', 'C', '0', '1', 'edu:teacher:view', '#', 'admin', '2023-04-24 09:02:59', 'admin', '2023-04-24 09:12:20', 'InnoDB free: 7168 kB菜单'),
	(1076, 'InnoDB free: 7168 kB查询', 1075, 1, '#', '', 'F', '0', '1', 'edu:teacher:list', '#', 'admin', '2023-04-24 09:02:59', '', NULL, ''),
	(1077, 'InnoDB free: 7168 kB新增', 1075, 2, '#', '', 'F', '0', '1', 'edu:teacher:add', '#', 'admin', '2023-04-24 09:03:00', '', NULL, ''),
	(1078, 'InnoDB free: 7168 kB修改', 1075, 3, '#', '', 'F', '0', '1', 'edu:teacher:edit', '#', 'admin', '2023-04-24 09:03:00', '', NULL, ''),
	(1079, 'InnoDB free: 7168 kB删除', 1075, 4, '#', '', 'F', '0', '1', 'edu:teacher:remove', '#', 'admin', '2023-04-24 09:03:00', '', NULL, ''),
	(1080, 'InnoDB free: 7168 kB导出', 1075, 5, '#', '', 'F', '0', '1', 'edu:teacher:export', '#', 'admin', '2023-04-24 09:03:00', '', NULL, '');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;


-- 导出  表 ry.sys_notice 结构
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE IF NOT EXISTS `sys_notice` (
  `notice_id` int(4) NOT NULL auto_increment COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) default NULL COMMENT '公告内容',
  `status` char(1) default '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) default '' COMMENT '创建者',
  `create_time` datetime default NULL COMMENT '创建时间',
  `update_by` varchar(64) default '' COMMENT '更新者',
  `update_time` datetime default NULL COMMENT '更新时间',
  `remark` varchar(255) default NULL COMMENT '备注',
  PRIMARY KEY  (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

-- 正在导出表  ry.sys_notice 的数据: ~2 rows ((大约))
DELETE FROM `sys_notice`;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` (`notice_id`, `notice_title`, `notice_type`, `notice_content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2023-04-04 09:01:05', '', NULL, '管理员'),
	(2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2023-04-04 09:01:06', '', NULL, '管理员');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;


-- 导出  表 ry.sys_oper_log 结构
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE IF NOT EXISTS `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL auto_increment COMMENT '日志主键',
  `title` varchar(50) default '' COMMENT '模块标题',
  `business_type` int(2) default '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) default '' COMMENT '方法名称',
  `request_method` varchar(10) default '' COMMENT '请求方式',
  `operator_type` int(1) default '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) default '' COMMENT '操作人员',
  `dept_name` varchar(50) default '' COMMENT '部门名称',
  `oper_url` varchar(255) default '' COMMENT '请求URL',
  `oper_ip` varchar(128) default '' COMMENT '主机地址',
  `oper_location` varchar(255) default '' COMMENT '操作地点',
  `oper_param` varchar(2000) default '' COMMENT '请求参数',
  `json_result` varchar(2000) default '' COMMENT '返回参数',
  `status` int(1) default '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) default '' COMMENT '错误消息',
  `oper_time` datetime default NULL COMMENT '操作时间',
  `cost_time` bigint(20) default '0' COMMENT '消耗时间',
  PRIMARY KEY  (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- 正在导出表  ry.sys_oper_log 的数据: ~30 rows ((大约))
DELETE FROM `sys_oper_log`;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES
	(1, '字典类型', 9, 'com.ruoyi.web.controller.system.SysDictTypeController.refreshCache()', 'GET', 1, 'admin', '研发部门', '/system/dict/refreshCache', '127.0.0.1', '内网IP', '', '{"msg":"操作成功","code":0}', 0, NULL, '2023-04-06 18:37:54', 471),
	(2, '创建表', 0, 'com.ruoyi.generator.controller.GenController.create()', 'POST', 1, 'admin', '研发部门', '/tool/gen/createTable', '127.0.0.1', '内网IP', '{"sql":["CREATE TABLE `test` (\\n\\t`id` INT(10) NOT NULL AUTO_INCREMENT,\\n\\t`name` VARCHAR(50) NOT NULL DEFAULT \'0\',\\n\\t`age` VARCHAR(50) NOT NULL DEFAULT \'0\',\\n\\tPRIMARY KEY (`id`)\\n)\\nCOLLATE=\'utf8_general_ci\'\\nENGINE=InnoDB;\\n"]}', '{"msg":"操作成功","code":0}', 0, NULL, '2023-04-06 18:45:33', 1238),
	(3, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{"tables":["test"]}', NULL, 0, NULL, '2023-04-06 18:45:43', 369),
	(4, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/test', '127.0.0.1', '内网IP', '"test"', NULL, 0, NULL, '2023-04-18 08:33:25', 586),
	(5, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{"tables":["edu_teacher,edu_student,edu_menu,edu_clazz"]}', '{"msg":"操作成功","code":0}', 0, NULL, '2023-04-18 13:02:18', 432),
	(6, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{"tables":["edu_clazz,edu_menu,edu_student,edu_teacher"]}', NULL, 0, NULL, '2023-04-18 13:03:09', 132),
	(7, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1063', '127.0.0.1', '内网IP', '1063', '{"msg":"操作成功","code":0}', 0, NULL, '2023-04-18 13:06:58', 354),
	(8, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1062', '127.0.0.1', '内网IP', '1062', '{"msg":"存在子菜单,不允许删除","code":301}', 0, NULL, '2023-04-18 13:07:06', 4),
	(9, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1064', '127.0.0.1', '内网IP', '1064', '{"msg":"操作成功","code":0}', 0, NULL, '2023-04-18 13:07:11', 281),
	(10, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1065', '127.0.0.1', '内网IP', '1065', '{"msg":"操作成功","code":0}', 0, NULL, '2023-04-18 13:07:18', 247),
	(11, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1066', '127.0.0.1', '内网IP', '1066', '{"msg":"操作成功","code":0}', 0, NULL, '2023-04-18 13:07:24', 201),
	(12, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1067', '127.0.0.1', '内网IP', '1067', '{"msg":"操作成功","code":0}', 0, NULL, '2023-04-18 13:07:32', 212),
	(13, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1062', '127.0.0.1', '内网IP', '1062', '{"msg":"操作成功","code":0}', 0, NULL, '2023-04-18 13:07:37', 216),
	(14, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/4', '127.0.0.1', '内网IP', '4', '{"msg":"菜单已分配,不允许删除","code":301}', 0, NULL, '2023-04-18 13:07:44', 7),
	(15, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/4', '127.0.0.1', '内网IP', '4', '{"msg":"菜单已分配,不允许删除","code":301}', 0, NULL, '2023-04-18 13:07:50', 8),
	(16, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{"roleId":["2"],"roleName":["普通角色"],"roleKey":["common"],"roleSort":["2"],"status":["0"],"remark":["普通角色"],"menuIds":["1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,113,3,114,115,1057,1058,1059,1060,1061,116"]}', '{"msg":"操作成功","code":0}', 0, NULL, '2023-04-18 13:08:08', 241),
	(17, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/4', '127.0.0.1', '内网IP', '4', '{"msg":"操作成功","code":0}', 0, NULL, '2023-04-18 13:08:23', 171),
	(18, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{"tables":["edu_clazz,edu_menu,edu_student,edu_teacher"]}', NULL, 0, NULL, '2023-04-18 13:16:00', 300),
	(19, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{"tables":["edu_clazz,edu_menu,edu_student,edu_teacher"]}', NULL, 0, NULL, '2023-04-18 13:17:57', 308),
	(20, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/edu_clazz', '127.0.0.1', '内网IP', '"edu_clazz"', '{"msg":"操作成功","code":0}', 0, NULL, '2023-04-18 13:19:22', 508),
	(21, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{"ids":["2,3,4,5"]}', '{"msg":"操作成功","code":0}', 0, NULL, '2023-04-18 13:20:09', 495),
	(22, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{"tables":["edu_teacher,edu_student,edu_menu,edu_clazz"]}', '{"msg":"操作成功","code":0}', 0, NULL, '2023-04-18 13:20:17', 1315),
	(23, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{"parentId":["0"],"menuType":["M"],"menuName":["选课管理"],"url":[""],"target":["menuItem"],"perms":[""],"orderNum":["5"],"icon":["fa fa-cc"],"visible":["0"],"isRefresh":["1"]}', '{"msg":"操作成功","code":0}', 0, NULL, '2023-04-18 13:23:57', 357),
	(24, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{"tableId":["6"],"tableName":["edu_clazz"],"tableComment":["InnoDB free: 7168 kB"],"className":["EduClazz"],"functionAuthor":["ruoyi"],"remark":[""],"columns[0].columnId":["26"],"columns[0].sort":["1"],"columns[0].columnComment":["班级ID"],"columns[0].javaType":["Long"],"columns[0].javaField":["id"],"columns[0].isInsert":["1"],"columns[0].queryType":["EQ"],"columns[0].htmlType":["input"],"columns[0].dictType":[""],"columns[1].columnId":["27"],"columns[1].sort":["2"],"columns[1].columnComment":["班级名称"],"columns[1].javaType":["String"],"columns[1].javaField":["clazzName"],"columns[1].isInsert":["1"],"columns[1].isEdit":["1"],"columns[1].isList":["1"],"columns[1].isQuery":["1"],"columns[1].queryType":["LIKE"],"columns[1].isRequired":["1"],"columns[1].htmlType":["input"],"columns[1].dictType":[""],"columns[2].columnId":["28"],"columns[2].sort":["3"],"columns[2].columnComment":["班级人数"],"columns[2].javaType":["String"],"columns[2].javaField":["clazzCount"],"columns[2].isInsert":["1"],"columns[2].isEdit":["1"],"columns[2].isList":["1"],"columns[2].isQuery":["1"],"columns[2].queryType":["EQ"],"columns[2].isRequired":["1"],"columns[2].htmlType":["input"],"columns[2].dictType":[""],"columns[3].columnId":["29"],"columns[3].sort":["4"],"columns[3].columnComment":["显示状态(0显示，1不显示)"],"columns[3].javaType":["String"],"columns[3].javaField":["visible"],"columns[3].isInsert":["1"],"columns[3].isEdit":["1"],"columns[3].isList":["1"],"columns[3].isQuery":["1"],"columns[3].queryType":["EQ"],"columns[3].isRequired":["1"],"columns[3].htmlType":["input"],"columns[3].dictType":[""],"tplCategory":["crud"],"packageName":["com.ruoyi.edu"],"moduleName":["edu"],"businessName":["clazz"],"functionName":["班级管理"],"params[parentMenuId]":["1068"],"params[parentMenuName]":["选课管理"],"genType":["0"],"genPath":["/"],"subTableName":[""],"params[treeCode]":[""],"params[treeParentCode]":[""],"params[treeName]":[""]}', '{"msg":"操作成功","code":0}', 0, NULL, '2023-04-18 13:24:40', 295),
	(25, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/edu_clazz', '127.0.0.1', '内网IP', '"edu_clazz"', NULL, 0, NULL, '2023-04-18 13:25:07', 43),
	(26, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{"userId":["2"],"status":["1"]}', '{"msg":"操作成功","code":0}', 0, NULL, '2023-04-18 13:46:08', 808),
	(27, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{"userId":["2"],"status":["0"]}', '{"msg":"操作成功","code":0}', 0, NULL, '2023-04-18 13:46:12', 461),
	(28, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{"userId":["2"],"status":["1"]}', '{"msg":"操作成功","code":0}', 0, NULL, '2023-04-18 13:46:48', 435),
	(29, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{"userId":["2"],"status":["0"]}', '{"msg":"操作成功","code":0}', 0, NULL, '2023-04-18 14:17:08', 475),
	(30, '班级管理', 1, 'com.ruoyi.edu.controller.EduClazzController.addSave()', 'POST', 1, 'admin', '研发部门', '/edu/clazz/add', '127.0.0.1', '内网IP', '{"clazzName":["11"],"clazzCount":["1"],"visible":["22"]}', '{"msg":"操作成功","code":0}', 0, NULL, '2023-04-20 17:34:14', 401),
	(31, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{"tables":["edu_teacher"]}', NULL, 0, NULL, '2023-04-24 09:01:22', 384),
	(32, 'InnoDB free: 7168 kB', 1, 'com.ruoyi.edu.controller.EduTeacherController.addSave()', 'POST', 1, 'admin', '研发部门', '/edu/teacher/add', '127.0.0.1', '内网IP', '{"teaSno":["101"],"teaName":["张三"],"flag":["1"],"teaTitle":["讲师"],"deptId":["1111"]}', '{"msg":"操作成功","code":0}', 0, NULL, '2023-04-24 09:11:18', 211),
	(33, 'InnoDB free: 7168 kB', 2, 'com.ruoyi.edu.controller.EduTeacherController.editSave()', 'POST', 1, 'admin', '研发部门', '/edu/teacher/edit', '127.0.0.1', '内网IP', '{"id":["1"],"teaSno":["101"],"teaName":["张三"],"flag":["0"],"teaTitle":["讲师"],"deptId":["1111"]}', '{"msg":"操作成功","code":0}', 0, NULL, '2023-04-24 09:11:26', 189),
	(34, 'InnoDB free: 7168 kB', 1, 'com.ruoyi.edu.controller.EduTeacherController.addSave()', 'POST', 1, 'admin', '研发部门', '/edu/teacher/add', '127.0.0.1', '内网IP', '{"teaSno":["111"],"teaName":["111"],"flag":["11"],"teaTitle":["111"],"deptId":["1111"]}', '{"msg":"操作成功","code":0}', 0, NULL, '2023-04-24 09:11:36', 218),
	(35, 'InnoDB free: 7168 kB', 3, 'com.ruoyi.edu.controller.EduTeacherController.remove()', 'POST', 1, 'admin', '研发部门', '/edu/teacher/remove', '127.0.0.1', '内网IP', '{"ids":["1,2"]}', '{"msg":"操作成功","code":0}', 0, NULL, '2023-04-24 09:11:41', 271),
	(36, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{"menuId":["1075"],"parentId":["1068"],"menuType":["C"],"menuName":["教师管理"],"url":["/edu/teacher"],"target":["menuItem"],"perms":["edu:teacher:view"],"orderNum":["1"],"icon":["#"],"visible":["0"],"isRefresh":["1"]}', '{"msg":"操作成功","code":0}', 0, NULL, '2023-04-24 09:12:21', 228);
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;


-- 导出  表 ry.sys_post 结构
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE IF NOT EXISTS `sys_post` (
  `post_id` bigint(20) NOT NULL auto_increment COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) default '' COMMENT '创建者',
  `create_time` datetime default NULL COMMENT '创建时间',
  `update_by` varchar(64) default '' COMMENT '更新者',
  `update_time` datetime default NULL COMMENT '更新时间',
  `remark` varchar(500) default NULL COMMENT '备注',
  PRIMARY KEY  (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

-- 正在导出表  ry.sys_post 的数据: ~4 rows ((大约))
DELETE FROM `sys_post`;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, 'ceo', '董事长', 1, '0', 'admin', '2023-04-04 09:00:04', '', NULL, ''),
	(2, 'se', '项目经理', 2, '0', 'admin', '2023-04-04 09:00:04', '', NULL, ''),
	(3, 'hr', '人力资源', 3, '0', 'admin', '2023-04-04 09:00:05', '', NULL, ''),
	(4, 'user', '普通员工', 4, '0', 'admin', '2023-04-04 09:00:05', '', NULL, '');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;


-- 导出  表 ry.sys_role 结构
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE IF NOT EXISTS `sys_role` (
  `role_id` bigint(20) NOT NULL auto_increment COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) default '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) default '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) default '' COMMENT '创建者',
  `create_time` datetime default NULL COMMENT '创建时间',
  `update_by` varchar(64) default '' COMMENT '更新者',
  `update_time` datetime default NULL COMMENT '更新时间',
  `remark` varchar(500) default NULL COMMENT '备注',
  PRIMARY KEY  (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- 正在导出表  ry.sys_role 的数据: ~2 rows ((大约))
DELETE FROM `sys_role`;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` (`role_id`, `role_name`, `role_key`, `role_sort`, `data_scope`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '超级管理员', 'admin', 1, '1', '0', '0', 'admin', '2023-04-04 09:00:05', '', NULL, '超级管理员'),
	(2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2023-04-04 09:00:05', 'admin', '2023-04-18 13:08:07', '普通角色');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;


-- 导出  表 ry.sys_role_dept 结构
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE IF NOT EXISTS `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY  (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

-- 正在导出表  ry.sys_role_dept 的数据: ~3 rows ((大约))
DELETE FROM `sys_role_dept`;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
INSERT INTO `sys_role_dept` (`role_id`, `dept_id`) VALUES
	(2, 100),
	(2, 101),
	(2, 105);
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;


-- 导出  表 ry.sys_role_menu 结构
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE IF NOT EXISTS `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY  (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- 正在导出表  ry.sys_role_menu 的数据: ~84 rows ((大约))
DELETE FROM `sys_role_menu`;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES
	(2, 1),
	(2, 2),
	(2, 3),
	(2, 100),
	(2, 101),
	(2, 102),
	(2, 103),
	(2, 104),
	(2, 105),
	(2, 106),
	(2, 107),
	(2, 108),
	(2, 109),
	(2, 110),
	(2, 111),
	(2, 112),
	(2, 113),
	(2, 114),
	(2, 115),
	(2, 116),
	(2, 500),
	(2, 501),
	(2, 1000),
	(2, 1001),
	(2, 1002),
	(2, 1003),
	(2, 1004),
	(2, 1005),
	(2, 1006),
	(2, 1007),
	(2, 1008),
	(2, 1009),
	(2, 1010),
	(2, 1011),
	(2, 1012),
	(2, 1013),
	(2, 1014),
	(2, 1015),
	(2, 1016),
	(2, 1017),
	(2, 1018),
	(2, 1019),
	(2, 1020),
	(2, 1021),
	(2, 1022),
	(2, 1023),
	(2, 1024),
	(2, 1025),
	(2, 1026),
	(2, 1027),
	(2, 1028),
	(2, 1029),
	(2, 1030),
	(2, 1031),
	(2, 1032),
	(2, 1033),
	(2, 1034),
	(2, 1035),
	(2, 1036),
	(2, 1037),
	(2, 1038),
	(2, 1039),
	(2, 1040),
	(2, 1041),
	(2, 1042),
	(2, 1043),
	(2, 1044),
	(2, 1045),
	(2, 1046),
	(2, 1047),
	(2, 1048),
	(2, 1049),
	(2, 1050),
	(2, 1051),
	(2, 1052),
	(2, 1053),
	(2, 1054),
	(2, 1055),
	(2, 1056),
	(2, 1057),
	(2, 1058),
	(2, 1059),
	(2, 1060),
	(2, 1061);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;


-- 导出  表 ry.sys_user 结构
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE IF NOT EXISTS `sys_user` (
  `user_id` bigint(20) NOT NULL auto_increment COMMENT '用户ID',
  `dept_id` bigint(20) default NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) default '' COMMENT '用户昵称',
  `user_type` varchar(2) default '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) default '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) default '' COMMENT '手机号码',
  `sex` char(1) default '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) default '' COMMENT '头像路径',
  `password` varchar(50) default '' COMMENT '密码',
  `salt` varchar(20) default '' COMMENT '盐加密',
  `status` char(1) default '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) default '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) default '' COMMENT '最后登录IP',
  `login_date` datetime default NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime default NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) default '' COMMENT '创建者',
  `create_time` datetime default NULL COMMENT '创建时间',
  `update_by` varchar(64) default '' COMMENT '更新者',
  `update_time` datetime default NULL COMMENT '更新时间',
  `remark` varchar(500) default NULL COMMENT '备注',
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- 正在导出表  ry.sys_user 的数据: ~2 rows ((大约))
DELETE FROM `sys_user`;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` (`user_id`, `dept_id`, `login_name`, `user_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `salt`, `status`, `del_flag`, `login_ip`, `login_date`, `pwd_update_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2023-04-24 09:10:19', '2023-04-04 09:00:03', 'admin', '2023-04-04 09:00:03', '', '2023-04-24 09:10:19', '管理员'),
	(2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2023-04-04 09:00:04', '2023-04-04 09:00:04', 'admin', '2023-04-04 09:00:04', '', '2023-04-18 14:17:08', '测试员');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;


-- 导出  表 ry.sys_user_online 结构
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE IF NOT EXISTS `sys_user_online` (
  `sessionId` varchar(50) NOT NULL default '' COMMENT '用户会话id',
  `login_name` varchar(50) default '' COMMENT '登录账号',
  `dept_name` varchar(50) default '' COMMENT '部门名称',
  `ipaddr` varchar(128) default '' COMMENT '登录IP地址',
  `login_location` varchar(255) default '' COMMENT '登录地点',
  `browser` varchar(50) default '' COMMENT '浏览器类型',
  `os` varchar(50) default '' COMMENT '操作系统',
  `status` varchar(10) default '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime default NULL COMMENT 'session创建时间',
  `last_access_time` datetime default NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) default '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY  (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';

-- 正在导出表  ry.sys_user_online 的数据: ~1 rows ((大约))
DELETE FROM `sys_user_online`;
/*!40000 ALTER TABLE `sys_user_online` DISABLE KEYS */;
INSERT INTO `sys_user_online` (`sessionId`, `login_name`, `dept_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `start_timestamp`, `last_access_time`, `expire_time`) VALUES
	('173e941b-dfd1-46f2-a516-353ae5d86e74', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', 'on_line', '2023-04-24 08:54:43', '2023-04-24 09:12:23', 1800000);
/*!40000 ALTER TABLE `sys_user_online` ENABLE KEYS */;


-- 导出  表 ry.sys_user_post 结构
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE IF NOT EXISTS `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY  (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

-- 正在导出表  ry.sys_user_post 的数据: ~2 rows ((大约))
DELETE FROM `sys_user_post`;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES
	(1, 1),
	(2, 2);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;


-- 导出  表 ry.sys_user_role 结构
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE IF NOT EXISTS `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY  (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- 正在导出表  ry.sys_user_role 的数据: ~2 rows ((大约))
DELETE FROM `sys_user_role`;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES
	(1, 1),
	(2, 2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;


-- 导出  表 ry.test 结构
DROP TABLE IF EXISTS `test`;
CREATE TABLE IF NOT EXISTS `test` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '0',
  `age` varchar(50) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  ry.test 的数据: ~0 rows ((大约))
DELETE FROM `test`;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

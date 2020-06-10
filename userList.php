<?php
/**
 * Created by PhpStorm
 * Author Zhiyong Dong <dongzy@xinruiying.com>
 * Date:2020/6/10
 * Time:13:39
 */
//设置错误级别
error_reporting(0);
//加载公共函数
require __DIR__."/lib/function.php";
//加载pdo操作类
require __DIR__."/lib/mysql.php";
//加载数据库配置文件
$db_config = require __DIR__."/config/db_config.php";

$mysql = new mysql($db_config);
$res = $mysql->table('pc_user')->field('user_id,user_name,user_status,create_time')->where("user_id=1")->order('create_time desc')->select();

p($res);

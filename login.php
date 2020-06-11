<?php
/**
 * Created by PhpStorm
 * Author Zhiyong Dong <dongzy@xinruiying.com>
 * Date:2020/6/10
 * Time:13:18
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
$user_name = $_POST['user_name'];
$user_password = $_POST['user_password'];
$user = $mysql->table('pc_user')->where("user_name='".$user_name."'")->find();
if(empty($user)){
    show_json('500','用户不存在');
}
if(md5($_POST['user_password'].'djhh#@22**hh777&')!=$user['user_password']){
    show_json('500','密码错误');
}
/**
 * 
 */
//用户登录后 需要把他持有的菜单返回给前端页面做显示

show_json('200','登录成功');






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
$data['user_name'] = $_POST['user_name'];
$data['user_password'] = md5($_POST['user_password'].'djhh#@22**hh777&');
$data['create_time'] = date('Y-m-d H:i:s');
try {

    if(empty($data['user_name'])){
        show_json('2','用户名不能为空');
    }
    if(empty($data['user_password'])){
        show_json('3','密码不能为空');
    }
    $where=['user_name'=>$data['user_name'],];
    $res_user=$mysql->table('pc_user')->where($where)->find();
    if (!empty($res_user)){
        show_json('1','用户名已存在！');
    }
    $res = $mysql->table('pc_user')->insert($data);
    show_json('0','插入成功');
}
catch (\Exception $e){
        show_json(500,$e->getMessage());
}





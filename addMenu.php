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
$data['menu_name'] = $_POST['menu_name'];
$data['parent_menu_id'] = $_POST['parent_menu_id'];
$data['layer'] = $_POST['layer'];
try {
    $res = $mysql->table('pc_menu')->insert($data);
    if($res>0){
        show_json('','ok');
    }
    else{
        show_json(500,'系统错误');
    }
}
catch (\Exception $e){
    show_json(500,$e->getMessage());
}





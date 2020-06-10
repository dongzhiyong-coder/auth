<?php
/**
 * Created by PhpStorm
 * Author Zhiyong Dong <dongzy@xinruiying.com>
 * Date:2020/6/10
 * Time:15:31
 */


/**
 * Created by PhpStorm
 * Author Zhiyong Dong <dongzy@xinruiying.com>
 * Date:2020/6/10
 * Time:13:18
 */

//设置错误级别
error_reporting(0);
//加载公共函数
require __DIR__ . "/lib/function.php";
//加载pdo操作类
require __DIR__ . "/lib/mysql.php";
//加载数据库配置文件
$db_config = require __DIR__ . "/config/db_config.php";
$mysql = new mysql($db_config);

try {
    //存在批量添加角色的情况  所以前端传过来应该是个角色数组
    foreach ($_POST['role_id'] as $role_id){
        $row = [];
        $row['role_id'] = $role_id;
        $row['user_id'] = $_POST['user_id'];
        $mysql->table('pc_user_role')->insert($data);
    }
    show_json(200, '设置成功');

} catch (\Exception $e) {
    show_json(500, $e->getMessage());
}





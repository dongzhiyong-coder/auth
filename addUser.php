<?php
/**
 * Created by PhpStorm
 * Author Zhiyong Dong <dongzy@xinruiying.com>
 * Date:2020/6/10
 * Time:13:18
 */

require "./lib/mysql.php";
$db_config = require "./config/db_config.php";
$mysql = new mysql($db_config);
$res = $mysql->table('pc_user')->where("user_id=1")->select();
print_r($res);

<?php
/**
 * Created by PhpStorm
 * Author Zhiyong Dong <dongzy@xinruiying.com>
 * Date:2020/6/10
 * Time:13:45
 */

function p($data){
    echo json_encode($data);
    die;
}

function show_json($code=200,$msg='',$data=[]){
    $arr['code'] = $code;
    $arr['msg'] = $msg;
    $arr['data'] = $data;
    echo json_encode($arr);
    die;
}

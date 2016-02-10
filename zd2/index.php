<?php
/**
 * Created by PhpStorm.
 * User: Дмитрий
 * Date: 09.02.2016
 * Time: 15:14
 */
$db = mysqli_connect('192.168.1.38','root','','testwork');
if( mysqli_connect_error() ){
    throw new Exception('Could not connect to DB');
}
$sql = "SELECT * FROM tasks order by is_active ";
$data =  $db->query($sql);
$db->close();
include_once("index.html");
<?php
/**
 * Created by PhpStorm.
 * User: Дмитрий
 * Date: 09.02.2016
 * Time: 16:54
 */
$db = mysqli_connect('192.168.1.38','root','','testwork');
if( mysqli_connect_error() ){
    throw new Exception('Could not connect to DB');
}
if( isset($_POST['task_name']) ){
    $task_name = mysqli_escape_string($db , $_POST['task_name']);
    $sql = "INSERT INTO tasks (task_name) VALUES ('{$task_name}')";
    $db->query($sql);
    $my_id = mysqli_insert_id($db);
    $arr['name'] = $task_name;
    $arr['id'] = $my_id;
    echo json_encode($arr);
}
if( isset($_POST['task_id']) ){
    $task_id = mysqli_escape_string($db, $_POST['task_id']);
    $sql = "UPDATE tasks SET is_active = '1' WHERE task_id = '{$task_id}'";
    $db->query($sql);
    echo $task_id;
}
$db->close();

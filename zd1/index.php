<?php
/**
 * Created by PhpStorm.
 * User: Дмитрий
 * Date: 09.02.2016
 * Time: 14:01
 */
function my_array_unique( $arr ){
    /*
    foreach( $arr as $item ){
        $result[] = key(current($arr));
    }
    return $result;
    */
    foreach( $arr as $key1 => $item1 ) {
        foreach( $arr as $key2 => $item2 ) {
            if ($arr[$key1] === $item2) {
                $result[$key2] = $item2;
                break;
            }
        }
    }

    return $result;
}
echo "Тестовый масив: \"a\" => \"green\", \"red\", \"b\" => \"green\", \"blue\", \"red\"<br/> ";
$input = array("a" => "green", "red", "b" => "green", "blue", "red");
$result = my_array_unique( $input );
echo "Результат: <h2>";
print_r($result);
echo "</h2>";

<?php

include_once '../includes/global.php';

if (filter_input_array(INPUT_POST)) {

    $uId = userId();

    $u_about = trim(filter_input(INPUT_POST, 'about'));

    $sql = "UPDATE users SET u_about='$u_about' WHERE u_id=$uId ";

    $result = $dbCon->query($sql);
    if (!$result) {
        die('Query failed : ' . $dbCon->error);
    }


    //Updating user Information in SESSION
    userArrRefresh($dbCon);
}
<?php

include_once '../includes/global.php';

if (filter_input_array(INPUT_POST)) {
    $uId = userId();
    $uuPostId = filter_input(INPUT_POST, 'userPostId');
    $userPost = filter_input(INPUT_POST, 'userPostText');

    $sql = "UPDATE posts SET p_post = '$userPost' WHERE u_id = '$uId' AND p_uniqid = '$uuPostId'";
    $result = $dbCon->query($sql);

    if (!$result) {
        die('Query failed: ' . $dbCon->error);
    }

    $postReturn = 'OK';

    echo json_encode($postReturn);
}
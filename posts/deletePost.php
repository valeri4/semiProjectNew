<?php

include_once '../includes/global.php';

if (filter_input_array(INPUT_POST)) {
    $uId = userId();
    $uuPostId = filter_input(INPUT_POST, 'userPostDelete');

    $sql = "DELETE FROM posts WHERE u_id = '$uId' AND p_uniqid = '$uuPostId' LIMIT 1";
    $result = $dbCon->query($sql);

    if (!$result) {
        die('Query failed: ' . $dbCon->error);
    }
    
    $postReturn = 'Post was deleted';

    echo json_encode($postReturn);
}
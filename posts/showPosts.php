<?php

function showPosts($dbCon) {
    $uId = userId();    //User Id Function from helpers
    $userName = userName(); //Username Function from helpers

    //Select by DESC Time
    $sql = "SELECT * FROM posts WHERE u_id = '$uId' ORDER BY p_time DESC ";
    $result = $dbCon->query($sql);

    if (!$result) {
        die('Query failed: ' . $dbCon->error);
    }

    $userPost = array();
    while ($temp = $result->fetch_assoc()) {
        if ($temp['p_post']) {                  //Check if post is not empty
            
            $dateTime = date("H:i d/m/y", strtotime(str_replace('/', '-', $temp['p_time'])));
            
            echo '    <div class="panel panel-default post" id="'.$temp['p_uniqid'].'">
                        <div class="panel-heading"><a href="#" class="pull-right">' .$dateTime.'</a> <h4>' .$userName . '</h4></div>
                        <div class="panel-body">'.$temp['p_post'].'
                             <hr>
                            <form>
                            <div class="input-group">
                              <div class="input-group-btn">
                              <button class="btn btn-default">+1</button><button class="btn btn-default"><i class="glyphicon glyphicon-th-list"></i></button>
                              </div>
                                <input type="text" class="form-control" placeholder="Add a comment..">
                            </div>
                            </form>
                            </div> 
                    </div>';
            $userPost[] = array(                   //Add post to array
                'post' => $temp['p_post'],
                'time' => $temp['p_time']
            );
        }
    }
}


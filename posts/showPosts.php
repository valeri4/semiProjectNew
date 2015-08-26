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
                        <div class="panel-heading">
                        
                        <div class="dropdown pull-right">
                            <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                <li><a href="#"class="editPost">Edit Post</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </div>



                        <a href="#" class="pull-right datePost">' .$dateTime.'</a> <h4>' .$userName . '</h4></div>
                        <div class="panel-body"><p>'.$temp['p_post'].'</p>
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


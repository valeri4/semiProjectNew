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
            
            $post = '    <div class="panel panel-default post" id="'.$temp['p_uniqid'].'">
                        <div class="panel-heading">
                        
                        <div class="dropdown pull-right">
                            <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                <li><a href="#" class="editPost">Edit</a></li>
                                <li><a href="#" class="deletePost">Delete</a></li>
                            </ul>
                        </div>
                        <a href="#" class="pull-right datePost">' .$dateTime.'</a> <h4>' .$userName . '</h4></div>
                        <div class="panel-body"><p class="postText">'.$temp['p_post'].'</p>
                             <hr>
                            </form>
                            </div> 
                    </div>';
            echo $post;
            $userPost[] = array(                   //Add post to array
                'post' => $post,
            );
        }
    }
}


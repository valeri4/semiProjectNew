<?php

function viewInfoBlock() {
    
    $checkIfAbout = $_SESSION['loggedUser']['u_about'];

    //Custom Function from helpers.php
    $bdateview = dateFormat($_SESSION['loggedUser']['u_b_day']);

    echo'<div class="panel panel-default">
            <div class="panel-thumbnail profileImg">
                <img src="css/images/man.jpg" class="img-responsive">
                <p><strong>Name: </strong>' . $_SESSION['loggedUser']['u_f_name'] .' '. $_SESSION['loggedUser']['u_l_name'] .'</p>
                <p><strong>Birthday: </strong>' . $bdateview . '</p>
            </div>
            <div class="panel-body">
                <p class="lead aboutMe">About me:</p>'. $checkIfAbout .'</div>
        </div>';
    
    
    
    //If About me empty => PopUp modal "About me" window
    
    if(strlen($checkIfAbout) == 0){
        echo '<!--post modal-->
            <div id="postModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            About me:
                        </div>
                        <div class="modal-body">
                            <form class="form center-block">
                                <div class="form-group">
                                    <textarea id="aboutMeEmpty" class="form-control input-lg" autofocus="" placeholder=""></textarea>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <div>
                                <button id="aboutSend" class="btn btn-primary btn-sm" data-dismiss="modal" aria-hidden="true">Send</button>
                            </div>	
                        </div>
                    </div>
                </div>
            </div>';

        
        
    }
}

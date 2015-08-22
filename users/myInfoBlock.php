<?php

function viewInfoBlock() {

    //Custom Function from helpers.php
    $bdateview = dateFormat($_SESSION['loggedUser']['u_b_day']);

    echo'<div class="panel panel-default">
            <div class="panel-thumbnail profileImg">
                <img src="css/images/man.jpg" class="img-responsive">
                <p><strong>Name: </strong>' . $_SESSION['loggedUser']['u_f_name'] . $_SESSION['loggedUser']['u_l_name'] .'</p>
                <p><strong>Birthday: </strong>' . $bdateview . '</p>
            </div>
            <div class="panel-body">
                <p class="lead">About me:</p>'. $_SESSION['loggedUser']['u_about'] .'</div>
        </div>';
}

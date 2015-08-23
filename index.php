<?php
include_once 'includes/global.php';
include_once 'includes/auth.php';
include_once 'includes/header.php';
include_once './posts/showPosts.php';
include_once './users/myInfoBlock.php';
?>

<div class="container">



</div>


<div class="col-sm-3">
    
    <?= viewInfoBlock() ?>
    
</div>

<!-- main col right -->
<div class="col-sm-7">

    <div class="well"> 
        <form class="form-horizontal" role="form">
            <h4>What's New</h4>
            <div class="form-group" style="padding:14px;">
                <textarea class="form-control" id="about" placeholder="Update your status"></textarea>
            </div>
            <button class="btn btn-primary pull-right" type="button" id="postSend">Post</button><ul class="list-inline"><li><a href=""><i class="glyphicon glyphicon-upload"></i></a></li><li><a href=""><i class="glyphicon glyphicon-camera"></i></a></li><li><a href=""><i class="glyphicon glyphicon-map-marker"></i></a></li></ul>
        </form>
    </div>

    <?= showPosts($dbCon) ?>

<?php
include_once './includes/footer.php';
?>
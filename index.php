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

    <div class="postsBlock">
        
    <?= showPosts($dbCon) ?>

    </div>
    
<!--post modal-->
<div id="editPostWindow" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			Edit Post
      </div>
      <div class="modal-body">
          <form class="form center-block">
            <div class="form-group">
              <textarea class="form-control input-lg" id="textEditor" autofocus=""></textarea>
            </div>
          </form>
      </div>
      <div class="modal-footer">
          <div>
          <button class="btn btn-primary btn-sm" data-dismiss="modal" aria-hidden="true">Update</button>
            <ul class="pull-left list-inline"><li><a href=""><i class="glyphicon glyphicon-upload"></i></a></li><li><a href=""><i class="glyphicon glyphicon-camera"></i></a></li><li><a href=""><i class="glyphicon glyphicon-map-marker"></i></a></li></ul>
		  </div>	
      </div>
  </div>
  </div>
<?php
include_once './includes/footer.php';
?>
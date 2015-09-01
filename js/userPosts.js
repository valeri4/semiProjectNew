$(function () {
    var aboutTextArea = $('#about');

    $('#postSend').on('click',function () {
        var postText = 'userPostText=' + aboutTextArea.val();
        $.ajax({
            type: "POST",
            url: "posts/addPost.php",
            data: postText,
            cache: false,
            beforeSend: function () {
                $("#loader").css("visibility", "visible");
            },
            complete: function () {
                $("#loader").css("visibility", "hidden");
            },
            success: function (jsondata) {
                if (jsondata) {
                    var json = JSON.parse(jsondata);//JSON Array Parsing

                    //Html Post Block of added post by user
                    var htmlPostVar = '<div class="panel panel-default post" id="'+json['postUUid']+'"><div class="panel-heading"><div class="dropdown pull-right"> <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="caret"></span></button><ul class="dropdown-menu" aria-labelledby="dropdownMenu1"><li><a href="#" class="editPost">Edit</a></li><li><a href="#" class="deletePost">Delete</a></li></ul></div><a href="#" class="pull-right datePost">' + json['dateTime'] + '</a> <h4>' + json['userName'] + '</h4></div><div class="panel-body"><p>' + json['userPostText'] + '</p><hr><form><div class="input-group"><div class="input-group-btn"><button class="btn btn-default">+1</button><button class="btn btn-default"><i class="glyphicon glyphicon-th-list"></i></button></div><input type="text" class="form-control" placeholder="Add a comment.."></div></form></div></div>';

                        
                        $('.postsBlock').prepend(htmlPostVar);
                   
                    //clear textArea
                    aboutTextArea.val('');
                }
            }
        });
    });

});
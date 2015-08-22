$(function () {
    var aboutTextArea = $('#about');
    
    $('#postSend').click(function () {
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
                    var htmlPostVar =  '<div class="panel panel-default post"><div class="panel-heading"><a href="#" class="pull-right">'+json['dateTime']+'</a> <h4>'+json['userName']+'</h4></div><div class="panel-body">'+json['userPostText']+'</div></div>'; 

                    $(".post:first").before(htmlPostVar);
                }
            }
        });
    });

});
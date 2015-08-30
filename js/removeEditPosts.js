$(function () {

    var postText, postBlockId, updatedPostText, postBlock;

    //On click => Edit Post
    $('.postsBlock').on('click','.editPost',function () {
        
        //Get Post Block Object
        postBlock = $(this).parents('.post');
        
        postBlockId = postBlock.attr('id');

        //Get Text Value of Post
        postText = $(postBlock).children().children('p').text();
        
        console.dir(postText);

        //Add Text of Post to Modal Window
        $('#textEditor').text(postText);
        $('#editPostWindow').modal('show');

    });
    
    //Update Post
    $('#editPostWindow').on('click', '#updatePost',function () {
        //Get Updated Post Text
        updatedPostText = $('#textEditor').val();
        

        postText = 'userPostId='+postBlockId+'&userPostText='+updatedPostText;
        
        $.ajax({
            type: "POST",
            url: "posts/editPost.php",
            data: postText,
            cache: false,
            beforeSend: function () {
                $("#loader").css("visibility", "visible");
            },
            complete: function () {
                $("#loader").css("visibility", "hidden");
            },
            success: function (jsondata) {
                console.dir(jsondata);
                
                //Update Post 
                $(postBlock).children().children('p').text(updatedPostText);
                
                //Clear the Modal Window
               // $('#textEditor').val('');
            }
        });
    });

    //On click => Delete Post
    $('.post .deletePost').click(function () {
        //Get Post Block Object
        var postBlock = $(this).parents('.post');

        $(postBlock).remove();

    });


});
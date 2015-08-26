$(function(){
    
    
    //On clikc => Edit Post
    $('.editPost').click(function(){
       var textOfpost = $(this).parent().children().children('p').text();
       console.log($('#textEditor').val(textOfpost));
       $('#editPostWindow').modal('show');
        
    });
    
    
    
});
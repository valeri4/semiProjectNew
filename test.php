<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>scroll demo</title>
  <style>
  div {
    color: blue;
  }
  p {
    color: green;
  }
  span {
    color: red;
    display: none;
  }
  </style>
  <script src="js/lib/jquery.js" type="text/javascript"></script>
</head>
<body>
 
<div>Try scrolling the iframe.</div>
<p>Paragraph - <span>Scroll happened!</span></p>
 
<script>
$( "p" ).clone().appendTo( document.body );
$( "p" ).clone().appendTo( document.body );
$( "p" ).clone().appendTo( document.body );
$( window ).scroll(function() {
  $( "span" ).css( "display", "inline" ).fadeOut( "slow" );
});
</script>
 
</body>
</html>
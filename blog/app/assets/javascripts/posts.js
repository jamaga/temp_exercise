$(document).ready(function(){
  $('a#notify_problem').on('ajax:success', function(e, data, status, xhr){
    $('#notify_message').html('<p style="color: green">MSG WAS SENT</p>')
  }).on('ajax:error', function(e, data, status, xhr){
    $('#notify_message').html('<p style="color: #ff0000">STH WENT WRONG</p>')
  })
});
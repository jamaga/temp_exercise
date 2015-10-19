$(document).ready(function(){
  $('a#notify_problem').on('ajax:success', function(e, data, status, xhr){
    $('#notify_message').html('<div class="alert alert-success" role="alert">MSG WAS SENT</div>')
  }).on('ajax:error', function(e, data, status, xhr){
    $('#notify_message').html('<div class="alert alert-danger" role="alert">STH WENT WRONG</div>')
  })
});

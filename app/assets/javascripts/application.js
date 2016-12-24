//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

$('.image_link').hover(
  function(){ $(this).stop().animate({ opacity : '0.5' }); },
  function(){ $(this).stop().animate({ opacity : '1' }); }
 );

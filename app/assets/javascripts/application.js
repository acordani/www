//= require jquery
//= require jquery_ujs

//= require jquery-fileupload/basic
//= require cloudinary/jquery.cloudinary
//= require attachinary
//= require bootstrap-sprockets
//= require bootstrap-table
//= require underscore
//= require gmaps/google

//= require components

//= require ./google_maps_autocomplete
//= require ./init_attachinary
//= require ./typed_home
//= require ./components

//= require typed


$('.image_link').hover(
  function(){ $(this).stop().animate({ opacity : '0.5' }); },
  function(){ $(this).stop().animate({ opacity : '1' }); }
 );




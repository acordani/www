
$('#open-container-map').hide();
$('#close-container-map').click(function(){
  $('.container-map-estimation-interieur').addClass('hidden');
  $('#open-container-map').show();
})
$('#open-container-map').click(function(){
	$('.container-map-estimation-interieur').removeClass('hidden');
	$('#open-container-map').hide();
})
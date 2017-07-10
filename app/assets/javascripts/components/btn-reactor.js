$(document).ready(function() {
  $('.hire_me').on('click', function() {
    $('.modal').addClass('is-active')
  })

  $('.modal').on('click', function() {
    $(this).removeClass('is-active')
  })
})
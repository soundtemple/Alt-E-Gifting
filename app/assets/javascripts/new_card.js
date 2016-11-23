


$(document).ready(function() {
  $('.box').each(function() {
    $(this).hide();
    if ($(this).hasClass('initial')) {
      $(this).show();
    }
  })

  $('.next').click(function(e) {
    e.preventDefault();

    // changes the preview to be equal to the input
    $('.preview_t').text($('.input_t').text());
    $('.preview_rn').text($('.input_rn').val());
    $('.preview_so').text($('.input_so').val());
    $('.preview_msg').text($('.input_msg').val());
    $('.preview_col').css("background-color",$('.input_col').val());
    $('.preview_img').attr("src",($('.input_img').attr("src")));


    var $main = $($(this).closest(".box"));
    $main.hide();
    var $next = $($main.next('.box'));
    $next.show();
  })

  $('.prev').click(function(e) {
    e.preventDefault();

    var $main = $($(this).closest(".box"));
    $main.hide();
    var $prev = $($main.prev('.box'));
    $prev.show();
  })


})

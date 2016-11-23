


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
    $('.preview_t').html($('.input_t').value());
    $('.preview_rn').text($('.input_rn').value());
    $('.preview_so').text($('.input_so').value());
    $('.preview_msg').html($('.input_msg').value());
    $('.preview_col').css("background-color",$('.input_col').value());
    $('.preview_img').attr("src",($('.input_img').attr("src"));


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

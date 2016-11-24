


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


    var $main = $($(this).closest(".box"));
    $main.hide();
    var $next = $($main.next('.box'));
    $next.show();
  });

  $('.prev').click(function(e) {
    e.preventDefault();

    var $main = $($(this).closest(".box"));
    $main.hide();
    var $prev = $($main.prev('.box'));
    $prev.show();
  });

  $('.input_t').change(function() {
    $('.preview_t').text($('.input_t').text());
  });

  $('.input_rn').change(function() {
    $('.preview_rn').text($('.input_rn').val());
  });

  $('.input_so').change(function() {
    $('.preview_so').text($('.input_so').val());
  });

  $('.input_msg').change(function() {
    $('.preview_msg').text($('.input_msg').val());
  });

  $('.input_col').change(function() {
    $('.preview_col').css("background-color",$('.input_col').val());
  });

  $('.input_img').change(function() {
    $('.preview_img').attr("src",($('.input_img').attr("src")));
  });

})

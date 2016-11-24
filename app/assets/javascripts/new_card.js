


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

  $('.input_msg').change(function() {
    $('.preview_msg').text($('.input_msg').val());
  });

  $('.input_col').change(function() {
    $('.preview_col').css("background-color",$('.input_col').val());
  });


  // Code in bg_imgs.js
  // $('.your-class').click(function() {
  //   $('.preview_img').attr("src",($().attr("src")));
  // });

})

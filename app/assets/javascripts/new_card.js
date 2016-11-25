
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
    $('.preview_t').text($('.input_t option:selected').text().toUpperCase());
  });

  $('.input_msg').change(function() {
    $('.preview_msg').text($('.input_msg').val());
  });

  $('.input_col').change(function() {
    $('.preview_col').css("background-color",$('.input_col').val());


    var bgc = hexToRgb($('.input_col').val());
    if (bgc.r < 128 && bgc.b < 128 && bgc.g < 128) {
      $('.preview_msg').removeClass('black')
      $('.preview_msg').addClass('white')
    } else {
      $('.preview_msg').removeClass('white')
      $('.preview_msg').addClass('black')
    }
  });

  $('.category_select').change(function() {
    $('.input_msg').empty();
    var choice = favours[ $('.category_select').val() ]
    for (var i = 0; i < choice.length; i++) {
      $('.input_msg').append($("<option></option>").attr("value", choice[i]).text(choice[i]))
    }
    $( '.input_msg' ).trigger( "change" );



  });
  // Code in bg_imgs.js
  // $('.your-class').click(function() {
  //  $('.preview_img').attr("src",($().attr("src")));
  // });

  var bgc = toRGB($('.preview_col').css("background-color"));
  console.log(bgc)
  if (bgc.r < 128 && bgc.b < 128 && bgc.g < 128) {
    $('.preview_msg').removeClass('black')
    $('.preview_msg').addClass('white')
  } else {
    $('.preview_msg').removeClass('white')
    $('.preview_msg').addClass('black')
  }


})

function hexToRgb(hex) {
    // Expand shorthand form (e.g. "03F") to full form (e.g. "0033FF")
    var shorthandRegex = /^#?([a-f\d])([a-f\d])([a-f\d])$/i;
    hex = hex.replace(shorthandRegex, function(m, r, g, b) {
        return r + r + g + g + b + b;
    });

    var result = /^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(hex);
    return result ? {
        r: parseInt(result[1], 16),
        g: parseInt(result[2], 16),
        b: parseInt(result[3], 16)
    } : null;
}

function toRGB(text) {

  var result = text.split( ',' ) ;
  return result ? {
    r:parseInt( result[0].substring(4) ), // skip rgb(
    g:parseInt( result[1] ), // this is just g
    b:parseInt( result[2] ), // parseInt scraps trailing )
  } : null

}

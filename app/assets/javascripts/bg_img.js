//AJAX CALL PIXABAY
//CAROSEL LOAD

console.log('pix_test');

var searchRequest;
var endPointUrl = "https://pixabay.com/api/?key=3809048-f32307ec837cd018b53643347&min_height=900&min_width=600&image_type=photo&orientation=horizontal&q=background+";
var cardImage;

$(document).ready(function() {
  // Sets up a dummy so the first ajax call work
  $('.your-class').slick({
     dots: true,
     infinite: true,
     speed: 300,
     slidesToShow: 1,
     centerMode: true,
     variableWidth: true
   });

  $('.search_btn').click(function(e) {
    // prevent form sending form
    e.preventDefault()
    // create url to be sent to omdbapi
    searchRequest = $('#search_input').val();
    imageRequest = endPointUrl + searchRequest;
    // empty results div for new search
    $('.image-results').empty();
    // empty search field to prevent multiple request
    $('#search_input').val('');
    // get_movies(movie_requested);
    $.ajax({
      url: imageRequest,
      method:'get', //default method
      success: function(data) {
        unsl();
        displayImages(data);
      }
    })
  });
});

//reintialize slick
function unsl(){
   $('.your-class').slick('unslick'); /* ONLY remove the classes and handlers added on initialize */
   $('.your-class').empty();
}


function displayImages(pixabayResults){
  console.log(pixabayResults);
  for (var i = 0; i < pixabayResults.hits.length; i++) {
    result = pixabayResults.hits[i].webformatURL
    imageId = "image-option-" + i;
    var img = $("<img>").attr('id', imageId).attr('src', result)
    img.appendTo('.your-class');

    // on click store image url.
    // Change bground of selected-img div
    $(img).on('click', function(event) {
    console.log($(this).attr('src'));
    cardImage = $(this).attr('src')

    $('.chosen-image img').attr('src', cardImage)
    });
  }

  //puts the images in the slider
  $('.your-class').slick({
     dots: true,
     infinite: true,
     speed: 300,
     slidesToShow: 1,
     centerMode: true,
     variableWidth: true
   });
};



function callFail() {
  message = "Ooops... something went wrong. Try again later."
  $(".results").append(message);
};

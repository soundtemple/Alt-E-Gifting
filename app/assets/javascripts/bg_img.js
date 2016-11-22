console.log('pix_test');


var searchRequest;
var endPointUrl = "https://pixabay.com/api/?key=3809048-f32307ec837cd018b53643347&min_height=900&min_width=600&image_type=photo&orientation=horizontal&q=background+";
var cardImage;

$(document).ready(function() {
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
    var options = {
      url: imageRequest,
      method:'get' //defualt method
    }
    $.ajax(options).done(displayImages).fail(callFail);
  });

});




function displayImages(pixabayResults){
  console.log(pixabayResults);
  for (var i=0; i<pixabayResults.hits.length; i++) {
    result = pixabayResults.hits[i].webformatURL
    imageId = "image-option-" + i;
    var img = $("<img>").attr('id', imageId).attr('src', result).addClass('carousel');
    img.appendTo('.image-results');

    // on click store image url.
    // Change bground of selected-img div
    $(img).on('click', function(event) {
    console.log($(this).attr('src'));
    cardImage = $(this).attr('src')
    $('.selected-image').css({'background-image': 'url(' + $(this).attr('src') + ')'})
    });
  }
};


function callFail() {
  message = "Ooops... something went wrong. Try again later."
  $(".results").append(message);
};

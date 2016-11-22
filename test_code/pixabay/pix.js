console.log('pix_test');


var searchRequest;
var endPointUrl = "https://pixabay.com/api/?key=3809048-f32307ec837cd018b53643347&min_height=400&min_width=600&image_type=photo&q=";



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

$('image').on('mouseover')



function displayImages(pixabayResults){
  for (var i=0; i<pixabayResults.hits.length; i++) {
    result = pixabayResults.hits[i].webformatURL
    console.log(result);
    imageId = "image-option-" + i;
    var img = $("<img>").attr('id', imageId).attr('src', result)
    img.appendTo('.image-results');
  }
};


function callFail() {
  message = "Ooops... something went wrong. Try again later."
  $(".results").append(message);
};

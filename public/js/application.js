$(document).ready(function() {
  // bind click listeners to every element with the class `panda-show-link`
  $(".panda-show-link").on("click", function(e) {
    // prevent the default browser action for clicking a link
    e.preventDefault();

    // store a reference to the jQuery-wrapped version of the link so
    // we can access it within the done callback function below
    var $originalLink = $(this);

    // send an AJAX request to the link's href
    $.ajax({
      url: this.href

      // set up a callback to run upon a successful response from the server
    }).done(function(response) {
      // from the link that was clicked, find its closest `li` ancestor
      // and append the server's response to it
      $originalLink.closest("li").append(response);

      // hide the link so users can't click it again
      $originalLink.hide();
    });
  });
});

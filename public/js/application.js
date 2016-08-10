$(document).ready(function() {
  // NON DELEGATION VERSION
  // bind click listeners to every element with the class `panda-show-link`
  // $(".panda-show-link").on("click", function(e) {

  // EVENT DELEGATION VERSION
  // binds a single click listener to the panda-list element which is on the page
  // to begin with, but will only fire the callback in the case that a 
  // .panda-show-link within it is the event target
  $("#panda-list").on("click", ".panda-show-link", function(e) {
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

  $("#new-panda-form").submit(function(e) {
    e.preventDefault();
    $.ajax({
      url: $(e.target).attr("action"),
      type: $(e.target).attr("method"),
      data: $(e.target).serialize()
    }).done(function(response) {
      $("#panda-list").append(response);
    });
  })
});

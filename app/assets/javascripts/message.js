// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function() {
  $("#reply-form").hide();

  $('#reply-button').click(function(event) {
    event.preventDefault();
    $("#reply-form").show();
  });

});
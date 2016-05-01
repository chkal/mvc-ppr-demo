$(function () {
  "use strict";

  $("#form").on("submit", function (e) {
    sendMessage();
    e.preventDefault();
  });

  function sendMessage() {

    $.ajax({
      url: "./chat/post",
      method: "POST",
      data: {
        name: $("#name").val(),
        message: $("#message").val()
      }
    }).then(function (data) {

      // Parse the response HTML and find the content that we want to insert into our DOM
      var partial = $(data).find("#table-wrapper");

      // Now replace the content of the table wrapper with the new content
      $("#table-wrapper").html(partial.html());

      // reset the form
      $("#message").val("").focus();

    });

  }

});

function createBatch(event) {
  event.preventDefault();

  var newBatch = { name: event.currentTarget.name.value, start_date: event.currentTarget.start_date.value, end_date: event.currentTarget.end_date.value };

  $.ajax({
    type: "POST",
    url: "/api/batches.json",
    data: JSON.stringify({
      batch: newBatch
    }),
    contentType: "application/json",
    dataType: "json"

  })
  .done(function() {
    console.log("Batch created"),
    window.location.replace("/batches")
  })
  .fail(function(error) {
    console.log("error", error);
  });
}

$(document).ready(function() {
  $("form").bind('submit', createBatch);
});

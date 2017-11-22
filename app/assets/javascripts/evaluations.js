function createEvaluation(event) {
  event.preventDefault();

  var url = window.location.href
  var batchId = url.split("/")[4]
  var studentId = url.split("/")[6]
  var date = this.parentElement.children.date.value;

  var newEvaluation = { date: date, score: event.target.id};

  $.ajax({
    type: "POST",
    url: "/api/batches/" + batchId + "/students/" + studentId + "/evaluations.json",
    data: JSON.stringify({
      evaluation: newEvaluation,
    }),
    contentType: "application/json",
    dataType: "json"
  })
  .done(function() {
    console.log("evaluation created"),
    window.location.replace("/batches/" + batchId)
  })
  .fail(function(error) {
    console.log("error", error);

    error_message = "Date: " + error.responseJSON.errors.date[0];
    showError(error_message)
  });
};

function showError(message) {
  alert(message)
}



$(document).ready(function() {
  $("button").bind('click', createEvaluation);
});

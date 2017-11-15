function createEvaluation(event) {
  event.preventDefault();

  var date = this.parentElement.children.date.value;
  var studentId = this.parentElement.children.studentId.value;
  var batchId = this.parentElement.children.batchId.value;
  var newEvaluation = { date: date, score: event.target.id, student_id: studentId};

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
  });
};


$(document).ready(function() {
  $("button").bind('click', createEvaluation);
});

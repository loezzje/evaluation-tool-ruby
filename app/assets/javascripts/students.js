function createStudent(event) {
  event.preventDefault();

  var url = window.location.href
  var batchId = url.split("/")[4]

  var newStudent = { name: event.currentTarget.name.value, photo: event.currentTarget.photo.value };

  $.ajax({
    type: "POST",
    url: "/api/batches/" + batchId + "/students.json",
    data: JSON.stringify({
      student: newStudent,
    }),
    contentType: "application/json",
    dataType: "json"
  })
  .done(function() {
    console.log("Student created"),
    window.location.replace("/batches/" + batchId)
  })
  .fail(function(error) {
    console.log("error", error);
  });
};

$(document).ready(function() {
  $("#studentForm").bind('submit', createStudent);
});

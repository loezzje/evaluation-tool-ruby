class Api::StudentsController < ApplicationController
  # before_action :authenticate_user!
  skip_before_action :verify_authenticity_token

  def index
    students = Batch.find(params[:id]).students.all
    render status: 200, json: {
      students: students
    }.to_json
  end


  def create
    student = Student.new(student_params)

    if student.save
      render status: 201, json: {
        message: "Student created",
        student: student
      }.to_json
    else
      render status: 422, json: {
        errors: student.errors
      }.to_json
    end
  end

  private

    def student_params
      params.require(:student).permit(:name, :photo, :batch_id)
    end

end
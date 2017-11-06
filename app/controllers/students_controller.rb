class StudentsController < ApplicationController
  before_action :authenticate_user!

  def show
    @student = Student.find(params[:id])
    @evaluations = @student.evaluations.all
  end
end

class StudentsController < ApplicationController
  before_action :authenticate_user!

  def show
    @student = Student.find(params[:id])
    @evaluations = @student.evaluations.all
    @studentId = @student.id
    @batchId = Batch.find(params[:batch_id]).id
  end

  def new
    @batchId = Batch.find(params[:batch_id]).id
  end
end

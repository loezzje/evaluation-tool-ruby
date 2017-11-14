class StudentsController < ApplicationController
  before_action :authenticate_user!

  def show
    @student = Student.find(params[:id])
    @evaluations = @student.evaluations.all
  end

  def new
    @batchId = Batch.find(params[:batch_id]).id
  end
end

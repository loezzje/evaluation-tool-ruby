class StudentsController < ApplicationController
  before_action :authenticate_user!

  def show
    @student = Student.find(params[:id])
    @evaluations = @student.evaluations.all
    @studentId = @student.id
    @batchId = Batch.find(params[:batch_id]).id
    @weekdays = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    @month1 = @student.set_month_one
    @month2 = @student.set_month_two
    @month3 = @student.set_month_three
    @year1 = @student.set_year_one
    @year2 = @student.set_year_two
    @year3 = @student.set_year_three
  end

  def new
    @batchId = Batch.find(params[:batch_id]).id
  end
end

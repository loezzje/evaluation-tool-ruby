class BatchesController < ApplicationController
  before_action :authenticate_user!

  def index
    @batches = Batch.all
  end

  def show
    @batch = Batch.find(params[:id])
    @students = @batch.students.all
    @randomStudent = @batch.set_random_student

    @greenScores = @batch.get_number_of_green_scores
    @orangeScores = @batch.get_number_of_orange_scores
    @redScores = @batch.get_number_of_red_scores
    @noScores = @batch.get_number_of_no_scores
  end

  private

  def batch_params
    batch_params = params.require(:batch).permit(:name, :start_date, :end_date)
  end
end

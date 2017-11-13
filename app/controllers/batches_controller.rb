class BatchesController < ApplicationController
  before_action :authenticate_user!

  def index
    @batches = Batch.all
  end

  def show
    @batch = Batch.find(params[:id])
    @students = @batch.students.all
  end

  # def new
  #   @batch = Batch.new
  # end
  #
  # def create
  #   @batch = Batch.new(batch_params)
  #   if @batch.save
  #     redirect_to @batch
  #   else
  #     render 'new'
  #   end
  # end

  private

  def batch_params
    batch_params = params.require(:batch).permit(:name, :start_date, :end_date)
  end
end

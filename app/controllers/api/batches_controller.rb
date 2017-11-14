class Api::BatchesController < Api::BaseController

  def index
    render status: 200, json: {
      batches: Batch.all
    }.to_json
  end


  def show
    batch = Batch.find(params[:id])
    students = batch.students.all
    render status: 200, json: {
      batch: batch,
      students: students
    }.to_json
  end

  def create
    batch = Batch.new(batch_params)
    if batch.save
      render status: 201, json: {
        message: "Batch created",
        batch: batch
      }.to_json
    else
      render status: 422, json: {
        errors: batch.errors
      }.to_json
    end
  end

  private

  def batch_params
    params.require(:batch).permit(:name, :start_date, :end_date)
  end
end

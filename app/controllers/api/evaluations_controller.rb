class Api::EvaluationsController < Api::BaseController

  def index
    evaluations = Student.find(params[:id]).evaluations.all
    render status: 200, json: {
      evaluations: evaluations
    }.to_json
  end


  def create
    evaluation = Evaluation.new(evaluation_params.merge(student_id: params[:student_id]))
    if evaluation.save
      render status: 201, json: {
        message: "Evaluation created",
        evaluation: evaluation,
      }.to_json
    else
      render status: 422, json: {
        errors: evaluation.errors
      }.to_json
    end
  end

  private

    def evaluation_params
      params.require(:evaluation).permit(:score, :date, :student_id)
    end

end

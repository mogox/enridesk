class CasesController < ApplicationController
  def show
    load_filters
    load_labels

    case_id = params.fetch(:id, 0)
    @kase = Case.find(case_id)
  end

  def update
    case_params = get_case_params
    Case.add_label(case_params[:id], case_params[:label_id])
    flash[:notice] = "Label added"
    redirect_to case_path(case_params[:id])
  end

  private
  def get_case_params
    params.permit(:id, :label_id)
  end
end

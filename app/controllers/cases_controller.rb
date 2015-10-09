class CasesController < ApplicationController
  def show
    load_filters
    load_labels

    case_id = params.fetch(:id, 0)
    @kase = Case.find(case_id)
  end
end

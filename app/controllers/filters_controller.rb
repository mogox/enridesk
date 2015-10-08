class FiltersController < ApplicationController
  def show
    filter_id = params.fetch(:id, 0)
    @cases = Case.by_filter(filter_id)
  end
end

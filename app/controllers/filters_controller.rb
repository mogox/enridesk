class FiltersController < ApplicationController
  def show
    load_filters
    load_labels

    filter_id = params.fetch(:id, 0)
    @filter = Filter.find filter_id
    @cases = Case.by_filter(filter_id)
  end
end

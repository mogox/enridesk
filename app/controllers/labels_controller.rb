class LabelsController < ApplicationController
  def create
    Label.create(params["label"], "New label")
    redirect_to root_path
  end
end

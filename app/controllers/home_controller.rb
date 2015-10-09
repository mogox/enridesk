class HomeController < ApplicationController
  def index
    load_filters
    load_labels
  end
end

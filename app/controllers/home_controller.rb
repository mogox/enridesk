class HomeController < ApplicationController
  def index
    @filters = Filter.all
  end
end

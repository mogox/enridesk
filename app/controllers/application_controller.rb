class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def load_filters
    @filters = Filter.all
  end

  def load_labels
    @labels = Label.all
  end
end

class WelcomeController < ApplicationController
  def index
    @name_session = params[:name]
    @course_session = params[:course]
  end
end

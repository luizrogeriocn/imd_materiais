class HomeController < ApplicationController

  include ActionView::Helpers::NumberHelper

  def index
    @tasks = current_user.tasks

  end

end
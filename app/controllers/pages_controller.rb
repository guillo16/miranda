class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :not_found, :internal_server_error]

  def home
  end

end

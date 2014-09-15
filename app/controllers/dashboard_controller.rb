class DashboardController < ApplicationController
  before_action :ensure_authenticated_user

  def index
    @user = current_user
  end

end
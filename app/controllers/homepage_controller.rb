class HomepageController < ApplicationController
  skip_before_filter :ensure_authenticated_user

  def index
    @user = User.new
  end

end
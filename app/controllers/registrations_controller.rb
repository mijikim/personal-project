class RegistrationsController < ApplicationController
  skip_before_filter :ensure_authenticated_user

  def new
    @user = User.new
  end

  def create
    @user = User.new(allowed_params)

    if @user.save
      flash[:notice] = "You have successfully registered"
      redirect_to dashboard_path
    else
      render 'homepage/index'
    end
  end

  private

  def allowed_params
    params.require(:user).permit(:username, :password, :email)
    # params.fetch(:user, {}).permit(:username, :first_name, :last_name, :password, :bio, :rant_frequency)
  end

end
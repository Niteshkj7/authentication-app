class RegistrationsController < ApplicationController

  def new
    @user = User.new
  end
    
  def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.welcome_email(@user).deliver_now
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Successfully created account'
    else
      redirect_to sign_up_path, alert: 'Email already exist'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
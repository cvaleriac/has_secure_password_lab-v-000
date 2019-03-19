class SessionsController < ApplicationController
  def new
  end

  def home
  end

  def create
    @user = User.find_by(username: params[:username])
    return head(:forbidden) unless @user.authenticate(params[:password])
    session[:user_id] = @user.id
  end

  def destroy
    session[:name] = nil
    redirect_to '/new'
  end

end

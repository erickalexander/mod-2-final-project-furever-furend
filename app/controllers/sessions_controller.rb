class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:create, :new]

  def new
  end

  def create
    user = User.find_by(name: params[:username])
    if user && user.authenticate(params[:password])

      session[:user_id] = user.id
      flash[:message] = "Welcome #{user.username}!"
      redirect_to user_path(user)
    else
      flash[:message] = "Wrong username and password"
      redirect_to signin_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to signin_path
  end
end

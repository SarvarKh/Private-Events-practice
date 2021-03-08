class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by_name(params[:name])
    if user
      session[:user_id] = user.id
      redirect_to root_path, notice:
      "Welcome #{user.id}, you successfully Signed In!"
    else
      render 'new', alert:
      'User ID and/or Password Invalid!'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "You're now signed out!"
  end
end

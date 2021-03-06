class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email]) || nil
    if @user && @user.authenticate(params[:session][:password])
      redirect_to user_path(@user)
    else
      render :new
    end
  end

end

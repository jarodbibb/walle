class UsersController < ApplicationController
  def new
  end

  def index
  end
  def create 
    @user = User.create(params.require(:user).permit(:name))
    if @user.save 
      session[:user_id] = @user.id
      redirect_to "/messages"
    else 
      flash[:notice] = @user.errors.full_messages
      redirect_to "/users/new"
    end 

  end 
  def messages
  end

end

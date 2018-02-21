class MessagesController < ApplicationController
  def new
  end

  def index
    @user = User.find(session[:user_id])
    @messages = Message.all
    puts "jdkjafkdkjkj", @messages, "jdklfajdsfj"
 
  end
  def create 
    @mess = Message.create(message: params[:message], user: User.find(session[:user_id]))
    if @mess.save 
      redirect_to '/messages'
    else 
      flash[:notice] =  @mess.errors.full_messages
      redirect_to '/messages'
    end
  end 
end

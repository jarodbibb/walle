require 'rails_helper'

RSpec.describe Message, type: :model do
  # before(:each) do 
  #   user = User.create(name:"jarod")
  # end 
  it "has to have message" do 
   
    user = User.create(name:"jarod")
    mess = Message.new(user: user)
    expect(mess).to be_invalid
  end 
  it "has to be longer than 10 characters" do 
    user = User.create(name:"jarod")
    mess = Message.new(user: user, message: 'hefddddddddddf')
    expect(mess).to be_valid
  end 

end

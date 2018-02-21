require 'rails_helper'

RSpec.describe User, type: :model do
 it "has a name " do 
  user = User.new  
  
  expect(user).to be_invalid
 end
 it "has to be a unique name " do 
 user = User.create(name: "MyString")
  user2 = User.new(name: "MyString")

  expect(user2).to be_invalid
 end 
 it "has to have atleast five letters " do 
  user = User.new(name: "jaro")
  expect(user).to be_invalid
 end

end

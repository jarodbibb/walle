require 'rails_helper'
feature "guest user creates an account" do
  before(:each) do 
    visit new_user_path
  end 
 
  scenario "successfully creates new user" do 
    visit new_user_path
    fill_in "user_name", with: "Jarod"
    click_button "Create User"
    expect(page).to have_content('welcome')
  end
  
  scenario "unsuccessfully created user" do
    visit new_user_path
  
    click_button "Create User"
    expect(current_path).to eq("/users/new")
  end  
  scenario "to to exist" do 
   
    click_button "Create User"
    expect(page).to have_content("Must enter name")

  end 
  scenario "needs more than five characters" do 
    fill_in "user_name", with: "Jaro"
    expect(page).to have_content("must have 5 characters")
  end 



end
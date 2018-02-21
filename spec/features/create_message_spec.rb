require 'rails_helper'
feature "Message created" do 
    before (:each) do 
        visit new_user_path
        fill_in "user_name", with: "Jarod"
        click_button "Create User"
    
end 
 scenario "successfully" do 
    fill_in "message", with: "test messsage"
    click_button "post a message"
    expect(current_path).to eq(messages_path)
    expect(page).to have_content("test message")
 end 
end 
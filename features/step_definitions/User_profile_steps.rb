Given("I am a new user") do
  # pending # Write code here that turns the phrase above into concrete actions
  @user=FactoryBot.build(:user)
end
When("I visit the main page") do
  # pending # Write code here that turns the phrase above into concrete actions
  visit '/'
  # save_and_open_page
end

Then("I should see a signup link") do
  # pending # Write code here that turns the phrase above into concrete actions
  # find_link('Sign up', href: new_user_registration_path)
  expect(page).to have_link('Sign up',href:new_user_registration_path)
  # find_link('Sign up').visible?
  # find("a", :text => "Sign up")
  # expect(page).to have_content "Sign up"
end

When("I click the signup link") do
  # pending # Write code here that turns the phrase above into concrete actions
  find_link('Sign up', href: new_user_registration_path).click
  # save_and_open_page
end

Then("I should see a signup form") do
  # pending # Write code here that turns the phrase above into concrete actions
  expect(page).to have_selector('form#new_user')
end

When("I fill in the signup form") do
  # pending # Write code here that turns the phrase above into concrete actions
  fill_in "Email",with: @user.email
  fill_in "Password",with: @user.password
  fill_in "Password confirmation",with: @user.password_confirmation
  click_button 'Sign up'
  # save_and_open_page
end

Then("I should be logged in") do
  # pending # Write code here that turns the phrase above into concrete actions
  expect(page).to have_content"successfully."
  # save_and_open_page
end


Then("I should see my profile") do
  # pending # Write code here that turns the phrase above into concrete actions
  # save_and_open_page
  expect(page).to have_content"My Profile"
  expect(page).to have_content "Email:#{@user.email}"
  # save_and_open_page
end
Given("I am an existing user") do
  # pending # Write code here that turns the phrase above into concrete actions
  @user=FactoryBot.create :user
end
Then("I should see a Log in form") do
  # pending # Write code here that turns the phrase above into concrete actions
  expect(page).to have_link('Log in',href: new_user_session_path)
end

When("I fill in the Login form") do
  # pending # Write code here that turns the phrase above into concrete actions
  visit '/users/sign_in'
  fill_in "Email",with: @user.email
  fill_in "Password",with: @user.password
  click_button 'Log in'
  save_and_open_page
end



Given /^I am on the home page$/ do
  visit root_path
end

When /^I request an invitation for "([^"]*)"$/ do |email|
  visit root_path
  fill_in 'email', :with => email
  click_button 'Request Invitation'
end
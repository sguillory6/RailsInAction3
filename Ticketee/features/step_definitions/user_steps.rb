
Given /^there is a user with the email address "([^"]*)" and password "([^"]*)"$/ do |email, password|
    User.create!(:email => email, :password => password, :password_confirmation => password)
end

Given /^"([^"]*)" has confirmed their account$/ do |email|
    User.find_by_email(email).confirm!
end

Given /I am on the homepage/ do
  visit('/')
end

When /I follow "Sign up"/ do
  click_link('Sign up')
end

And /I fill in "Email" with "user@ticketee\.com"/ do
  fill_in("Email",:with=>'user@ticketee.com')
end

And /I fill in "Password" with "password"/ do
  fill_in("Password",:with=>'password')
end

And /I fill in "Password confirmation" with "password"/ do
  fill_in("Password confirmation",:with=>'password')
end

And /I press "Sign up"/ do
  click_button("Sign up")
end

Then /I should see "You have signed up successfully"/ do
  page.should have_content('You have signed up successfully')
end


Given /^I am on the homepage$/ do
  visit('/')
end

When /I follow "New Project"/ do 
  click_link('New Project')
end

When /I fill in "Name" with "TextMate 2"/ do 
  pending # express the regexp above with the code you wish you had
end

When /^I press "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^I should see "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end


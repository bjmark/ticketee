Given /^I am on the homepage$/ do
  visit('/')
end

When /I follow "New Project"/ do 
  click_link('New Project')
end

When /I fill in "Name" with "TextMate 2"/ do 
   fill_in('Name', :with =>'TextMate 2')
end

When /I press "Create Project"/ do
  click_button('Create Project')
end

Then /I should see "Project has been created"/ do
  text = 'project has been created'
#  if page.respond_to? :should
    page.should have_content(text)
#  else
#    assert page.has_content?(text)
#  end
end


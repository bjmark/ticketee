Given /there is a project called "TextMate 2"/ do
  Factory(:project,:name=>'TextMate 2')
end

And /I am on the homepage/ do
  visit('/')
end

When /I follow "TextMate 2"/ do 
  click_link("TextMate 2")
end

Then /I should be on the project page for "TextMate 2"/ do
  current_path.should == project_path(Project.find_by_name('TextMate 2'))
end


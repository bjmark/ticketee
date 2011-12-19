Given /there is a project 'project1'/ do
  @p1 = Factory(:project,:name=>'project1')
end

And /I am on the page for showing 'project1'/ do
  visit(project_path(@p1))
end

And /I click the delete button/ do
  click_on('delete')
end

Then /the 'project1' should be deleted/ do
  Project.where(:name=>'project1').size.should == 0
end

And /I should be redirected to list projects page/ do
  current_path.should == projects_path
end

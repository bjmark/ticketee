Given /there is a project named 'project1'/ do 
  @p = Factory(:project,:name=>'project1')
end

And /I am on the page for showing 'project1'/ do
  visit(project_path(@p))
end

And /I follow the 'edit' link/ do
  click_link('edit')
end

And /I should be on the page for editing 'project1'/ do
  current_path.should == edit_project_path(@p)
end

And /I change the name from 'project1' to 'project2'/ do
  fill_in('project[name]',:with=>'project2')
end
    
And /I submit/ do
  click_button('update project')
end

And /the project.name should be 'project2'/ do
  @p.reload.name.should == 'project2'
end

And /I should be on page for showing  'project2'/ do
  current_path.should == project_path(@p)
end


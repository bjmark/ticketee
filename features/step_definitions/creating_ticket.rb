Given /there is a project 'project1'/ do
  @p1 = Factory(:project,:name=>'project1')
end

And /I am on the page showing 'project1'/ do
  visit(project_path(@p1))
end

And /I click 'new ticket'/ do
  click_link('new ticket')
end

Then /I should be directed to new ticket page/ do
  current_path.should == new_project_ticket_path(@p1)
end

And /I fill Title with 'title1' and Description with 'des1'/ do
  fill_in('ticket[title]',:with=>'title1')
  fill_in('ticket[description]',:with=>'des1')
end

And /I submit/ do
  click_button('submit')
end

Then /a new ticket should be appended to 'project1'/ do
  @p1.tickets.where(:title=>'title1').size.should == 1
end

And /I should be redirected to page showing the new created ticket/ do
  t1 = @p1.tickets.where(:title=>'title1').first
  current_path.should == project_ticket_path(@p1,t1)
end

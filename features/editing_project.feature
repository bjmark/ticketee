Feature: Editing project
	Scenario:Editing and update a project
		Given there is a project named 'project1'
		And I am on the page for showing 'project1'
		And I follow the 'edit' link
		And I should be on the page for editing 'project1'
		And I change the name from 'project1' to 'project2'
		And I submit
		And the project.name should be 'project2'
		And I should be on page for showing  'project2'


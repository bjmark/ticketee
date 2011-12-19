Feature: Deleting project
	Scenario:Delet a project
		Given there is a project 'project1'
		And I am on the page for showing 'project1'
		And I click the delete button
		Then the 'project1' should be deleted
		And I should be redirected to list projects page

Feature: Creating ticket
	Scenario:Creating ticket for a given project
		Given there is a project 'project1'
		And I am on the page showing 'project1'
		And I click 'new ticket'
		Then I should be directed to new ticket page
		And I fill Title with 'title1' and Description with 'des1'
		And I submit
		Then a new ticket should be appended to 'project1'
		And I should be redirected to page showing the new created ticket

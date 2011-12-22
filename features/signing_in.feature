Feature: Signing_in
	Scenario: Signing_in via confirmation
		Given there is a user:user@ticketee.com
		And the user open email with subject "Confirmation instructions"
		And he click the first link in the email
		Then he should see "Your account was successfully confirmed"
		And he shoud see "Sign in as user@ticketee.com"


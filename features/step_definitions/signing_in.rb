Given /there is a user:user@ticketee\.com/ do
  @user = User.create(:email=>'user@ticketee.com',:password=>'passowrd')
end

And /the user open email with subject "Confirmation instructions"/ do
  pending
end

And /he click the first link in the email/ do
  pending
end

Then /he should see "Your account was successfully confirmed"/ do
  pending
end

And /he shoud see "Sign in as user@ticketee.com"/ do
  pending
end


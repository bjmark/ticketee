require 'spec_helper'

describe ProjectsController do
  let(:user) { Factory(:user) }

  it "displays an error for missing project" do
    get :show,:id=>'not-here'
    response.should redirect_to(projects_path)
    message = "The project you were looking for could not be found"
    flash[:alert].should eql(message)
  end

  context "standard users" do 
    it "can not access the new action" do
      sign_in(:user,user)
      get :new
      response.should redirect_to(root_path)
      flash[:alert].should eql("You must be an admin to do that")
    end
  end
end

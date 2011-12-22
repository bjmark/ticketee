require 'spec_helper'

describe Admin::UsersController do
  let(:user){ Factory(:user)}

  context "standard users" do
    before{ sign_in(:user,user)}

    it "should not see the index page" do
      get :index
      response.should redirect_to(root_path)
      flash[:alert].should eql('You must be an admin to do that')
    end
  end

end

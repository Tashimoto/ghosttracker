require 'rails_helper'

RSpec.describe UsersController, :type => :controller do

  #render views

  it "should return new view for new method" do

    get :new

    expect(response).to render_template(:new)
  end

  it "should return create view for create method" do

    post :create, user: FactoryGirl.attributes_for(:valid_user)
    redirect_to user_path(FactoryGirl.build_stubbed(:valid_user)) #stubbing is creating a fake object. FactoryGirl gave it an id as if it had been created.
    
  end



end

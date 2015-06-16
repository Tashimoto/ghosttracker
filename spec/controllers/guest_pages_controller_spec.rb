require 'rails_helper'

RSpec.describe GuestPagesController, :type => :controller do

  it "should return home view for home method" do

    get :home

    expect(response).to render_template(:home)
  end

end

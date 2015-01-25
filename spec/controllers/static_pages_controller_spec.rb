require 'rails_helper'

RSpec.describe StaticPagesController, :type => :controller do

  describe "GET subway" do
    it "returns http success" do
      get :subway
      expect(response).to be_success
    end
  end

end

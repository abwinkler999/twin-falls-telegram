require 'rails_helper'

RSpec.describe PersonalsController, :type => :controller do

  describe "GET delete" do
    it "returns http success" do
      get :delete
      expect(response).to be_success
    end
  end

end

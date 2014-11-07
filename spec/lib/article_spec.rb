require "rails_helper"

describe Article do
	context "when a user is logged in" do
		it "can be created" do
			subject.title = "Test article for RSpec"
			subject.text = "Some lorem ipsum text"
			successful_save = subject.save
			expect(successful_save).to be_truthy
		end
	end

	context "when a user is not logged in" do
		it "cannot be created" do
			subject.title = "Test article for RSpec"
			subject.text = "Some lorem ipsum text"
			successful_save = subject.save
			expect(successful_save).to be_falsey
		end
	end
end
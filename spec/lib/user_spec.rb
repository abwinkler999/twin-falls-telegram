require "rails_helper"

describe User do
	it "can create a new user" do
		subject.password = "cool_password"
		subject.name = "Bob Foobar"
		subject.email = "nobody@nowhere.com"
		successful_save = subject.save
		expect(successful_save).to be_truthy
	end
end


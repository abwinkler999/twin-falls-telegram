require "rails_helper"

describe User do
	it "can create a new user" do
		boop = User.count
		foo = User.new
		foo.password = "cool_password"
		foo.name = "Bob Foobar"
		foo.email = "nobody@nowhere.com"
		successful_save = foo.save
		expect(successful_save).to be_truthy
	end
end


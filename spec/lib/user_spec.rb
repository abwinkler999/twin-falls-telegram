require "rails_helper"

describe User do
	it "can create a new user" do
		boop = User.count
		foo = User.new
		foo.password = "cool_password"
		foo.name = "Bob Foobar"
		foo.email = "nobody@nowhere.com"
		foo.save
		#foo.save.should == true
		puts User.find_by(name: "Bob Foobar").name
		expect(User.find_by(name: "Bob Foobar")).not_to eq(nil)
		#User.where(name: "Bob Foobar").count.should == 1
	end
end

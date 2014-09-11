require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the MessageHelper. For example:
#
# describe MessageHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
describe MessageHelper do

  describe "status_read" do
    before do
       @sender = User.create!(:first_name => Faker::Name.first_name, :password => "password",
        :last_name => Faker::Name.last_name, :email => Faker::Internet.email,
        :password_confirmation => "password", :username => "joejoe", :preference => "Male")

        @receiver = User.create!(:first_name => Faker::Name.first_name, :password => "password",
        :last_name => Faker::Name.last_name, :email => Faker::Internet.email,
        :password_confirmation => "password", :username => "lacey", :preference => "Female")
    end
    context "read" do
      before do
        @message = Message.create!(:read => true, :body => "this is the body", :sender => @sender, :receiver => @receiver)
      end

      it "should return read" do
        expect(status_read(@message)).to eq("read")
      end
    end

    context "unread" do
      before do
        @message = Message.create!(:read => false, :body => "this is the body", :sender => @sender, :receiver => @receiver)
      end

      it "should return unread" do
        expect(status_read(@message)).to eq("unread") 
      end
    end
  end
end

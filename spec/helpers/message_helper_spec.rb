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

    context "read" do
      before do
        @message = Message.create!(:read => true, :body => "this is the body")
      end

      it "should return read" do
        expect(status_read(@message)).to eq("read")
      end
    end

    context "unread" do
      before do
        @message = Message.create!(:read => false, :body => "this is the body")
      end

      it "should return unread" do
        expect(status_read(@message)).to eq("unread") 
      end
    end
  end
end

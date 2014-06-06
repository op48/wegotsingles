require "spec_helper"

describe Notifications, :type => :mailer do
  describe "welcome" do
    let(:mail) { Notifications.welcome(@user)}

    it "renders the headers" do
      expect(mail.subject).to eq("Hi Joe ;)")
      expect(mail.to).to eq(["joe@example.com"])
      expect(mail.from).to eq(["lola@wegotsingles.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi Joe, thanks for joining us. Can't wait to start talking xx")
    end
  end

  describe "show message" do
  	before do
  	  @first_name = Faker::Name.first_name
  	  @sender_email = Faker::Internet.email
      @receiver_email = Faker::Internet.email

  	  @sender = User.create!(:first_name => @first_name, :password => "password",
  	    :last_name => Faker::Name.last_name, :email => @sender_email,
  	    :password_confirmation => "password", :username => "joejoe", :preference => "Male")

      @receiver = User.create!(:first_name => @first_name, :password => "password",
        :last_name => Faker::Name.last_name, :email => @receiver_email,
        :password_confirmation => "password", :username => "Lola", :preference => "Female")

  	  @messages = Message.create!(:sender => @sender, :receiver => @receiver, 
        :subject => "New Message", 
        :body => "#{@first_name} you have a message, click the link below to view")
  		@mail = Notifications.new_message(@messages)
  	end

  	it "renders the sent message" do
  		expect(@mail.body.encoded).to match(/#{@first_name}/)
    	expect(@mail.body.encoded).to match(/You have a message, click the link below/)
    end

    it "renders the link to the message" do
      expect(@mail.body.encoded).to match(/http:\/\/localhost:3000\/messages\/#{@messages.id}/)
    end

  end
end

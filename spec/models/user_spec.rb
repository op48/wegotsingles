require 'spec_helper'

describe User do
  it { should have_many(:messages) }
  
  it { should validate_uniqueness_of(:username) }
  it { should validate_presence_of(:username) }
  
  it { should validate_presence_of(:preference) }

  describe "imperial height" do
    
    before do 
      @user = User.new
    end

    context "storing as metric" do
      before do
        @user.imperial_height = "6' 2"
      end

      it "should store the height as metric" do
        expect(@user.height).to eq(187.96)
      end 
    end
    
    context "retrieving from metric" do
      before do
        @user.height = 187.96
      end

      it "should convert the height as imperial" do
        expect(@user.imperial_height).to eq("6' 2")
      end 
    end

  end
end



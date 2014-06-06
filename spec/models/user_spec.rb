require 'spec_helper'

describe User do
  it { should have_many(:user_ethnicities) }
  it { should have_many(:ethnicities).through(:user_ethnicities) }
  it { should have_many(:messages) }
  
  it { should validate_uniqueness_of(:username) }
  it { should validate_presence_of(:username) }

  
  it { should validate_presence_of(:preference) }

  it { should have_many(:user_languages) }
  it { should have_many(:languages).through(:user_languages) }

  it { should have_many(:user_horoscopes) }
  it { should have_many(:horoscopes).through(:user_horoscopes) }
end

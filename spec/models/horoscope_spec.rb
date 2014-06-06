require 'spec_helper'

describe Horoscope do
  it { should have_many(:user_horoscopes) }
  it { should have_many(:users).through(:user_horoscopes) }
end

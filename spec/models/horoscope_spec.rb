require 'spec_helper'

describe Horoscope do
  it { should have_many(:users) }
end

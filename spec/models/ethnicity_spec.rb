require 'spec_helper'

describe Ethnicity do
  it {should have_many(:user_ethnicities)}
  it {should have_many(:users).through(:user_ethnicities)}
end

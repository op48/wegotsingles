require 'spec_helper'

describe Language do
  it { should have_many(:user_languages) }
  it { should have_many(:users).through(:user_languages) }
end

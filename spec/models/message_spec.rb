require 'spec_helper'

describe Message do
  it { should belong_to(:user) }
  it { should have_many(:replies) }
  it { should belong_to(:original_message) }
end

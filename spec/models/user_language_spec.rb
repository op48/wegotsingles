require 'spec_helper'

describe UserLanguage do
  it { should belong_to(:user) }
  it { should belong_to(:language) }
end

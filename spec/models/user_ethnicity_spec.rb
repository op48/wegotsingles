require 'spec_helper'

describe UserEthnicity do
  it{should belong_to(:user)}
  it{should belong_to(:ethnicity)}
end

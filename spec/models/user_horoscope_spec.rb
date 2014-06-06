require 'spec_helper'

describe UserHoroscope do
  it { should belong_to(:user) }
  it { should belong_to(:horoscope) }
end

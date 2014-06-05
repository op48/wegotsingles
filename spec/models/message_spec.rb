require 'spec_helper'

describe Message do
  it { should have_many(:replies) }
  it { should belong_to(:original_message) }
  it { should belong_to(:sender).class_name('User').with_foreign_key('sender_id') } 
  it { should belong_to(:receiver).class_name('User').with_foreign_key('recipient_id') } 
end

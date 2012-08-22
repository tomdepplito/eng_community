require 'spec_helper'

describe Response do
  it { should belong_to :user }
  it { should validate_presence_of :inquiry_id }
  it { should validate_presence_of :body }
end

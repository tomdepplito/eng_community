require 'spec_helper'

describe Inquery do
  it { should belong_to :user }
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :body }
end

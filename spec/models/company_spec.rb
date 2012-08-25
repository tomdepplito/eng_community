require 'spec_helper'

describe Company do
  it { should have_many(:employees) }
  it { should validate_presence_of :admin_id }
  it { should validate_presence_of :name }
end

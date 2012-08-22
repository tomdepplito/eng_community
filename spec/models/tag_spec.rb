require 'spec_helper'

describe Tag do
  it { should belong_to :product }
  it { should validate_presence_of :description }
end

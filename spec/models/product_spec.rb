require 'spec_helper'

describe Product do
  it { should belong_to :company }
  it { should validate_presence_of :company_id }
  it { should validate_presence_of :description }
  it { should validate_presence_of :part_number }
  it { should validate_presence_of :price }
end

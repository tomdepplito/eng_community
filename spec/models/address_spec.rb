require 'spec_helper'

describe Address do
  it { should belong_to :company }
  it { should validate_presence_of :street_address }
  it { should validate_presence_of :company_id }
  it { should validate_presence_of :state }
  it { should validate_presence_of :zip }
end

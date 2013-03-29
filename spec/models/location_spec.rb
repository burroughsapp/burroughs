require 'spec_helper'

describe Location do
  it { should have_many(:establishments).through(:existences) }
  it { should validate_presence_of :address }
end

require 'spec_helper'

describe Establishment do
  it { should have_many(:locations).through(:existences) }
  it { should validate_presence_of :name }
end

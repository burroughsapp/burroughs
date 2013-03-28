require 'spec_helper'

describe Location do
  it { should validate_presence_of :address }
end

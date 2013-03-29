require 'spec_helper'

describe Existence do
  it { should belong_to :establishment }
  it { should belong_to :location }
end

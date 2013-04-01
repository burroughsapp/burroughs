require 'spec_helper'

describe Building do
  it { should validate_presence_of :name }
  it { should have_many(:locations) }
  it { should have_many(:existences).through(:locations) }

  describe '.fullname' do
    it 'only displays a name when no years are known' do
      building = Building.new(name: 'Carnegie Building')
      expect(building.fullname).to eq 'Carnegie Building'
    end

    it 'only displays a start year when no end year is known' do
      building = Building.new(name: 'Carnegie Building', start_year: 1904)
      expect(building.fullname).to eq 'Carnegie Building (1904)'
    end

    it 'displays a question mark for start year when no end year is known' do
      building = Building.new(name: 'Carnegie Building', end_year: 2012)
      expect(building.fullname).to eq 'Carnegie Building (?-2012)'
    end

    it 'displays a complete date range when both years are known' do
      building = Building.new(name: 'Carnegie Building',
        start_year: 1904, end_year: 2012)
      expect(building.fullname).to eq 'Carnegie Building (1904-2012)'
    end
  end

end

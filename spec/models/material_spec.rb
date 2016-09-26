require 'rails_helper'

RSpec.describe Material, type: :model do
  xit 'is not valid material with clock of less than 15 characters' do
    material = Material.new(clock: "WNP/SWCL001/01")
    expect(material).to have(1).error_on(:clock)
    expect(material).not_to be_valid
  end

  xit 'is not valid material with duplicated clock' do
    material1 = Material.create(clock: "WNP/SWCL001/010")
    material2 = Material.new(clock: "WNP/SWCL001/010")
    expect(material2).to have(1).error_on(:clock)
    expect(material2).not_to be_valid
  end
end

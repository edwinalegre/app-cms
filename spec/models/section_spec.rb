require 'rails_helper'

RSpec.describe Section, type: :model do
  it 'has a valid factory' do
    section = build(:section)
    expect(section).to be_valid
  end
  it 'has a valid model' do
    section = build(:section)
    expect(section).to be_valid
  end
  it 'is invalid without a name' do
    section = build(:section, name: nil)
    section.valid?
    expect(section.errors).to have_key(:name)
  end
  it 'is invalid without a content' do
    section = build(:section, content: nil)
    section.valid?
    expect(section.errors).to have_key(:content)
  end
  it 'is invalid without a position' do
    section = build(:section, position: nil)
    section.valid?
    expect(section.errors).to have_key(:position)
  end
end

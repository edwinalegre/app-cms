require 'rails_helper'

RSpec.describe Website, type: :model do
  it 'has a valid factory' do
    website = build(:website)
    expect(website).to be_valid
  end
  it 'has a valid model' do
    website = build(:website)
    expect(website).to be_valid
  end
  it 'is invalid without a name' do
    website = build(:website, name: nil)
    website.valid?
    expect(website.errors).to have_key(:name)
  end
  it 'is invalid without a theme' do
    website = build(:website, theme: nil)
    website.valid?
    expect(website.errors).to have_key(:theme)
  end
end

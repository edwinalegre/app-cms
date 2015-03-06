require 'rails_helper'

RSpec.describe Page, type: :model do
  it 'has a valid factory' do
    page = build(:page)
    expect(page).to be_valid
  end
  it 'has a valid model' do
    page = build(:page)
    expect(page).to be_valid
  end
  it 'is invalid without a name' do
    page = build(:page, name: nil)
    page.valid?
    expect(page.errors).to have_key(:name)
  end
  it 'is invalid without a link' do
    page = build(:page, link: nil)
    page.valid?
    expect(page.errors).to have_key(:link)
  end
  it 'is invalid without a position' do
    page = build(:page, position: nil)
    page.valid?
    expect(page.errors).to have_key(:position)
  end
end

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has a valid factory' do
    user = build(:user)
    expect(user).to be_valid
  end
  it 'has a valid model' do
    user = build(:user)
    expect(user).to be_valid
  end
  it 'is invalid without a firstname' do
    user = build(:user, firstname: nil)
    user.valid?
    expect(user.errors).to have_key(:firstname)
  end
  it 'is invalid without a lastname' do
    user = build(:user, lastname: nil)
    user.valid?
    expect(user.errors).to have_key(:lastname)
  end
  it 'is invalid with a password of less than 6 characters' do
    user = build(:user, password: 'abcde', password_confirmation: 'abcde')
    user.valid?
    expect(user.errors[:password]).to include('is too short (minimum is 6 characters)')
  end
  it 'is invalid without a matching password_confirmation' do
    user = build(:user, password: 'abc-123', password_confirmation: 'xyz-789')
    user.valid?
    expect(user.errors[:password_confirmation]).to include("doesn't match Password")
  end
  it 'is invalid with a duplicate email regardless of capitalization' do
    user = create(:user, email: 'ken@smith.com')
    new_user = build(:user, email: 'Ken@smith.com')
    expect(new_user).to be_invalid
  end
  # it 'is invalid without a valid email format' do
  #   emails = ['abc', 'abc123@abc.a', '@some.com']
  #   emails.each do |e|
  #     user = build(:user, email: e)
  #     expect(user).to be_invalid
  #   end
  # end
end

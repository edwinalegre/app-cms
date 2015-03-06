FactoryGirl.define do
  factory :user do
    firstname               { Faker::Name.name }
    lastname                { Faker::Name.name }
    email                   { Faker::Internet.email }
    password               'abc-123'
    password_confirmation  'abc-123'
  end

end

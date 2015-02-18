FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password "password"
    password_confirmation "password"
    after(:build) do |user|
      user.profile ||= FactoryGirl.build(:profile, user: user)
    end
  end
end
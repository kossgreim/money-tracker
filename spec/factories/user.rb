FactoryGirl.define do
  factory :user do
    name { FFaker::Name.first_name }
    last_name { FFaker::Name.last_name }
    email { FFaker::Internet.email }
    password '134t523455'
    password_confirmation '134t523455'
    confirmed_at { DateTime.now }

    after(:build) do |u|
     u.confirm
     u.skip_confirmation_notification!
   end
  end
end

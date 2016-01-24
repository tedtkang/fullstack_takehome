FactoryGirl.define do
  factory :user do
    name { FFaker::Name.name }
    factory :user_with_videos do
      after(:create) {|instance| create_list(:video, 5, user: instance) }
    end    
  end
end

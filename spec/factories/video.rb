FactoryGirl.define do
  factory :video do
    title { FFaker::HipsterIpsum.words(4).join(' ') }
    factory :videos_with_user do
      after(:create) {|instance| create_list(:user, 5, video: instance) }  
    end
  end
end

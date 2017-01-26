FactoryGirl.define do
  factory :post do
    body { Faker::Lorem.sentence }
    
    factory :post_with_user do
     after(:build) do |post|
       user = FactoryGirl.build(:user)
       user.posts << post
       user.save
       post.user_owner ||= user
      end 
    end
  end
end
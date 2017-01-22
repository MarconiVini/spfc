FactoryGirl.define do
  factory :post do
    body { Faker::Lorem.paragraphs }
    
    factory :post_with_owner do
     after(:build) do |post|
       user = FactoryGirl.build(:user)
       user.posts << post
       user.save
       post.owner ||= user
      end 
    end
  end
end
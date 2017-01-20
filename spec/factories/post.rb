FactoryGirl.define do
  factory :post do
    body { Faker::Lorem.paragraphs }
    
    #after(:create) do |post|
    #  user = FactoryGirl.build(:user)
    #  user.posts << post
    #  user.save
    #  post.owner ||= user
    #end
  end
end
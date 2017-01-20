FactoryGirl.define do
  factory :admin do
    body { Faker::Lorem.paragraphs }
  end
end
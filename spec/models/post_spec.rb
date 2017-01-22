require 'rails_helper'

RSpec.describe Post, :type => :model do 
  let(:post_build) { build(:post) }
  let(:post_with_owner) { build(:post_with_owner) }
  let(:user) { create(:user) }
  let(:post) { create(:post) }
  
  it 'have a body text' do
    text = "hooo new post"
    post_with_owner.body = text
    post_with_owner.save!
    expect(post_with_owner.body).to eq text
  end

  it 'belongs to a user' do
    post_build.owner = user
    post_build.save!
    expect(post_build.owner).to eq user
  end
end
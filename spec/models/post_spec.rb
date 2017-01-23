require 'rails_helper'

RSpec.describe Post, :type => :model do 
  let(:post_build) { build(:post) }
  let(:post_with_owner) { build(:post_with_user) }
  let(:user) { create(:user) }
  let(:admin) { create(:admin) }
  
  it 'have a body text' do
    text = "hooo new post"
    post_with_owner.body = text
    post_with_owner.save!
    expect(post_with_owner.body).to eq text
  end

  it 'belongs only to a user' do
    post_build.user_owner = user
    post_build.save!
    expect(post_build.user_owner).to eq user
    expect(post_build.owner).to eq user
    expect(post_build.adm_owner).to eq nil
  end

  it 'belongs only to a adm' do
    post_build.adm_owner = admin
    post_build.save!
    expect(post_build.owner).to eq admin
    expect(post_build.adm_owner).to eq admin
    expect(post_build.user_owner).to eq nil
  end
end
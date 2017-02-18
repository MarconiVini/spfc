require 'rails_helper'

RSpec.describe Post, :type => :model do 
  let(:post_build) { build(:post) }
  let(:post_with_owner) { build(:post_with_user) }
  let(:user) { create(:user) }
  let(:admin) { create(:admin) }
  let(:title) { "Rogério o salvador daqui !" }
  
  it 'have a body text' do
    text = "hooo new post"
    post_with_owner.body = text
    post_with_owner.save!
    expect(post_with_owner.body).to eq text
  end

  it 'have a title' do
    post_build.title = title
    post_build.save!
    expect(post_build.title).to eq title
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

  it 'generates slug for url' do
    post_build.title = title
    post_build.save!
    expect(post_build.slug).to eq "rogerio-o-salvador-daqui"
  end

  it 'can be searched by slug' do
    post_build.title = title
    post_build.save!
    expect(Post.find post_build.slug).to eq post_build
  end
end
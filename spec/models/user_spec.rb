require 'rails_helper'

RSpec.describe User, :type => :model do
  let(:user) { create(:user) }
  xit 'creates a user' do
    binding.pry
    expect(subject).to eq user
  end

end
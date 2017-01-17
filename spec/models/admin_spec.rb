require 'rails_helper'

RSpec.describe Admin, :type => :model do
  it_behaves_like "a User"

  #it "test" do
    #is_expected.to validates_presence_of :name
  #  expect(subject).to validate_presence_of :name
  #end
end

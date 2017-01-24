require 'rails_helper'

RSpec.describe "Admin Post Flow", type: :request do
  describe "GET /admin_post" do
    let(:post_list) { create_list(:post, 11) }
    let(:admin) { create(:admin) }

    it "get all posts" do
      sign_in(admin)
      get admin_posts_path
      expect(response).to have_http_status(200)
      binding.pry
    end
  end
end

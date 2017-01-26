require 'rails_helper'

RSpec.describe "Admin Post Flow", type: :request do
  describe "GET /admin_post" do
    let!(:post_list) { create_list(:post, 11) }
    let(:admin) { create(:admin) }

    before(:each) do
      sign_in(admin)      
    end

    it "get all posts" do
      get admin_posts_path
      expect(response).to have_http_status(200)
      expect(response.body).to include(post_list[0].body)
    end

    it "should list only 10 records" do
      get admin_posts_path
      expect(response).to have_http_status(200)
      expect(response.body).not_to include(post_list[10].body)
    end
  end
end

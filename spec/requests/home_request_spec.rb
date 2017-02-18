require 'rails_helper'

RSpec.describe "Home request flow", type: :request do
  describe "GET /root_path" do
    let!(:post_list) { create_list(:post, 3) }

    it "get all posts" do
      get root_path
      expect(response).to have_http_status(200)
      expect(response.body).to include(post_list[0].body)
      expect(response.body).to include(post_list[1].body)
      expect(response.body).to include(post_list[].body)
    end
  end
end

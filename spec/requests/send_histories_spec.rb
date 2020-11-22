require 'rails_helper'

RSpec.describe "SendHistories", type: :request do
  describe "GET /send_histories" do
    it "works! (now write some real specs)" do
      get send_histories_path
      expect(response).to have_http_status(200)
    end
  end
end

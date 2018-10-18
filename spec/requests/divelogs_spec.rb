require 'rails_helper'

RSpec.describe "Divelogs", type: :request do
  describe "GET /divelogs" do
    it "works! (now write some real specs)" do
      get divelogs_path
      expect(response).to have_http_status(200)
    end
  end
end

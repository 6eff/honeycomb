require 'rails_helper'

RSpec.describe "Broadcasters", type: :request do
  describe "GET /broadcasters" do
    it "works! (now write some real specs)" do
      get broadcasters_path
      expect(response).to have_http_status(200)
    end
  end
end

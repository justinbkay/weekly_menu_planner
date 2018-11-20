require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      user = double('user')
      allow(request.env['warden']).to receive(:authenticate!).and_return(user)
      allow(controller).to receive(:current_user).and_return(user)

      get :index
      expect(response).to have_http_status(:success)
    end
  end

end

require 'rails_helper'

RSpec.describe RecipesController, type: :controller do

  before(:each) do
    @user = create(:user)
    allow(request.env['warden']).to receive(:authenticate!).and_return(@user)
    allow(controller).to receive(:current_user).and_return(@user)
  end

  describe "GET #index" do
    it 'returns http success' do
      allow(@user.recipes).to receive(:build) { double('recipe') }

      get :index, params: { user_id: 1 }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new, params: { user_id: 1 }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      recipe = create(:recipe, user: @user)
      get :edit, params: { user_id: recipe.user_id, id: recipe.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      recipe = create(:recipe, user: @user)
      get :show, params: { user_id: @user.id, id: recipe.id }
      expect(response).to have_http_status(:success)
    end
  end

end

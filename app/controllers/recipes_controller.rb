class RecipesController < ApplicationController
  before_action :authenticate_user!

  def new
    @recipe = current_user.recipes.build
  end

  def edit
  end

  def show
  end
end

require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it 'must have a name' do
    recipe = Recipe.new
    recipe.validate
    expect(recipe.errors[:name]).to include("can't be blank")
  end
end

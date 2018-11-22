require 'rails_helper'

RSpec.describe Meal, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:recipe) }

  it { should validate_presence_of :cal_date }
  it { should validate_presence_of :type }

  it 'should only allow 1 meal type per day' do
    user = create(:user)
    recipe = create(:recipe, user: user)
    meal = create(:meal, user: user, recipe: recipe)
    meal2 = build(:meal, user: user, recipe: recipe)
    expect(meal2.valid?).to eq(false)
    expect(meal2.errors[:user_id]).to include("has already been taken")
  end
end

FactoryBot.define do
  factory :meal do
    recipe { create(:recipe_with_user) }
    user { recipe.user }
    cal_date { "2018-11-22" }
    type { 1 }

  end
end

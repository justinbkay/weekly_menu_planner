FactoryBot.define do
  factory(:recipe) do
    name { "Tacos" }

    factory :recipe_with_user do
      before(:create) do |recipe|
        recipe.user = create(:user)
      end
    end
  end

end
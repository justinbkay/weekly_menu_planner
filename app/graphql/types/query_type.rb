class QueryType < GraphQL::Schema::Object
  description "The query root of this schema"

  field :recipe, RecipeType, null: true do
    description 'Find a recipe by ID'
    argument :id, ID, required: true
  end

  field :recipes, RecipeType, null: true do
    description 'Find all recipes'
  end

  def recipe(id:)
    Recipe.find(id)
  end

  def recipes
    Recipe.all
  end
end
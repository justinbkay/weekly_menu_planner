module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, Types::StringType, null: false
    field :first_name, Types::StringType, null: false
    field :last_name, Types::StringType, null: false
    field :recipies, [Types::RecipeType], null: true
  end
end

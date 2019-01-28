module Types
  class RecipeType < Types::BaseObject
    field :id, ID, null: false
    field :name, Types::StringType, null: true
    field :user, [Types::UserType], null: true
    field :ingredients, Types::TextType, null: true
    field :steps, Types::TextType, null: true
    field :description, Types::TextType, null: true
    field :updated_at, Types::DatetimeType, null: true
    field :created_at, Types::DatetimeType, null: true
  end
end

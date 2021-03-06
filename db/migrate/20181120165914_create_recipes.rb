class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.references :user, foreign_key: true, index: true
      t.text :ingredients
      t.text :steps
      t.text :description

      t.timestamps
    end
  end
end

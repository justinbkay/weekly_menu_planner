class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.references :user, foreign_key: true
      t.references :recipe, foreign_key: true
      t.date :cal_date, null: false
      t.integer :type, null: false

      t.timestamps
    end
    add_index(:meals, [:user_id, :cal_date, :type], unique: true)
  end
end

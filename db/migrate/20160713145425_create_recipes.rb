class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.string :difficulty_level, null: false
      t.text :directions, null: false
      t.text :description, null: false
      t.string :creator, null: false
      t.integer :servings, null: false
      t.references :category, index: true
      t.references :user, index: true
      t.integer :prep_time_hours
      t.integer :prep_time_min

      t.timestamps null: false
    end
  end
end

class CreateRecipeIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :recipe_ingredients do |t|
      t.references :recipe, index: true
      t.references :ingredient, index: true
      t.references :measurement, index: true
      t.float :quantity, null: false

      t.timestamps
    end
  end
end

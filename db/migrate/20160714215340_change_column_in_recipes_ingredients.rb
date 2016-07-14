class ChangeColumnInRecipesIngredients < ActiveRecord::Migration[5.0]
  def change
    change_column :recipe_ingredients, :quantity, :string, :null => false
  end
end

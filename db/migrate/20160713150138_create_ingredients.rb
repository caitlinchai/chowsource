class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name, null: false
      t.string :measurement, null: false
      t.references :recipe, index: true

      t.timestamps null: false
    end
  end
end

class AddPrepTimeNumberToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :prep_time_unit, :float
  end
end

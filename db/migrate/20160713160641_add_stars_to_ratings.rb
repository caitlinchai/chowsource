class AddStarsToRatings < ActiveRecord::Migration[5.0]
  def change
    add_column :ratings, :stars, :float, null:false
  end
end

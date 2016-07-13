class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :user, index: true, null: false
      t.references :recipe, index: true, null: false
      t.timestamps null: false

    end
  end
end

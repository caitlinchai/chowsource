class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null:false
      t.string :email, null:false
      t.string :password_digest, null:false
      t.string :location, null:false
      t.text :about, null:false

      t.timestamps null: false
    end
  end
end

class RemoveConstraintsFromUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :about, :string, :null => true
    change_column :users, :location, :string, :null => true
  end
end

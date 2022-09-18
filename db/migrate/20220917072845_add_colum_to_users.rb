class AddColumToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :users, :string
    add_column :users, :jti, :string
  end
end

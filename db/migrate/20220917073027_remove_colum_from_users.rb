class RemoveColumFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :users, :string
  end
end

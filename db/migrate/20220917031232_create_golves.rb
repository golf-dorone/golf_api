class CreateGolves < ActiveRecord::Migration[6.1]
  def change
    create_table :golves do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end

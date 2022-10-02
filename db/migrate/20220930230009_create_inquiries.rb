class CreateInquiries < ActiveRecord::Migration[6.1]
  def change
    create_table :inquiries do |t|
      t.string :title
      t.string :description
      t.string :name
      t.string :contact

      t.timestamps
    end
  end
end

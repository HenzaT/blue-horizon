class CreateYachts < ActiveRecord::Migration[7.1]
  def change
    create_table :yachts do |t|
      t.string :name
      t.string :model
      t.text :description
      t.integer :size
      t.integer :price

      t.timestamps
    end
  end
end

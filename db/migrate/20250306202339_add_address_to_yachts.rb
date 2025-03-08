class AddAddressToYachts < ActiveRecord::Migration[7.1]
  def change
    add_column :yachts, :address, :string
  end
end

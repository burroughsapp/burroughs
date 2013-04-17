class AddAddressToExistence < ActiveRecord::Migration
  def change
    add_column :existences, :address, :string
  end
end

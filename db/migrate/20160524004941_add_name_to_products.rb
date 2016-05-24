class AddNameToProducts < ActiveRecord::Migration
  def change
    add_column :products, :name, :string, default: "temp_name"
  end
end

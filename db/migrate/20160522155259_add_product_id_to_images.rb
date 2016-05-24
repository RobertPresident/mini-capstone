class AddProductIdToImages < ActiveRecord::Migration
  def change
    add_column :images, :product_id, :integer
    remove_column :images, :string, :string 
  end
end

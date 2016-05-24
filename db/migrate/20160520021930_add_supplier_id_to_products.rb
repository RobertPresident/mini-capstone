class AddSupplierIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :supplier_id, :integer, default: 1
  end
end

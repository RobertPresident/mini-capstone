class AddCategorizedProductsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :categorized_products, :string
  end
end

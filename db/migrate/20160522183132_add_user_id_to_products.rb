class AddUserIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :user_id, :integer, default: 1
    remove_column :products, :name, :string
  end
end

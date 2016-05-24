class AddSomethingToProducts < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.string :stock
    end
  end
end

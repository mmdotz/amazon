class RemoveItemQtyAndIdFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :item_qty
    remove_foreign_key :orders, :items
  end
end

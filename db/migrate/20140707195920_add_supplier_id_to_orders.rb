class AddSupplierIdToOrders < ActiveRecord::Migration
  def change
    add_column :spree_orders, :products_id, :integer
  end
end

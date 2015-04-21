class AddSupplierIdToOrders < ActiveRecord::Migration
  def change
    add_column :spree_orders, :product_id, :integer
  end
end

class AddSupplierIdToOrders < ActiveRecord::Migration
  def change
    add_column :spree_orders, :supplier_id, :integer
  end
end

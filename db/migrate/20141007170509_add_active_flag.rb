class AddActiveFlag < ActiveRecord::Migration
  def change
    add_column :spree_suppliers, :active, :boolean, default: false
    add_attachment :spree_suppliers, :logo
    
    Spree::Role.where(name: 'vendor').first_or_create
  end
end

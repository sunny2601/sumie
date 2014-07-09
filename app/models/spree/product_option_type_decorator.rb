Spree::ProductOptionType.class_eval do
  scope :owned, ->(supplier_id){ joins(:products).where('products.supplier_id = ?', supplier_id) }
end
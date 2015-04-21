Spree::Product.class_eval do
  belongs_to :supplier
  belongs_to :order
end

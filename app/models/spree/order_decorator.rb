Spree::Order.class_eval do
  belongs_to :supplier
  has_many :products
end

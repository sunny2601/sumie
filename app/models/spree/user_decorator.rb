Spree::User.class_eval do
  has_one :supplier

  scope :vendors, ->{ joins(:spree_roles).where('spree_roles.name = ?', 'vendor') }
end
class Spree::Supplier < ActiveRecord::Base
  has_many :products

  belongs_to :user
  has_many :supplier_invoices
  has_and_belongs_to_many :taxons
end

class Spree::Supplier < ActiveRecord::Base
  has_many :products

  belongs_to :user
  has_many :supplier_invoices
  has_and_belongs_to_many :taxons

  belongs_to :country

  validates :name, :title, :description, :email, :phone, :country, :user, :city, :address1, :zipcode, presence: true
end

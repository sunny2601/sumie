class Spree::Supplier < ActiveRecord::Base
  has_many :products

  belongs_to :user
  has_many :supplier_invoices
  has_and_belongs_to_many :taxons

  belongs_to :country

  validates :name, :title, :description, :email, :phone, :country, :user, :city, :address1, :zipcode, presence: true


  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/

  scope :active, where(active: true)
end

class Spree::Admin::SuppliersController < Spree::Admin::ResourceController
  def index
    @suppliers = collection
  end

  def new
    @supplier = Spree::Supplier.new
    @users = Spree::User.vendors
  end

  def edit
    @supplier = Spree::Supplier.find(params[:id])
    @users = Spree::User.vendors
  end

  private

  def collection
    @collection = Spree::Supplier.includes([:user]).page(params[:page]).per(params[:per_page])
  end
end

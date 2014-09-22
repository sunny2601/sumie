class Spree::Admin::SuppliersController < Spree::Admin::ResourceController
  def index
    @suppliers = collection
  end

  def new
    @supplier = Spree::Supplier.new
    @users = Spree::User.vendors
    @countries = Spree::Country.all
  end

  def edit
    @supplier = Spree::Supplier.find(params[:id])
    @users = Spree::User.vendors
    @countries = Spree::Country.all
  end

  def create
    params.permit!
    @supplier = Spree::Supplier.new(params[:supplier])
    if @supplier.save
      redirect_to edit_admin_supplier_path(@supplier.id)
    else
      @users = Spree::User.vendors
      @countries = Spree::Country.all
      render 'new'
    end
  end

  private

  def collection
    @collection = Spree::Supplier.includes([:user]).page(params[:page]).per(params[:per_page])
  end
end

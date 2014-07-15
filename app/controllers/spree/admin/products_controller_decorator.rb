Spree::Admin::ProductsController.class_eval do
  before_filter :before_create, only: [:create]
  before_filter :before_index, only: [:index]

  def before_index
    @collection = @collection.where('supplier_id = ?', spree_current_user.supplier.id) if spree_current_user.has_spree_role?('vendor')
  end

  def before_create
    return false if spree_current_user.has_spree_role?('admin')

    params[:product][:supplier_id] = spree_current_user.supplier.id
  end
end

Spree::Admin::OrdersController.class_eval do
  before_filter :before_create, only: [:create]
  before_filter :before_index, only: [:index]

  def before_index
    if spree_current_user.supplier
      @collection = @collection.where('supplier_id = ?', spree_current_user.supplier.id) if spree_current_user.has_spree_role?('vendor')
    end
  end

  def before_create
    if spree_current_user.supplier
      params[:product][:supplier_id] = spree_current_user.supplier.id
    end
  end
end

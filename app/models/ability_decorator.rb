class AbilityDecorator
  include CanCan::Ability

  def initialize(user)
    if user.respond_to?(:has_spree_role?) && user.has_spree_role?('vendor') && user.supplier
      can [:admin, :create], Spree::Product
      can [:admin, :index, :show, :update, :destroy], Spree::Product, supplier_id: user.supplier.id
      can [:admin, :index, :show, :create], Spree::Order

      can [:admin, :create, :index, :show, :update, :destroy], Spree::OptionType

      can [:admin, :manage], Spree::Property
      can [:admin, :manage], Spree::ProductProperty
      can [:admin, :manage], Spree::Variant
      can [:admin, :manage], Spree::Image

      # TO-DO: Check the ability for Stock Managment
    end
  end
end

Spree::Ability.register_ability(AbilityDecorator)

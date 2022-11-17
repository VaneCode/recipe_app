class Ability
  include CanCan::Ability

  def initialize(user)
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/blob/develop/docs/define_check_abilities.md
    user ||= User.new
    can :read, Recipe, public: true
    can :read, RecipeFood
    can :read, InventoryFood
    can :read, Food
    return unless user.present?

    can :manage, RecipeFood
    can :manage, Recipe, user: user
    can :manage, InventoryFood, user: user
    can :manage, Inventory, user: user
    can :manage, Food, user:
  end
end

class Ability
  include CanCan::Ability

  def initialize(user)
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/blob/develop/docs/define_check_abilities.md

    # Unloged users can read all resources

    can :read, :all

    # Logged users can read all post and comments, and destroy their posts and comments

    return unless user.present?

    can :read, :all
    can :manage, Recipe, :user
    can :manage, Inventory, :user
  end
end

class Ability
  include CanCan::Ability

  def initialize(user)
    guest = user.nil?
    user ||= User.new #guest user

    if user.is_admin?
      can :manage, :all
    elsif(guest)
      #can :read, :all
      can :manage, :all
    else
      can :read, :all
      #can :create, Ascent
      #can [:update, :destroy], Ascent, :user => user
    end
  end
end
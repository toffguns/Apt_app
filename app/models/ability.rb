class Ability
  include CanCan::Ability

  def initialize(user)
    if user.nil?
        # if no user logged in, use a dummy user, see later
        user = User.new
    end
    if user.has_role? :admin
        can :manage, :all
    elsif user.has_role? :user
        can :manage, Apartment, user_id: user.id
    else
        # default ability, same as student for now
        can :read, Apartment, user_id: user.id
    end
  end
end

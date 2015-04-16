class Ability
  include CanCan::Ability

  def initialize(user)
      user ||= User.new # guest user (not logged in)
      # if user.admin?
      #   can :manage, :all
      # else
      #   can :read, :all
      # end

      if user.role == "Admin"
        can :manage, :all 
      else user.role == "User"
        can :read, User
        can :manage, User, user_id: user.id 
      end
    end

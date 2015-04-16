class Ability
  include CanCan::Ability

  def initialize(user)
      user ||= User.new # guest user (not logged in)
      # if user.admin?
      #   can :manage, :all
      # else
      #   can :read, :all
      # end

      if user.role == "admin"
        can :manage, :all 
      else user.role == "user"
        # can :read, User 
        can :read, :all
        # can :manage, User, user_id: user.id 
      end
    end

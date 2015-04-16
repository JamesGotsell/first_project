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
        can :destroy, Comment
      # delete comments 
      # delete songs 
      # edit comments 
      # i think that i've got this ability because the admin can manage all 

    else user.role == "user"
        # add comments 
        # add songs 
        #delete song 

        # can :read, User 

        can :read, :all
        can :update, Song, user_id: user.id 
        can :update, Comment, user_id: user.id
        can :create, Song, user_id: user.id
        can :create, Comment do |comment|
          comment.song.user != user.id
        end

        # can :manage, User, user_id: user.id 
      end
    end

  end

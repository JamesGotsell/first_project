class Ability
  include CanCan::Ability
  def initialize(user)
    user ||= User.new 
    if user.role == "admin"
      can :manage, :all 
      can :destroy, Comment
    else user.role == "user"
      can :read, :all
      can :update, Song, user_id: user.id 
      can :update, Comment, user_id: user.id
      can :create, Song, user_id: user.id
      can :create, Comment do |comment|
        comment.song.user != user.id
      end
    end
  end
end

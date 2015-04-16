class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  before_action :authenticate_user!
  # GET /users
  # GET /users.json
  def index

    @search = User.search(params[:q])
    
    # @users = User.all
    
    @users = @search.result

  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

  # def user_params
  #   params.require(:user).permit( :name, :picture, :age, :bio )
  # end
end

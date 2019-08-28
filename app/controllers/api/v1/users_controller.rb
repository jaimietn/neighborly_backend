class Api::V1::UsersController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    user = User.new(user_params)
    if(user.save)
      token = JWT.encode({user_id: user.id}, "secret")
      render json: {token: token, user: user }
    else
      render json: {err: "lol idk"}
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    render json: @user.to_json
  end

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end


  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end


#
#   def create
#     @user = User.create(user_params)
#     if @user.valid?
#       @token = encode_token({ user_id: @user.id })
#       render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
#     else
#       render json: { error: 'failed to create user' }, status: :not_acceptable
#     end
#   end
#

#   #
#   # def show
#   #   @user = User.find(params[:id])
#   #   render json: @user
#   # end
#
#   private
#
#   def user_params
#     params.require(:user).permit(:username, :password, :bio, :avatar)
#   end
# end

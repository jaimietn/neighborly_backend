class Api::V1::UsersController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def create
    user = User.create(user_params)
    token = JWT.encode({user_id: user.id}, "secret")
    render json: {token: token, user: user.username }
  end

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def index
    @users = User.all
    render json: @users
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

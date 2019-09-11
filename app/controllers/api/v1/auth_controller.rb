class Api::V1::AuthController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def retrieve
    token = request.headers["Authorization"]
    user_id = JWT.decode(token, ENV["SECRET_TOKEN"])[0]["user_id"]
    user = User.find(user_id)
    render json: {username: user.username, id: user.id}
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      token = JWT.encode({ user_id: user.id }, ENV["SECRET_TOKEN"])
      render json: { token: token, user: { id: user.id, username: user.username } }
    else
      render json: {err: "something went wrong or username not found or password incorrect or idk"}
    end
  end

  def destroy
  end

end


#   def create
#     @user = User.find_by(username: user_login_params[:username])
#     #User#authenticate comes from BCrypt
#     if @user && @user.authenticate(user_login_params[:password])
#       # encode token comes from ApplicationController
#       token = encode_token({ user_id: @user.id })
#       render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
#     else
#       render json: { message: 'Invalid username or password' }, status: :unauthorized
#     end
#   end
#
#   private
#
#   def user_login_params
#     # params { user: {username: 'Chandler Bing', password: 'hi' } }
#     params.require(:user).permit(:username, :password)
#   end
# end

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

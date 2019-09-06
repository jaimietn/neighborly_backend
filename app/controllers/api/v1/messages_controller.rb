class Api::V1::MessagesController < ApplicationController

  def index
    @messages = Message.all
    render json: @messages
  end

  def show
    @message = Message.find(params[:id])
    render json: @message
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      render json: @message, status: :created, location: @message
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  def update
    @message = Message.find(params[:id])
    @message.update(message_params)
    render json: @message
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
  end

  private

    def message_params
      params.require(:message).permit(:id, :title, :content, :sent, :post_id, :sender_id, :recipient_id)
    end

end

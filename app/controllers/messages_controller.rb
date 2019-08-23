class MessagesController < ApplicationController
  def index
    @messages = Message.all
    @message = Message.new
    @booking = Booking.find(params[:booking_id])
    # @user = User.find(params[:id])
    @myself = current_user
    @owner = @booking.article.user
    @client = @booking.user
  end

  def create
    @message = Message.new
    @booking = Booking.find(params[:booking_id])
    @message.user = current_user
    @message.content = message_params[:content]
    @message.booking = Booking.find(params[:booking_id])
    @message.save!
    redirect_to booking_messages_path(@booking)
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end

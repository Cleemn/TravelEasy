class ConversationsController < ApplicationController
  def show
    @conversation = Conversation.find(params[:id])
    @content = Message.all
    @message = Message.new
    @user = User.find(params[:id])
    @myself = current_user
    # @booking = current_user.bookings
  end
end

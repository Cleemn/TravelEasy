class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @article = Article.find(params[:article_id])
  end

  def create
    @article = Article.find(params[:article_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.article = @article
    @booking.status = "pending"
    if @booking.save
      redirect_to booking_path(@booking)
    else
    # @dose = Dose.new
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @article = Article.find(@booking.article_id)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :article_id)
  end
end

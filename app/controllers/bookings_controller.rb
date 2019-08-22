class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @article = Article.find(params[:article_id])
  end

  def create
    @article = Article.find(params[:article_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.article = @article
    @booking.price = @article.price
    @booking.status = "pending"
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @article = Article.find(@booking.article_id)
  end

  def accept
    @booking = Booking.find(params[:booking_id])
    @booking.status = "accepted"
    @booking.save
    redirect_to dashboard_path
  end

  def decline
    @booking = Booking.find(params[:booking_id])
    @booking.status = "declined"
    @booking.save
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :article_id, :status)
  end
end


# passer la page bookings en prive

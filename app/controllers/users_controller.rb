class UsersController < ApplicationController
  def dashboard
    @articles = current_user.articles
    # tous les articles que j'ai mis en location
    @bookings = current_user.bookings

    if current_user.articles != []
      @pending_bookings_as_owner = []
      current_user.articles.each do |article|
        article.bookings.each do |booking|
          @pending_bookings_as_owner << booking if booking.status == "pending"
        end
      end
    end
    # moi qui ai fait des demandes de location
    @pending_bookings = current_user.bookings.where(status: 'pending')
    # demandes de location auxquelles je n'ai pas encore rep
    # status ne peut s appeler que sur une instance et non un array
    @rented_articles = current_user.bookings.where(status: 'accept')
    # les articles que je loue et qui sont bookes
  end

  # def destroy
  #   @user = current_user
  #   @user.destroy
  #   authorize @user
  #   redirect_to dashboard_path(@user)
  # end

  private

  def user_params
    params.require(:user).permit(:email, :encrypted_password, :first_name, :last_name, :address, :photo)
  end

end
# differents onglets dans le dashboard

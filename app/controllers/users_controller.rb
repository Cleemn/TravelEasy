class UsersController < ApplicationController
  def dashboard
  # as OWNER
    @articles = current_user.articles
    # tous les articles que j'ai mis en location
    # Deux variables dans dashboard : @my_bookings (mes resa en tant que clients) et @my_rentings (mes resas en tant que proprio)
    # Si en tant que user je ne suis pas proprio de user @my_renting est nul sinon on les retrouve via articles
    @bookings = current_user.bookings
    @validated_bookings_as_user = []
    # toutes mes bookings faites en tant qu'user
    @pending_bookings_as_user = current_user.bookings.where(status: 'pending')
    @pending_bookings_as_owner = []
    @validated_bookings_as_owner = []

    if current_user.articles != []
      # @pending_bookings_as_owner = []
      # @validated_bookings_as_owner = []
      current_user.articles.each do |article|
        article.bookings.each do |booking|
          if booking.status == "pending"
            @pending_bookings_as_owner << booking
          else
            @validated_bookings_as_owner << booking
          end
        end
      end
    end

    if current_user.bookings != []
      current_user.bookings.each do |booking|
        @validated_bookings_as_user << booking if booking.status == "accepted"
      end
    end

  # as USER
    # @rented_articles_as_user = current_user.bookings.where(status: 'accept')
    # # les articles que je suis en train de louer

    # @pending_bookings = current_user.bookings.where(status: 'pending')
    # # moi qui ai fait des demandes de location
    # status ne peut s appeler que sur une instance et non un array
  end

  private

  def user_params
    params.require(:user).permit(:email, :encrypted_password, :first_name, :last_name, :address, :photo)
  end

end
# differents onglets dans le dashboard

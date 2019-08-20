class UsersController < ApplicationController
  def dashboard
    @articles = current_user.articles
    # tous les articles que j'ai mis en location
    @bookings = current_user.bookings
    # moi qui ai fait des demandes de location
    @pending_bookings = current_user.bookings.status
    # demandes de location auxquelles je n'ai pas encore rep
    @rented_articles = current_user.articles.bookings
    # les articles que je loue et qui sont bookes
  end
end


# differents onglets dans le dashboard

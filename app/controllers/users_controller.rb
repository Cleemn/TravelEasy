class UsersController < ApplicationController
  def dashboard
    @articles = current_user.articles
    # @bookings = current_user.bookings
  end
end

# faire la logique du booking avant
# User.bookings -> moi qui fais une demande de location
# (la tente que je veux)
#  VS
# les articles que je loue et qui sont bookes
# les bookings de mes articles -> current_user.articles.bookings
# ou truc du genre

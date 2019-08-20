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

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    authorize @user
    redirect_to dashboard_path(@user)
    # ai-je besoin du @user?
  end

  def destroy
    @user = current_user
    @user.destroy
    authorize @user
    redirect_to dashboard_path(@user)
    # ai-je besoin du @user?
  end

  private

  def user_params
    params.require(:user).permit(:email, :encrypted_password, :first_name, :last_name, :address, :photo)
  end

end
# differents onglets dans le dashboard

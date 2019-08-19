class UsersController < ApplicationController

  def dashboard
  @articles = User.articles
    # initier toutes les variables necessaires
    # comme ca dans dashboard on a le necessaire
  end

end
# user_session POST   /users/sign_in(.:format)
# destroy_user_session DELETE /users/sign_out(.:format)

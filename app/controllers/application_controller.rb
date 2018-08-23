class ApplicationController < ActionController::Base

  helper_method :current_user, :logged_in?
  # Finds the User with the ID stored in the session with the key
  # :current_user_id This is a common way to handle user login in
  # a Rails application; logging in sets the session value and
  # logging out removes it.
      def current_user
        if session[:current_user_id]
          User.find_by( session[:current_user_id])
        else
          User.new
        end
      end

      def logged_in?
        !!current_user.id
      end

      def authorized?
        if !logged_in?
          flash[:authorized] = "You aren't logged in"
          redirect_to login_path
        end
      end

# the authorisation for patients is different from the one for practitioners
#
    def authorized_for(user_id)
      authorized?
      if current_user.id != user_id.to_i
        flash[:authorized] = "You can't view a page that doesn't belong to you!"
        redirect_to current_user
      end
    end
end

class ApplicationController < ActionController::Base
  helper :layout
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  before_filter RubyCAS::Filter
  before_filter :current_user
 # before_filter :first_time_user

  def first_time_user
    if current_user.nil? && params[:action] != "terms_of_service"
      flash[:notice] = "Hey there! Since this is your first time making a reservation, we'll
        need you to supply us with some basic contact information."
      redirect_to new_user_path
    end
  end

  def current_user
    @current_user ||= User.find_by_login(session[:cas_user]) if session[:cas_user]
  end

end

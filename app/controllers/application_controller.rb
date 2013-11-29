class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def categories
    @categories ||= Category.all
  end

  def recents
    @recents ||= Post.all.order("updated_at desc").first(10)
  end


  helper_method :current_user, :categories, :recents
end
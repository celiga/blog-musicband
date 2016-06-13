class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :load_articles
  
  def after_sign_in_path_for(resource)
     admin_root_path
  end

  private

  def load_articles
    @recent_posts = Post.order("created_at DESC").limit(3)
  end
end

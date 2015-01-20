class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :count_links

  private

  # Used in the site header
  def count_links
    @links_count = Link.count
  end
end

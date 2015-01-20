class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :count_links
  before_action :retrieve_settings

  private

  # Used in the site header
  def count_links
    @links_count = Link.count
  end

  def retrieve_settings
    # TODO change for the account ID
    @settings = Settings.find(1)
  end
end

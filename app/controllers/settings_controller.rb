class SettingsController < ApplicationController
  before_action :retrieve_settings

  def index
  end

  def update
  end

  private

  def retrieve_settings
    # TODO change for the account ID
    @settings = Settings.find(1)
  end

  def settings_params
    params.require(:settings).permit(:default_private_link, :page_title, :time_zone)
  end
end

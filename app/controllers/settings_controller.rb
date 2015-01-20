class SettingsController < ApplicationController
  def index
  end

  def update
    respond_to do |format|
      if @settings.update(settings_params)
        format.html { redirect_to settings_path, notice: 'Settings successfully updated.' }
        format.json { render :index, status: :ok }
      else
        format.html { render :index }
        format.json { render json: @settings.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def settings_params
    params.require(:settings).permit(:default_private_link, :page_title, :time_zone)
  end
end

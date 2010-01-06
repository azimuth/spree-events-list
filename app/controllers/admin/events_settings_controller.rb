class Admin::EventsSettingsController < Admin::BaseController
  def update
    Spree::Config.set(params[:preferences])

    respond_to do |format|
      format.html {
        redirect_to admin_events_path
      }
    end
  end
end

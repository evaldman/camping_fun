class CamperActivitiesController < ApplicationController
  
  def index
    @camper_activities = CamperActivity.all
  end

  def new
    @new_camper_activity = CamperActivity.new
  end

  def create
    new_camper_activity = CamperActivity.create(camper_activity_params(:camper_id, :activity_id, :time))
    if new_camper_activity.valid?
       redirect_to camper_path(Camper.find(new_camper_activity.camper_id))
    else 
       flash[:messages] = new_camper_activity.errors.full_messages
       redirect_to new_camper_activity_path
    end
  end

  def edit
  end

  def show
  end

  private

  def camper_activity_params( *args )
    params.require(:camper_activity).permit( *args )
  end
end

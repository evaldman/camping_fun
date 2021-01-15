class CamperActivitiesController < ApplicationController
  
  def index
    @camper_activities = CamperActivity.all
  end

  def new
    @new_camper_activity = CamperActivity.new
  end

  def edit
  end

  def show
  end

end

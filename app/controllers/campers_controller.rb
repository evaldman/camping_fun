class CampersController < ApplicationController

    def index
        @campers = Camper.all
    end

    def show
        @camper = Camper.find(params[:id])
    end

    def new
        @new_camper = Camper.new
    end

    def create
        new_camper = Camper.create(camper_params(:name, :age))
        redirect_to camper_path(new_camper)
    end

    private

    def camper_params( *arg )
        params.require(:camper).permit( *arg )
    end
end

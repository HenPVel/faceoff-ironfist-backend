class AthletesController < ApplicationController

    def index
        athletes = Athlete.all
        render json: athletes
    end

    def show
        athlete = Athlete.find(params[:id])
        render json: athlete
    end

    
    
end

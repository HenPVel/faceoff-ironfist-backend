class AthletesController < ApplicationController

    def index
        athletes = Athlete.all
        render json: athletes
    end

    def show
        athlete = Athlete.find(params[:id])
        render json: athlete
    end

    def create
        new_athlete = Athlete.create!(athlete_params)
        render json: new_athlete
    end

    def destroy
        athlete = Athlete.find(params[:id])
        athlete.destroy!
        render json: {}
    end

    def update
        athlete = Article.find(params[:id])
        athlete.update(athlete_update_params)
        render json: athlete
    end


    private

    def athlete_sign_up_params
        params.permit(:email, :name, :password, :age, :weight_in_lbs)
    end

    def athlete_update_params
        params.permit(:email, :name, :age, :years_of_experience, :reason_for_training, :ethnicity, :body_type, :skill_level, :weight_in_lbs, :height_in_inches, :preexisting_injuries, :username, :password, :active )
    end
    
    
end

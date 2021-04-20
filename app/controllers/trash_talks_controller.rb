class TrashTalksController < ApplicationController

    def index
        trashTalks = TrashTalk.all
        render json: trashTalks
    end

end

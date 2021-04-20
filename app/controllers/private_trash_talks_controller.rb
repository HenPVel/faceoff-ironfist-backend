class PrivateTrashTalksController < ApplicationController

    def index
        privateTrashTalks = PrivateTrashTalk.all
        render json: privateTrashTalks
      end

end

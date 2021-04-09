class BackgroundsController < ApplicationController

    def index 
        @backgrounds = Background.all
        render json: @backgrounds
    end
end

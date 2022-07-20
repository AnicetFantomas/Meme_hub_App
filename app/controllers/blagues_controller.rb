class BlaguesController < ApplicationController
    def index
        @blagues = Blague.all
    end

    def show
        @blague = Blague.find(params[:id])
    end
end

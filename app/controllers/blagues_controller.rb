class BlaguesController < ApplicationController
    def index
    end

    def show
        @blague = Blague.find(params[:id])
    end
end

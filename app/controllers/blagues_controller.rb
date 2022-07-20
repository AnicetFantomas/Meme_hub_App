class BlaguesController < ApplicationController
    def index
        @blagues = Blague.all
    end

    def show
        @blague = Blague.find(params[:id])
    end

    def new 
        @blague = Blague.new
    end

    def create 
        @blague = Blague.new(params_blagues)


        if @blague.save
        redirect_to blagues_path
        else
            render :new
        end
    end

    private

    def params_blagues
        params.require(:blague).permit(:name, :content, :author)
    end


end

class PpepisodesController < ApplicationController
    before_action :set_ppepisode, only: [:update, :destroy, :edit]
    
    def new 
        @ppepisode = Ppepisode.new 
        @planets = Planet.all 
        @people = Person.all 
        @episodes = Episode.all 
    end 

    def create 
        @ppepisode = Ppepisode.create(ppepisode_params)
        if @ppepisode.valid? 
            redirect_to episode_path(@ppepisode.episode.id)
        else 
            flash[:my_errors] = @ppepisode.errors.full_messages
            redirect_to new_ppepisode_path    
        end 
    end 

    def edit 
        @planets = Planet.all 
        @people = Person.all 
        @episodes = Episode.all 
    end 

    def update 
        if @ppepisode.update(ppepisode_params)
            redirect_to episode_path(@ppepisode.episode.id)
        else 
            flash[:my_errors] = @ppepisode.errors.full_messages
            redirect_to edit_ppepisode_path 
        end 
    end 


    def show 
    end 

    # def destroy 
    #     @ppepisode.destroy 
    #     redirect_to episode_path(@ppepisode.episode.id)
    # end 

    private 
    def set_ppepisode 
        @ppepisode = Ppepisode.find(params[:id])
    end 

    def ppepisode_params 
        params.require(:ppepisode).permit(:episode_id, :person_id, :planet_id)
    end 
end

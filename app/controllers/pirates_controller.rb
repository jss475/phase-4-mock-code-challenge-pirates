class PiratesController < ApplicationController
    def index
        render json: Pirate.all, status: :ok
    end

    def show
        pirate = Pirate.find_by(id: params[:id])
        if pirate
            render json: pirate, status: :ok, serializer: IndividualPirateSerializer
        else
            render json: {error: "Pirate not found"}, status: :not_found
        end
    end

    def destroy
        pirate = Pirate.find_by(id: params[:id])
        if pirate
            pirate.treasures.destroy_all
            pirate.destroy
            render json: {}, status: 200
        else
            render json: {error: "Pirate not found"}, status: :not_found
        end
    end

end

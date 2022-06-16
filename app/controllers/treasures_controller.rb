class TreasuresController < ApplicationController
    def create
        treasure = Treasure.create(treasure_params)
        if treasure.valid?
            render json: treasure, status: :created
        else
            render json: {errors: ["show your validation errors here"]}, status: 422
        end

    end

    private

    def treasure_params
        params.permit(:contents, :pirate_id, :island_id)
    end
end

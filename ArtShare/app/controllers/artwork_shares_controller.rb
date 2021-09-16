class ArtworkSharesController < ApplicationController
    def index 
        render json: ArtworkShare.all 
    end 

    def create
        artwork_share = ArtworkShare.new(artwork_share_params)
        if artwork_share.save 
            render json: artwork_share
        else 
            render json: artwork_share.errors.full_messages, status: :unprocessable_entity
        end 
    end 

    def destroy
    end 

    private
    def artwork_share_params
        params.require(:artwork_share).permit(:artwork_id, :viewer_id)

    end 
end

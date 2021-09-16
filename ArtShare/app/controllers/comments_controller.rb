class CommentsController < ApplicationController

    def index
        commenter = User.find(params[:user_id])
        artwork = Artwork.find(params[:artwork_id])
        if commenter 
            render json: commenter.authored_comments
        else  
            render json: artwork.comments 
        end 
        
    end 

    def create
        comment = Comment.new(comment_params)
    end 

    def destroy
    end 

    def comment_params 
        params.require(:comment).permit(:commenter_id, :artwork_id, :body)
    end 
end

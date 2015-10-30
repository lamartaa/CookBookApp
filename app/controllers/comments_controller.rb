class CommentsController < ApplicationController

    def new
        @comment = Comment.new
    end

    def index
        @comments = Comment.all
    end

    def create
        @comment = Comment.new(comment_params)
        if @comment.save
            redirect_to :back
        else
            redirect_to recipes_url
        end
    end

    
    def update
        @comment = Comment.find(params[:id])
        if @comment.update(comment_params)
            redirect_to :back
        else
            render 'edit'
        end
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        redirect_to :back
    end

    private 

    def comment_params
        params.require(:comment).permit!
    end
end

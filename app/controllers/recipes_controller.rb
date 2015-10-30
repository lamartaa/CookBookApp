class RecipesController < ApplicationController
    before_action :require_user, only: [:edit, :update]

    def new 
        @recipe= Recipe.new
        puts "HEEEEEEEELLLLLLLLLLLLLLOOOOOOOO"
    end

    def index
        @recipes = Recipe.all 
    end

    def show
        @recipe =  Recipe.find(params[:id])
        @comments= Comment.all
        @comment= Comment.new
    end

    def edit
        @recipe = Recipe.find(params[:id])
    end

    def update
        @recipe = Recipe.find(params[:id])
        if @recipe.update(recipe_params)
            redirect_to @recipe
        else
            render 'edit'
        end
    end

    def destroy 
        @recipe = Recipe.find(params[:id])
        @recipe.destroy
        redirect_to root_url
    end

    def create
        @recipe = Recipe.new(recipe_params)
        if @recipe.save
            redirect_to root_url
        else
            redirect_to recipes_url
        end
    end

    private
    def recipe_params
        params.require(:recipe).permit(:name, :description, :image,  :ingredients, :directions)
    end
end

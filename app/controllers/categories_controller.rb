class CategoriesController < ApplicationController
    def index
        @category = Category.new
        @categories = Category.all
    end

    def new
        @category = Category.new
    end

    def create
        @category = Category.new(params[:category].permit(:name, :description))

        if @category.save
            redirect_to '/categories'
        else
            @categories = Category.all
            render '/categories/index'
        end
    end

    def show
        @posts = Post.where('category_id ==' + params[:id]) 
    end
end

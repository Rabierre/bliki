class CategoryController < ApplicationController
    def index
        @categories = Category.all
    end

    def new
        @category = Category.new
    end

    def create
        @category = Category.new(params[:category].permit(:title))
    end
end
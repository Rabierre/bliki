class CategoriesController < ApplicationController
    def index
        @category = Category.new
        @categories = Category.all
    end

    def new
        @category = Category.new
    end

    def create
        @category = Category.new(params[:category].permit(:title))

        if @category.save
            redirect_to '/categories'
        else
            @categories = Category.all # todo 여기에 놓아도 되나?
            render '/categories/index'
        end
    end
end

class CategoryController < ApplicationController
    def index
        @categories = Category.new
    end
end
class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def new
        @post
    end

    def create
        @post
    end
end
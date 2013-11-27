class PostsController < ApplicationController
    def index
        @posts = Post.all.order("created_at desc")
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(params[:post].permit(:title, :body))
        @revision = @post.revision.new(params[:post].permit(:body))

        if @post.save
            redirect_to @post
        else
            render 'new'
        end
    end

    def show
        @post = Post.find(params[:id])
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        @revision = @post.revision.new(params[:post].permit(:body))

        if @post.update(params[:post].permit(:title, :body))
            redirect_to @post
        else
            render 'edit'
        end
    end
end
class PostsController < ApplicationController
    def index
        # TODO paging
        @posts = Post.all.order("created_at desc")
    end

    def show
        @post = Post.find(params[:id])
    end

    def recents
        @recents = Post.all.order("updated_at desc").first(30)
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

    def destroy
        post = Post.find(params[:id])
        post.delete

        redirect_to :root
    end
end
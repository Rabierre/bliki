class RevisionsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @revisions = @post.revision.order("created_at desc")
  end
end

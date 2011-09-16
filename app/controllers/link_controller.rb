class LinkController < ApplicationController
  def create
      @post = Post.find(params[:post_id])
      @link = @post.comments.create(params[:comment])
      redirect_to post_path(@post)
    end
end

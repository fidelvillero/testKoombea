class UrlsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @url = @post.urls.create(params[:url])
    if @url.save
      redirect_to(@post, :notice => 'URL was successfully add.')
    else
      redirect_to(@post, :notice => 'The URL, was not added, please rectify.')
    end
  end
end

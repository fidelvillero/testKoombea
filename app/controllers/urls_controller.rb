class UrlsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @url = @post.urls.create(params[:url])
    if @url.save
      redirect_to(@post, :notice => 'Urls was successfully added.')
    else
      redirect_to(@post, :notice => 'Urls could not be added.')
    end
  end
end

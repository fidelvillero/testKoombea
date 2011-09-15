class ContentController < ApplicationController
  
  def index
    @content = Content.all
  end

end

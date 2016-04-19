class LayoutsController < ApplicationController
  def index
    if !Post.all.nil?
      @feed_items = Post.all.paginate(page: params[:page])
    end
  end
end

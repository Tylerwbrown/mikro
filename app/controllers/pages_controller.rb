class PagesController < ApplicationController
  def index
    if logged_in?
      @micropost  = current_user.posts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end
end

class StaticPagesController < ApplicationController
  def home
    @micropost = current_user.microposts.build if signed_in?
  end

  def results
    @user=current_user
    @micropost  = current_user.microposts.build
    @feed_items = current_user.feed.paginate(page: params[:page])
  end

  def blog
  end

  def tips
    if signed_in?
      @user=current_user
      @micropost  = User.first.microposts.build
      @feed_items = User.first.feed.paginate(page: params[:page])
  end
  end

  def galery
  end

  def contact
  end

  def login
  end


end

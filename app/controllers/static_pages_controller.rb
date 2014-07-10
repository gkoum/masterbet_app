class StaticPagesController < ApplicationController
  def home
    @micropost = current_user.microposts.build if signed_in?
  end

  def results
    if signed_in?
      @user=current_user
      @micropost  = User.first.microposts.build
      @feed_items = User.first.feed.paginate(page: params[:page])
    end
  end

  def blog
    if signed_in?
      @user=current_user
      @micropost  = User.first.microposts.build
      @feed_items = User.first.feed.paginate(page: params[:page])
    end
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

  def lucky
    if signed_in?
      @user=current_user
      @micropost  = User.first.microposts.build
      @feed_items = User.first.feed.paginate(page: params[:page])
    end
  end


end

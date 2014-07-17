class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @user=current_user
      @micropost  = User.find_by(admin: true).microposts.where("category = ?", "news").build
      @feed_items = User.find_by(admin: true).feed.where("category = ?", "news").paginate(page: params[:page], :per_page => 5)
      else
      @feed_items = User.find_by(admin: true).feed.where("category = ?", "news").paginate(page: params[:page], :per_page => 5)
    end
  end

  def results
    if signed_in?
      @user=current_user
      @micropost  = User.find_by(admin: true).microposts.where("category = ?", "results").build
      @feed_items = User.find_by(admin: true).feed.where("category = ?", "results").paginate(page: params[:page], :per_page => 5)
    end
  end

  def blog
    if signed_in?
      @user=current_user
      @micropost  = User.find_by(admin: true).microposts.where("category = ?", "blog").build
      @feed_items = User.find_by(admin: true).feed.where("category = ?", "blog").paginate(page: params[:page], :per_page => 5)
    end
  end

  def tips
    if signed_in?
      @user=current_user
      @micropost  = User.find_by(admin: true).microposts.where("category = ?", "tips").build
      @feed_items = User.find_by(admin: true).feed.where("category = ?", "tips").paginate(page: params[:page], :per_page => 5)
    end
  end

  def galery
    if signed_in?
      @user=current_user
      @micropost  = User.find_by(admin: true).microposts.where("category = ?", "gallery").build
      @feed_items = User.find_by(admin: true).feed.where("category = ?", "gallery").paginate(page: params[:page], :per_page => 5)
    else
      @feed_items = User.find_by(admin: true).feed.where("category = ?", "gallery").paginate(page: params[:page], :per_page => 5)
    end
  end

  def contact
  end

  def news
    if signed_in?
      @user=current_user
      @micropost  = User.find_by(admin: true).microposts.where("category = ?", "news").build
      @feed_items = User.find_by(admin: true).feed.where("category = ?", "news").paginate(page: params[:page], :per_page => 5)
    else
      @feed_items = User.find_by(admin: true).feed.where("category = ?", "news").paginate(page: params[:page], :per_page => 5)
    end
  end

  def myshop
  end

  def events
    if signed_in?
      @user=current_user
      @micropost  = User.find_by(admin: true).microposts.where("category = ?", "events").build
      @feed_items = User.find_by(admin: true).feed.where("category = ?", "events").paginate(page: params[:page], :per_page => 5)
    else
      @feed_items = User.find_by(admin: true).feed.where("category = ?", "events").paginate(page: params[:page], :per_page => 5)
    end
  end

  def lucky
    if signed_in?
      @user=current_user
      @micropost  = User.find_by(admin: true).microposts.where("category = ?", "lucky").build
      @feed_items = User.find_by(admin: true).feed.where("category = ?", "lucky").paginate(page: params[:page], :per_page => 5)
    else
      @feed_items = User.find_by(admin: true).feed.where("category = ?", "lucky").paginate(page: params[:page], :per_page => 5)
    end
  end


end

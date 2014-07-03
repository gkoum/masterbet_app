class StaticPagesController < ApplicationController
  def home
    @micropost = current_user.microposts.build if signed_in?
  end

  def results
  end

  def blog
  end

  def tips
  end

  def galery
  end

  def contact
  end

  def login
  end
end

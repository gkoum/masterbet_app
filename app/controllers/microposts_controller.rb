class MicropostsController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to current_user
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @micropost.destroy
    redirect_to current_user
  end

  def show
    @micropost  = User.find_by(admin: true).microposts.find(params[:id])
  end

  def edit
    @micropost  = User.find_by(admin: true).microposts.find(params[:id])
  end

  def update
    @micropost  = User.find_by(admin: true).microposts.find(params[:id])
    if @micropost.update_attributes(micropost_params)
      flash[:success] = "Micropost updated"
      redirect_to current_user
    else
      render 'edit'
    end
  end

  private

    def micropost_params
      params.require(:micropost).permit(:content, :image, :category, :text)
    end

    def correct_user
      @micropost = current_user.microposts.find_by(id: params[:id])
      redirect_to root_url if @micropost.nil?
    end
end
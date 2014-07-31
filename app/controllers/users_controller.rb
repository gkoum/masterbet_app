class UsersController < ApplicationController
  before_action :signed_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  def new
  	@user = User.new
  end

  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    if signed_in?
  		@user=current_user

  		@micropost  = current_user.microposts.build
      @category=@micropost.category.to_s
    	@feed_items = current_user.feed.paginate(page: params[:page], :per_page => 5)
    else
    	@user = User.find(params[:id])
    end
  end

  def edit
  	
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted."
    redirect_to users_url
  end

  def create
    @user = User.new(user_params)    # Not the final implementation!

    respond_to do |format|
      if @user.save
        sign_in @user
        flash[:success] = "User created and signed in"
        UserMailer.welcome_email(@user).deliver
 
        format.html { redirect_to(@user, notice: 'Email was sent.') }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
        
      end
    end
    end

  def update
    
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

    # Before filters

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end

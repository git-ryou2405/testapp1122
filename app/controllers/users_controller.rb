class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def login_page
    #login_page.html.erbを開く
  end
  
  def login
    @user = User.find_by(email: params[:email], password: params[:password])
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました。"
      redirect_to users_url
    else
      @error_message = "メールアドレス またはパスワードが間違っています。"
      @email = params[:email]
      @password = params[:password]
      render :root_url
    end
  end
  
  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました。"
    redirect_to login_url
  end
  
  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to @user, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:name, :account_name, :email, :password, :is_admin, :balance)
    end
end

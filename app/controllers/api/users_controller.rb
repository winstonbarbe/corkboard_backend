class Api::UsersController < ApplicationController
  # before_action :authenticate_user, except: :create

  def index
    @users = current_user.potential_connections
    # render json: @users 
    render "index.json.jb", status: 200
  end

  def create
    user = User.new(
      name: params[:name],
      username: params[:username],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @user = User.find(params[:id])
    render "show.json.jb", status: 200
  end
  
  def update
    # binding.pry
    @user = current_user
    if @user.update(user_params)
      render "show.json.jb", status: 200
    else
      render json: { errors: @user.errors }, status: 400
    end
  end

  def destroy
    current_user.delete
    render json: { message: "This user has been deleted" }, status: 201
  end

  private

  def user_params
    params.permit(:name, :username, :email, :bio, :current_location, :image_url, :active)
  end
end

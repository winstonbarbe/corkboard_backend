class Api::UsersController < ApplicationController
  before_action :authenticate_user, except: :create

  def index
    @users = current_user.potential_connections
    # render "index.json.jb", status: 200
    render json: @users 
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
    @user = current_user
    @user.name = params[:name] || @user.name
    @user.username = params[:username] || @user.username
    @user.email = params[:email] || @user.email
    @user.bio = params[:bio] || @user.bio
    @user.current_location = params[:current_location] || @user.current_location
    @user.image_url = params[:image_url] || @user.image_url
    @user.active = params[:active] || @user.active
    if @user.save
      render "show.json.jb", status: 200
    else
      render json: { errors: @user.errors }, status: 400
    end
  end

  def destroy
    current_user.delete
    render json: { message: "This user has been deleted" }, status: 201
  end
end

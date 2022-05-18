class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
    render json: @profiles
  end

  def show
    @profile = Profile.find(params[:id])
    if @profile
      render json: @profile, status: 200
    else
      render json: { error: 'Unable to find profile'}, status: 404
    end
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      render json: @profile, status: 201
      redirect_to profiles_path
    else
      render json: { error: 'Unable to create a profile'}, status: 400
    end
  end

  def update
    profile = Profile.find(params[:id])
    if profile.save
      render json: profile, status: 201
    else
      render json: { error: 'Unable to update a profile'}, status: 400
    end
  end

  def delete
    profile = Profile.find(params[:id])
    if profile
      profile.destroy
      render json: profile, status: 204
    else
      render json: { error: 'Unable to delete the profile'}, status: 400
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:username, :description, :password, :email, :firstname, :lastname)
  end

end

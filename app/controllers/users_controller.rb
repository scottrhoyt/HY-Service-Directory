class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        #format.html { redirect_to @service_type, notice: 'Service type was successfully created.' }
        #format.json { render :show, status: :created, location: @service_type }
        redirect_to root_url, notice: 'Thank you for signing up!'
      else
        #format.html { render :new }
        #format.json { render json: @service_type.errors, status: :unprocessable_entity }
        render 'new'
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end

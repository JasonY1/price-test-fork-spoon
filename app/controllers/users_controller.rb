class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def new
    redirect_to '/register/sign_in'
  end

  def show
    @user = current_user
  end

  def update
    @user = current_user
    @profile = Profile.find_by(user_id: @user.id )

    respond_to do |format|
      if @user.update_attributes(user_params)
        format.html { redirect_to user_profile_path(current_user), notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { redirect_to new_user_profile_path(@user), alert: 'Your Profile was not updated. All fields are required!' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  
  private
  
    def user_params
      params.require(:user).permit(:email,
          :profile_attributes => [:firstname, :lastname, :birthdate, :address1, :address2, :city, :statename, :zipcode, :phonenum, :prescription_num, :prescription_exp, :prescription_card, :idcard, :verified])
    end
    
end

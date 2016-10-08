class UsersController < ApplicationController
before_action :set_user, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: "Your profil has been successfully updated"
    else
      render :edit
    end
  end

  private

def set_user
  @user = User.find(params[:id])
  authorize @user
end

def user_params
  params.require(:user).permit(:first_name,:last_name,:phone,:company,:website,:description,:job_categorie_id)
end

end

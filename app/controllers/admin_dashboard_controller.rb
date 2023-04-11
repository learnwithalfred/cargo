class AdminDashboardController < ApplicationController
  before_action :authorize_admin!
  before_action :set_user, except: %i[index user_list]

  def index
    @users = User.order(created_at: :desc).limit(10)
  end

  def user_list
    @users = User.all.where.not(id: current_user.id).paginate(page: params[:page], per_page: 10).order(id: :asc)
  end

  def edit_user
  end

  def update
    respond_to do |format|
      if @author.update(user_role_params)
        format.html { redirect_to authors_index_path, notice: "author was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end



  private
  def authorize_admin!
    unless current_user&.admin?
      redirect_to root_path, alert: "You are not authorized to access this page."
    end
  end


    def set_user
      @user = User.find(params[:id])
    end

    def user_role_params
      params.require(:user).permit(:role)
    end

end

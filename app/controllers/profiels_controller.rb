class ProfielsController < ApplicationController
  def show
  end

  def edit
  end

  def update
    user = current_user
    # params[:user] =>{name: "bob", email:"bob@example.com"}
    user.update(user_params)
  end
  

  private
    #外部から渡されるパラメーターをそのままし尿製図、明示的に許可したキーのみ利用する

  def user_params
    if cuurent_user.admin?
      params.require(:user).permit(:name, :email, :admin)
    else
      params.require(:user).permit(:name, :email)
    end
    
  end
end

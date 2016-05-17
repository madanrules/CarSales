class ProfilesController < ApplicationController

  def index
    if current_user 
      @user = current_user
    elsif current_seller
      @user = current_seller
    else
      redirect_to '404'
    end
    
  end

  def edit
    if current_user 
      @user = current_user
    elsif current_seller
      @user = current_seller
    else
      redirect_to '404'
    end
  
  end

  def update
    if current_user 
      @user = current_user
    elsif current_seller
      @user = current_seller
    else
      redirect_to '404'
    end
    respond_to do |format|
      if @user.update(name: params[:name], place: params[:place], aboutme: params[:aboutme], phone: params[:phone], image: params[:image])
        format.html { redirect_to profiles_path, notice: 'Profile was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def buyer_profile
    if params[:id].present?
      @buyer = User.find(params[:id])
    else
      redirect_to '404'
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def seller_params
    params.require(:seller).permit(:name, :place, :aboutme, :image)
  end

end

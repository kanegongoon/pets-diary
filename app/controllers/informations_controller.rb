class InformationsController < ApplicationController

  def new
    @information = Information.new
  end

  def create
    @information = Information.new(information_params)
    @information.user_id = current_user.id
    if @information.save
      redirect_to information_path(@information)
    else
      render :new
    end
  end

  def show
    @information = Information.find(params[:id])
  end

  def edit
    @information = Information.find(params[:id])
  end

  def update
    @information = Information.find(params[:id])
    if @information.update(information_params)
      redirect_to information_path(@information)
    else
      render :edit
    end
  end

  private
  def information_params
    params.require(:information).permit(:name, :sex, :kinds, :color, :birthday, :pet_image)
  end
end

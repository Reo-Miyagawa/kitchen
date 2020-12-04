class KitchensController < ApplicationController
  def index
  end

  def new
    @kitchen = Kitchen.new
  end

  def create
    @kitchen = Kitchen.create(kitchen_params)
    if @kitchen.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def kitchen_params
    params.require(:kitchen).permit(:image, :name, :genre_id).merge(user_id: current_user.id)
  end
end

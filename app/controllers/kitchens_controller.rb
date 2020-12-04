class KitchensController < ApplicationController
  def index
  end

  def new
    @kitchen = Kitchen.new
  end

  def create
    @kitchen = Kitchen.create(kitchen_params)
  end

  private

  def kitchen_params
    params.require(:kitchen).permit(:image, :title, :genre_id).merge(user_id: current_user.id)
  end
end

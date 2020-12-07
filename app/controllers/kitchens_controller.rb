class KitchensController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
    @kitchens = Kitchen.all.order('created_at DESC')
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

  def show
    @kitchen = Kitchen.find(params[:id])
  end

  def edit
  end

  def destroy
    @kitchen = Kitchen.find(params[:id])
      if current_user.id == @kitchen.user_id
        @kitchen.destroy
        redirect_to root_path
      end
  end

  def update
    @kitchen = Kitchen.find(params[:id])
    @kitchen.update
  end

  private

  def kitchen_params
    params.require(:kitchen).permit(:image, :name, :genre_id).merge(user_id: current_user.id)
  end
end

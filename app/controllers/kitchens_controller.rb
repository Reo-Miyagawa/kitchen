class KitchensController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit]

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
    @kitchen = Kitchen.find(params[:id])
    redirect_to action: :index if current_user.id != @kitchen.user_id
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
    if @kitchen.update(kitchen_params)
      redirect_to kitchen_path
    else
      render :edit
    end
  end

  private

  def kitchen_params
    params.require(:kitchen).permit(:image, :name, :genre_id).merge(user_id: current_user.id)
  end
end

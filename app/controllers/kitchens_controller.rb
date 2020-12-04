class KitchensController < ApplicationController
  def index
  end

  def new
    @kitchen = Kitchen.new
  end

  def create
    @kitchen = Kitchen.create(kitchen_params)
  end
end

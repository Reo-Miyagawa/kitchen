class KitchensController < ApplicationController
  def index
  end

  def new
    @kitchen = Kitchen.new
  end

  def create
  end
end

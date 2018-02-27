class AwardsController < ApplicationController

  def index
    @awards = Awards.all
  end

  def new
    @awards = Awards.new
  end

  def create
    @awards = Awards.new(params[:id])
    if @awards.save
      redirect_to awards_path(@awards)
    else
      render :new
    end
  end

  def show
    @award = Awards.find(params[:id])
  end

end

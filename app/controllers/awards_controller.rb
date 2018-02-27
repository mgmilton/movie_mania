class AwardsController < ApplicationController

  def index
    @awards = Awards.all
  end

  def new
    @awards = Awards.find(awards_params[:awards_id])
  end

  def create
    @awards = Awards.find(awards_params[:awards_id])
    if @awards.save
      redirect_to awards_path(@awards)
    else
      render :new
    end
  end

  def show
    @awards = Awards.find(params[:id])
  end


 private
    def awards_params
      params.require(:awards).permit(:title, :year)
    end

end

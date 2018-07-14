class PowerstatsController < ApplicationController

  def index
    @powerstat = Powerstat.all
  end

  def show
    @powerstat = Powerstat.find(params[:id])
  end

  def new
    @powerstat = Powerstat.new
  end

  def edit
    @powerstat = Powerstat.find(params[:id])
  end

  def create
    @powerstat = Powerstat.new(powerstat_params)

    if @powerstat.save
      redirect_to @powerstat
    else
      render 'new'
    end
  end

  def update
    @powerstat = Powerstat.find(params[:id])

    if @powerstat.update(powerstat_params)
      redirect_to @powerstat
    else
      render 'edit'
    end
  end

  def destroy
    @powerstat = Powerstat.find(params[:id])
    @powerstat.destroy

    redirect_to powerstats_path
  end

  private
    def powerstat_params
      params.require(:powerstat).permit(:title, :text)
    end
end

class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
  end

  def new
  end



  private

  def artist_params
    params.require(:artist).permit(:age, :bio)
  end

end

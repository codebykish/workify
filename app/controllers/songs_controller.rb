class SongsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def edit
  end


  def create
     @artist = Artist.find(params[:artist_id])
     @song = @artist.songs.new(song_params)

    respond_to do |format|
      if @song.update_attributes(song_params)
        format.html { redirect_to songs_path, notice: "Succes!" }
        format.json { render json: @song, status: 200 }
      else
        format.html {render "edit",  notice: "Try again!" }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @song = Song.find(params[:id])

    @song.destroy
    respond_to do |format|
      format.html { redirect_to songs_path, notice: 'Song was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def song_params
    params.require(:song).permit(:name)
  end
end

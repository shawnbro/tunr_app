# songs_controller.rb

class SongsController < ApplicationController
  def index
    @artist = Artist.find(params[:artist_id])
    @songs = Song.where(artist_id: params[:artist_id])
    render(:index)
  end

  def new
    @artist = Artist.find(params[:artist_id])
    render(:new)
  end

  def create
    Song.create({
      name: params[:name],
      year: params[:year],
      artist_id: params[:artist_id]
      })
    redirect_to("/artists/#{params[:artist_id]}/songs")
  end

  def edit
    @song = Song.find(params[:id])
    render(:edit)
  end

  def update
    @song = Song.find(params[:id])
    @song.update({
      name: params[:name],
      year: params[:year],
      artist_id: params[:artist_id]
      })
    redirect_to("/artists/#{params[:artist_id]}/songs")
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to("/artists/#{params[:artist_id]}/songs")
  end
end
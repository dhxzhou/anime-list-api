class FavoriteAnimesController < ApplicationController
  def index
    @favorite_animes = FavoriteAnime.where(status: "favorite")
    render :index
  end

  def create
    @favorite_anime = FavoriteAnime.create(
      user_id: params[:user_id],
      anime_id: params[:anime_id],
      status: "favorite",
    )
    render :show
  end

  def destroy
    favorite_anime = FavoriteAnime.find_by(id: params[:id])
    favorite_anime.update(status: "removed")
    render json: { message: "favorite anime removed!" }
  end
end

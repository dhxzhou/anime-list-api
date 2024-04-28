class FavoriteMangasController < ApplicationController
  def index
    @favorite_mangas = FavoriteManga.where(status: "favorite")
    render :index
  end

  def create
    @favorite_manga = FavoriteManga.create(
      user_id: params[:user_id],
      manga_id: params[:manga_id],
      status: "favorite",
    )
    render :show
  end

  def destroy
    favorite_manga = FavoriteManga.find_by(id: params[:id])
    favorite_manga.update(status: "removed")
    render json: { message: "favorite manga removed!" }
  end
end

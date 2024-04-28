class MangasController < ApplicationController
  def index
    @mangas = Manga.all
    render :index
  end

  def show
    @manga = Manga.find_by(id: params[:id])
    render :show
  end

  def create
    @manga = Manga.create(
      name: params[:name],
      image_url: params[:image_url],
      description: params[:description],
      genre: params[:genre],
    )
    render :show
  end

  def update
    @manga = Manga.find_by(id: params[:id])
    @manga.update(
      name: params[:name] || @manga.name,
      image_url: params[:image_url] || @manga.image_url,
      description: params[:description] || @manga.description,
      genre: params[:genre] || @manga.genre,
    )
    render :show
  end

  def destroy
    manga = Manga.find_by(id: params[:id])
    manga.destroy
    render json: { message: "Manga destroyed successfully!!" }
  end
end

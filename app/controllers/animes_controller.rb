class AnimesController < ApplicationController
  def index
    @animes = Anime.all
    render :index
  end

  def show
    @anime = Anime.find_by(id: params[:id])
    render :show
  end

  def create
    @anime = Anime.create(
      name: params[:name],
      image_url: params[:image_url],
      description: params[:description],
      genre: params[:genre],
    )
    render :show
  end

  def update
    @anime = Anime.find_by(id: params[:id])
    @anime.update(
      name: params[:name] || @anime.name,
      image_url: params[:image_url] || @anime.image_url,
      description: params[:description] || @anime.description,
      genre: params[:genre] || @anime.genre,
    )
    render :show
  end

  def destroy
    anime = Anime.find_by(id: params[:id])
    anime.destroy
    render json: { message: "Anime destroyed successfully!!" }
  end
end

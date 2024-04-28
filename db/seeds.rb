# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create!(name: "David", email: "david@eample.com", password_digest: "password", image_url: "example.jpg")

Anime.create!(name: "One Piece", image_url: "Onepiece.jpg", description: "fill out later", genre: "adventure")
Anime.create!(name: "Naruto", image_url: "Naruto.jpg", description: "fill out later", genre: "fantasy")
Anime.create!(name: "Bleach", image_url: "Bleach.jpg", description: "fill out later", genre: "adventure")

FavoriteAnime.create!(user_id: 1, anime_id: 1, finished: true, status: "favorite")
FavoriteAnime.create!(user_id: 1, anime_id: 2, finished: true, status: "favorite")
FavoriteAnime.create!(user_id: 1, anime_id: 3, finished: true, status: "not")

Manga.create!(name: "One Piece", image_url: "Onepiece.jpg", description: "fill out later", genre: "adventure")
Manga.create!(name: "Naruto", image_url: "Naruto.jpg", description: "fill out later", genre: "fantasy")
Manga.create!(name: "Bleach", image_url: "Bleach.jpg", description: "fill out later", genre: "adventure")

FavoriteManga.create!(user_id: 1, manga_id: 1, finished: true, status: "not")
FavoriteManga.create!(user_id: 1, manga_id: 2, finished: true, status: "favorite")
FavoriteManga.create!(user_id: 1, manga_id: 3, finished: true, status: "favorite")

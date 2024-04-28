class CreateFavoriteAnimes < ActiveRecord::Migration[7.1]
  def change
    create_table :favorite_animes do |t|
      t.integer :user_id
      t.integer :anime_id
      t.boolean :finished

      t.timestamps
    end
  end
end

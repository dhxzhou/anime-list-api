class CreateFavoriteMangas < ActiveRecord::Migration[7.1]
  def change
    create_table :favorite_mangas do |t|
      t.integer :user_id
      t.integer :manga_id
      t.boolean :finished
      t.string :status

      t.timestamps
    end
  end
end

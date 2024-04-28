class CreateAnimes < ActiveRecord::Migration[7.1]
  def change
    create_table :animes do |t|
      t.string :name
      t.string :image_url
      t.text :description
      t.string :genre

      t.timestamps
    end
  end
end

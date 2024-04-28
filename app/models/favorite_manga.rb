class FavoriteManga < ApplicationRecord
  belongs_to :user
  belongs_to :manga
end

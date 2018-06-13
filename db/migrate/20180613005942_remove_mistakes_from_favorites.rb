class RemoveMistakesFromFavorites < ActiveRecord::Migration[5.2]
  def change
    remove_reference :favorites, :user_id, foreign_key: true
    remove_reference :favorites, :project_id, foreign_key: true
  end
end

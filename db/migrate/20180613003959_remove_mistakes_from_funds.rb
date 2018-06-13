class RemoveMistakesFromFunds < ActiveRecord::Migration[5.2]
  def change
    remove_reference :funds, :user_id, foreign_key: true
    remove_reference :funds, :project_id, foreign_key: true
  end
end

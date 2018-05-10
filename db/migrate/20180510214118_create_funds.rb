class CreateFunds < ActiveRecord::Migration[5.2]
  def change
    create_table :funds do |t|
      t.references :user_id, foreign_key: true
      t.references :project_id, foreign_key: true

      t.timestamps
    end
  end
end

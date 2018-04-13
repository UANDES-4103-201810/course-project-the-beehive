class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true
      t.string :content
      t.time :time_wrote
      t.date :date_wrote

      t.timestamps
    end
  end
end

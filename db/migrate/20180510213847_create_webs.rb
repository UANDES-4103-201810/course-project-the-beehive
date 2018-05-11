class CreateWebs < ActiveRecord::Migration[5.2]
  def change
    create_table :webs do |t|
      t.string :url
      t.references :user_id, foreign_key: true

      t.timestamps
    end
  end
end

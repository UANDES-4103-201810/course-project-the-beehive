class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.string :mail
      t.references :user_id, foreign_key: true

      t.timestamps
    end
  end
end

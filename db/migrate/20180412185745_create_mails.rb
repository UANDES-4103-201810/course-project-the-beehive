class CreateMails < ActiveRecord::Migration[5.2]
  def change
    create_table :mails do |t|
      t.string :mail
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end

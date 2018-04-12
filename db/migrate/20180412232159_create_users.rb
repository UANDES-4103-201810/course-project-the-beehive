class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :mail
      t.string :password
      t.string :privileges

      t.timestamps
    end
  end
end

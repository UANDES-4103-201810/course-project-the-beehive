class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :name
      t.string :description
      t.date :last_session

      t.timestamps
    end
  end
end

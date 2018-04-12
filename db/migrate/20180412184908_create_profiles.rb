class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :image
      t.string :description
      t.string :last_sesion

      t.timestamps
    end
  end
end

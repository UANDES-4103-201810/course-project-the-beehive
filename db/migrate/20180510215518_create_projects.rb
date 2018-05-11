class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.string :description
      t.integer :goal
      t.integer :actual
      t.date :date_limit
      t.integer :funders

      t.timestamps
    end
  end
end

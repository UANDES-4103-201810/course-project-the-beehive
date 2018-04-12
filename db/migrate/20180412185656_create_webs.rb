class CreateWebs < ActiveRecord::Migration[5.2]
  def change
    create_table :webs do |t|
      t.string :webpage
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end

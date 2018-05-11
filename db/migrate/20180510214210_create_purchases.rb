class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.references :user_id, foreign_key: true
      t.references :promise_id, foreign_key: true

      t.timestamps
    end
  end
end

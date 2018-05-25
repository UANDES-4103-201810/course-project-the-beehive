class AddAmountToFunds < ActiveRecord::Migration[5.2]
  def change
    add_column :funds, :amount, :integer
  end
end

class AddUserIdToTransactions < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :transactions, :users
  end
end

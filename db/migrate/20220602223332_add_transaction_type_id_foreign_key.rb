class AddTransactionTypeIdForeignKey < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :transactions, :transaction_types
  end
end

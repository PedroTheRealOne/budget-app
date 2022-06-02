class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.float :value, null: false, default: 0
      t.string :descriprion, null: false, default: ""
      t.datetime :transaction_date, null: false
      t.integer :transaction_id
      t.timestamps
    end
  end
end

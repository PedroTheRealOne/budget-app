class TransactionType < ApplicationRecord
    belongs_to :transcation, class_name: "Transaction", foreign_key: "transcation_id"
end

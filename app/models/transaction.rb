class Transaction < ApplicationRecord
    validates :value, :descriprion, :transaction_date, :transaction_type_id, presence: true

    belongs_to :transaction_type
end

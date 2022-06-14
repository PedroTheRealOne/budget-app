class Transaction < ApplicationRecord
    validates :value, :description, :transaction_date, :transaction_type_id, presence: true
    validate :date_validation
    belongs_to :transaction_type

    private

    def date_validation
        return unless transaction_date
        errors.add(:transaction_date, " precisa ser antes do dia de hoje.") if transaction_date > Date.today
    end
end

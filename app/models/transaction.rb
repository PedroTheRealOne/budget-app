class Transaction < ApplicationRecord
    validates :value, :description, :transaction_date, :transaction_type_id, presence: true
    #validate :date_validation
    
    belongs_to :transaction_type
    belongs_to :user

    def self.by_transaction_type_id(transaction_type_id)
        where(transaction_type_id: transaction_type_id).order("transaction_date DESC")
    end

    def self.filter_transaction(transactions, params)
        transaction = transactions.all

        transaction = transaction.where(transaction_type_id: params.dig(:search, :transaction_type)) if params.dig(:search, :transaction_type).present?
        transaction = transaction.where(transaction_date: params.dig(:search, :start_date)...) if params.dig(:search, :start_date).present?
        transaction = transaction.where(transaction_date: ...params.dig(:search, :end_date)) if params.dig(:search, :end_date).present?
        
        transaction
    end

    private

    def date_validation
        return unless transaction_date
        errors.add(:transaction_date, " precisa ser antes do dia de hoje.") if transaction_date > Date.today
    end
end

module TransactionHelper
    def transaction_class(transaction)
        transaction.transaction_date > Date.today ? "bg-warning" : ""
    end
end

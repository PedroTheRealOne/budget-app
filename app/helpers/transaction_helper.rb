module TransactionHelper
    def transaction_class(transaction)
        transaction.transaction_date > Date.today ? "bg-warning" : ""
    end

    def transaction_budget_avaliable(transactions)
        if(transactions.empty?)
            return 0
        else
        income = 0
        outcome = 0
        transactions.each do |n|
            if n.user_id == current_user.id
                if n.transaction_type.id == 1 
                    income += n.value
                else
                    outcome += n.value
                end
            end
        end

        return income - outcome
        end
    end
end

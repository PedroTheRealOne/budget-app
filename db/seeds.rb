# Transaction Type seeds
entrada = TransactionType.find_or_create_by(name: "Entrada")
saida = TransactionType.find_or_create_by(name: "Saída")

# Transaction example seeds
#Transaction.create(value: 29.99, description: "Lanchão", transaction_date: DateTime.parse("09/01/2022 17:00"), transaction_type: entrada)
#Transaction.create(value: 29.99, description: "Lanchão", transaction_date: "09/01/2022 17:00".to_datetime, transaction_type: saida)
#Transaction.create(value: 1500, description: "Pagamento", transaction_date: DateTime.parse("07/06/2022 08:00"), transaction_type: entrada)
#Transaction.create(value: 250, description: "Elden ring", transaction_date: DateTime.parse("07/06/2022 10:00"), transaction_type: saida)
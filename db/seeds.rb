# Transaction Type seeds
TransactionType.create(name: "Income")
TransactionType.create(name: "Outcome")

# Transaction example seeds
Transaction.create(value: 29.99, descriprion: "Lanchão", transaction_date: DateTime.parse("09/01/2022 17:00"), transaction_type_id: 2)
Transaction.create(value: 1500, descriprion: "Pagamento", transaction_date: DateTime.parse("07/06/2022 08:00"), transaction_type_id: 1)
Transaction.create(value: 250, descriprion: "Elden ring", transaction_date: DateTime.parse("07/06/2022 10:00"), transaction_type_id: 2)
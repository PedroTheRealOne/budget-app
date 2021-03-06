class TransactionsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_transaction, only: %i[ show edit update destroy ]

    # GET /transactions
    def index
        @transactions = Transaction.filter_transaction(current_user.transactions, params)
        @no_filter_transactions = current_user.transactions
        @trasaction_types = TransactionType.all
    end

    # GET /transactions/:id
    def show
    end

    # GET /transactions/new
    def new
        @transaction = current_user.transactions.new
    end

      # GET /transactions/:id/edit
     def edit
     end

    # POST /transactions
    def create
        @transaction = current_user.transactions.build(transaction_params)

        respond_to do |format|
            if @transaction.save
                format.html { redirect_to transaction_url(@transaction), notice: "Transação cadastrada com sucesso." }
                format.json { render :show, status: :created, location: @transaction }
            else
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @transaction.errors, status: :unprocessable_entity}
            end
        end
    end

    # PUT /transactions/:id
    def update
        respond_to do |format|
            if @transaction.update(transaction_params)
                format.html { redirect_to transaction_url(@transaction), notice: "Trainer was successfully updated." }
                format.json { render :show, status: :ok, location: @transaction }
            else
                format.html { render :edit, status: :unprocessable_entity }
                format.json { render json: @transaction.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /transactions/:id
    def destroy
        @transaction.destroy

        respond_to do |format|
            format.html { redirect_to transactions_url, notice: "A transação foi excluida com sucesso" }
            format.json { head :no_content }
        end
    end

    private
    def set_transaction
        @transaction = current_user.transactions.find(params[:id])
    end

    def transaction_params
        params.require(:transaction).permit(:value, :description, :transaction_date, :transaction_type_id)
    end

end

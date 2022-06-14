class TransactionsController < ApplicationController
    before_action :set_transaction, only: %i[ show edit update destroy ]
    # GET /transactions
    def index
        @transactions = Transaction.all
    end

    # GET /transactions/:id
    def show
        @transaction = Transaction.find(params[:id])
    end

    # GET /transactions/new
    def new
        @transaction = Transaction.new
    end

      # GET /transactions/:id/edit
     def edit
        @transaction = Transaction.find(params[:id])
     end

    # POST /transactions
    def create
        @transaction = Transaction.new(transaction_params)

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
            format.html { redirect_to transaction_url, notice: "A transação foi excluida com sucesso" }
            format.json { head :no_content }
        end
    end

    private
    def set_transaction
        @transaction = Transaction.find(params[:id])
    end

    def transaction_params
        params.require(:transaction).permit(:value, :descriprion, :transaction_date, :transaction_type_id)
    end

end

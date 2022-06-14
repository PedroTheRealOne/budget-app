class TransactionsController < ApplicationController
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
    end

    # DELETE /transactions/:id
    def destroy
    end

    private
    def transaction_params
        params.require(:transaction).permit(:value, :descriprion, :transaction_date, :transaction_type_id)
    end

end

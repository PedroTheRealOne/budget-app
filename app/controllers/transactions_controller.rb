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
    end

    # PUT /transactions/:id
    def update
    end

    # DELETE /transactions/:id
    def destroy
    end
end

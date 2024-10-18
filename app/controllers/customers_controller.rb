class CustomersController < ApplicationController
  before_action :load_customer, only: %i[ show edit update destroy ]

  def index
    @customers = Customer.order(:name)
  end

  def show
  end

  def new
    @customer = Customer.new
  end

  def edit
  end

  def create
    @object = Customer.new customer_params
  end

  def update
  end

  def destroy
  end

  private

  def load_customer
    @customer = Customer.find params[:id]
  end
end

class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer =  Customer.new(customer_params)
    @customer.user = current_user
    if @customer.save
      redirect_to customers_path(@customer)
    else
      render :new
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :lastName, :cellPhone, :email, :state)
  end
end

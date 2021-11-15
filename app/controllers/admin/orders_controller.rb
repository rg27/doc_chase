class Admin::OrdersController < ApplicationController
  def index
    @orders = Admin::Order.paginate(page: params[:page], per_page: 5).order(created_at: :desc)
  end

  def show
    @orders = Admin::Order.find(params[:id])
  end

  def new
    @orders = Admin::Order.new
  end

  def edit
    @orders = Admin::Order.find(params[:id])
  end

  def create
    @orders = Admin::Order.new(admin_order_params)
    if @orders.save
      flash[:success] = "Successfully Created an order."
      redirect_to admin_orders_path
    else
      render "new"
    end
  end

  def update
    @orders = Admin::Order.find(params[:id])
    if @orders.update(admin_order_params)
      flash[:success] = "Successfully updated a order."
      redirect_to admin_orders_path
    else
      render "edit"
    end
  end

  def destroy
    @orders = Admin::Order.find(params[:id])
    @orders.destroy
    flash[:success] = "Successfully destroyed an order."
    redirect_to admin_orders_path
  end

  private
    # def set_admin_patient
    #   @patients = Admin::Order.find(params[:id])
    # end

    def admin_order_params
      params.require(:admin_order).permit(:accession_id, :external_id, :physician, :kit_no, :kit_type, :results_needed_by, :requisition_date, :end_date, :priority, :turn_around_time, :medication, :allergies, :specimen_collect_date,
         :specimen_receive_date, :collection_method, :travel_date)
    end
end

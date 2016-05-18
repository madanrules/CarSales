class CarsController < ApplicationController
  before_filter :authenticate_user!, only: [:order_car]
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  # GET /cars
  # GET /cars.json
  def index
    @cars = Car.all
  end

  # GET /cars/1
  # GET /cars/1.json
  def show
  end

  # GET /cars/new
  def new
    @car = Car.new
  end

  # GET /cars/1/edit
  def edit
  end

  # POST /cars
  # POST /cars.json
  def create
    @car = Car.new(car_params)

    respond_to do |format|
      if @car.save
        format.html { redirect_to @car, notice: 'Car was successfully created.' }
        format.json { render :show, status: :created, location: @car }
      else
        format.html { render :new }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cars/1
  # PATCH/PUT /cars/1.json
  def update
    respond_to do |format|
      if @car.update(car_params)
        format.html { redirect_to @car, notice: 'Car was successfully updated.' }
        format.json { render :show, status: :ok, location: @car }
      else
        format.html { render :edit }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    @car.destroy
    respond_to do |format|
      format.html { redirect_to cars_url, notice: 'Car was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def order_car
    if current_user
      @order = Order.create(car_id: params[:car_id], user_id: current_user.id, order_date: Time.now)
      if @order.save
        redirect_to cars_path, notice: "Your Car has been ordered"
      else
        redirect_to cars_path, notice: "order was not placed"
      end
    else
      redirect_to cars_path, notice: "Your are not buyer! Pleas e sign in to buyer"
    end
  end

  def search_model_type
    if params[:model_type].present?
      @model_cars = Car.where(model_type: params[:model_type])
    end 
    respond_to do |format|
      format.js
    end
  end

  def search_date
    if params[:id].present?
      if params[:id] == "0"
        @cars = Car.order(created_at: :desc)
      elsif params[:id] == "1"
        @cars = Car.order(created_at: :asc)
      end
    end
    respond_to do |format|
      format.js
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_params
      params.require(:car).permit(:name, :year, :image, :price)
    end
end

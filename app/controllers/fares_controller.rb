class FaresController < ApplicationController
  before_action :set_fare, only: [:show, :edit, :update, :destroy]
  before_action :confirm_session, :except => [:index]
  before_action :admin_session, :except => [:index]
  # GET /fares
  # GET /fares.json
  def index
    @fares = Fare.all
  end

  # GET /fares/1
  # GET /fares/1.json
  def show
  end

  # GET /fares/new
  def new
    @fare = Fare.new
  end

  # GET /fares/1/edit
  def edit
  end

  # POST /fares
  # POST /fares.json
  def create
    @fare = Fare.new(fare_params)

    respond_to do |format|
      if @fare.save
        format.html { redirect_to @fare, notice: 'Fare was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fare }
      else
        format.html { render action: 'new' }
        format.json { render json: @fare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fares/1
  # PATCH/PUT /fares/1.json
  def update
    respond_to do |format|
      if @fare.update(fare_params)
        format.html { redirect_to @fare, notice: 'Fare was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fares/1
  # DELETE /fares/1.json
  def destroy
    @fare.destroy
    respond_to do |format|
      format.html { redirect_to fares_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fare
      @fare = Fare.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fare_params
      params.require(:fare).permit(:name, :price, :from, :to, :stopover, :category_id)
    end
end

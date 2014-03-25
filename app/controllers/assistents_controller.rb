class AssistentsController < ApplicationController
  before_action :set_assistent, only: [:show, :edit, :update, :destroy]

  # GET /assistents
  # GET /assistents.json
  def index
    @assistents = Assistent.all
  end

  # GET /assistents/1
  # GET /assistents/1.json
  def show
  end

  # GET /assistents/new
  def new
    @assistent = Assistent.new
  end

  # GET /assistents/1/edit
  def edit
  end

  # POST /assistents
  # POST /assistents.json
  def create
    @assistent = Assistent.new(assistent_params)

    respond_to do |format|
      if @assistent.save
        format.html { redirect_to @assistent, notice: 'Assistent was successfully created.' }
        format.json { render action: 'show', status: :created, location: @assistent }
      else
        format.html { render action: 'new' }
        format.json { render json: @assistent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assistents/1
  # PATCH/PUT /assistents/1.json
  def update
    respond_to do |format|
      if @assistent.update(assistent_params)
        format.html { redirect_to @assistent, notice: 'Assistent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @assistent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assistents/1
  # DELETE /assistents/1.json
  def destroy
    @assistent.destroy
    respond_to do |format|
      format.html { redirect_to assistents_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assistent
      @assistent = Assistent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assistent_params
      params.require(:assistent).permit(:first_names, :last_names, :address, :phone_number, :email, :hire_date)
    end
end

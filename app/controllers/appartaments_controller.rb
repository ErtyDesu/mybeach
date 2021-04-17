class AppartamentsController < ApplicationController
  before_action :set_appartament, only: %i[ show edit update destroy ]

  # GET /appartaments or /appartaments.json
  def index
    @appartaments = Appartament.all
  end

  # GET /appartaments/1 or /appartaments/1.json
  def show
  end

  # GET /appartaments/new
  def new
    @appartament = Appartament.new
  end

  # GET /appartaments/1/edit
  def edit
  end

  # POST /appartaments or /appartaments.json
  def create
    @appartament = Appartament.new(appartament_params)

    respond_to do |format|
      if @appartament.save
        format.html { redirect_to @appartament, notice: "Appartament was successfully created." }
        format.json { render :show, status: :created, location: @appartament }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appartament.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appartaments/1 or /appartaments/1.json
  def update
    respond_to do |format|
      if @appartament.update(appartament_params)
        format.html { redirect_to @appartament, notice: "Appartament was successfully updated." }
        format.json { render :show, status: :ok, location: @appartament }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appartament.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appartaments/1 or /appartaments/1.json
  def destroy
    @appartament.destroy
    respond_to do |format|
      format.html { redirect_to appartaments_url, notice: "Appartament was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appartament
      @appartament = Appartament.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appartament_params
      params.require(:appartament).permit(:name, :place, :address, :phone, :site, :beds, :cost)
    end
end

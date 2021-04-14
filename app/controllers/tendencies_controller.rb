class TendenciesController < ApplicationController
  before_action :set_tendency, only: %i[ show edit update destroy ]

  # GET /tendencies or /tendencies.json
  def index
    @tendencies = Tendency.all
  end

  # GET /tendencies/1 or /tendencies/1.json
  def show
  end

  # GET /tendencies/new
  def new
    @tendency = Tendency.new
  end

  # GET /tendencies/1/edit
  def edit
  end

  # POST /tendencies or /tendencies.json
  def create
    @tendency = Tendency.new(tendency_params)

    respond_to do |format|
      if @tendency.save
        format.html { redirect_to @tendency, notice: "Tendency was successfully created." }
        format.json { render :show, status: :created, location: @tendency }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tendency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tendencies/1 or /tendencies/1.json
  def update
    respond_to do |format|
      if @tendency.update(tendency_params)
        format.html { redirect_to @tendency, notice: "Tendency was successfully updated." }
        format.json { render :show, status: :ok, location: @tendency }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tendency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tendencies/1 or /tendencies/1.json
  def destroy
    @tendency.destroy
    respond_to do |format|
      format.html { redirect_to tendencies_url, notice: "Tendency was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tendency
      @tendency = Tendency.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tendency_params
      params.require(:tendency).permit(:nombre, :descripcion, :cover_photo)
    end
end

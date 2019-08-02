class TypeContractionsController < ApplicationController
  before_action :set_type_contraction, only: [:show, :edit, :update, :destroy]

  # GET /type_contractions
  # GET /type_contractions.json
  def index
    @type_contractions = TypeContraction.all
  end

  # GET /type_contractions/1
  # GET /type_contractions/1.json
  def show
  end

  # GET /type_contractions/new
  def new
    @type_contraction = TypeContraction.new
  end

  # GET /type_contractions/1/edit
  def edit
  end

  # POST /type_contractions
  # POST /type_contractions.json
  def create
    @type_contraction = TypeContraction.new(type_contraction_params)

    respond_to do |format|
      if @type_contraction.save
        format.html { redirect_to @type_contraction, notice: 'Type contraction was successfully created.' }
        format.json { render :show, status: :created, location: @type_contraction }
      else
        format.html { render :new }
        format.json { render json: @type_contraction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_contractions/1
  # PATCH/PUT /type_contractions/1.json
  def update
    respond_to do |format|
      if @type_contraction.update(type_contraction_params)
        format.html { redirect_to @type_contraction, notice: 'Type contraction was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_contraction }
      else
        format.html { render :edit }
        format.json { render json: @type_contraction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_contractions/1
  # DELETE /type_contractions/1.json
  def destroy
    @type_contraction.destroy
    respond_to do |format|
      format.html { redirect_to type_contractions_url, notice: 'Type contraction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_contraction
      @type_contraction = TypeContraction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_contraction_params
      params.require(:type_contraction).permit(:name, :variable_name, :description, :inactive, :slug)
    end
end

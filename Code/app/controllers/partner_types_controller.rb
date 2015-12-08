class PartnerTypesController < ApplicationController
  before_action :set_partner_type, only: [:show, :edit, :update, :destroy]

  # GET /partner_types
  # GET /partner_types.json
  def index
    @partner_types = PartnerType.all
  end

  # GET /partner_types/1
  # GET /partner_types/1.json
  def show
  end

  # GET /partner_types/new
  def new
    @partner_type = PartnerType.new
  end

  # GET /partner_types/1/edit
  def edit
  end

  # POST /partner_types
  # POST /partner_types.json
  def create
    @partner_type = PartnerType.new(partner_type_params)

    respond_to do |format|
      if @partner_type.save
        format.html { redirect_to @partner_type, notice: 'Partner type was successfully created.' }
        format.json { render :show, status: :created, location: @partner_type }
      else
        format.html { render :new }
        format.json { render json: @partner_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /partner_types/1
  # PATCH/PUT /partner_types/1.json
  def update
    respond_to do |format|
      if @partner_type.update(partner_type_params)
        format.html { redirect_to @partner_type, notice: 'Partner type was successfully updated.' }
        format.json { render :show, status: :ok, location: @partner_type }
      else
        format.html { render :edit }
        format.json { render json: @partner_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partner_types/1
  # DELETE /partner_types/1.json
  def destroy
    @partner_type.destroy
    respond_to do |format|
      format.html { redirect_to partner_types_url, notice: 'Partner type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partner_type
      @partner_type = PartnerType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def partner_type_params
      params.require(:partner_type).permit(:name, :description)
    end
end

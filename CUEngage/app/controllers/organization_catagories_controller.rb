class OrganizationCatagoriesController < ApplicationController
  before_action :set_organization_catagory, only: [:show, :edit, :update, :destroy]

  # GET /organization_catagories
  # GET /organization_catagories.json
  def index
    @organization_catagories = OrganizationCatagory.all
  end

  # GET /organization_catagories/1
  # GET /organization_catagories/1.json
  def show
  end

  # GET /organization_catagories/new
  def new
    @organization_catagory = OrganizationCatagory.new
  end

  # GET /organization_catagories/1/edit
  def edit
  end

  # POST /organization_catagories
  # POST /organization_catagories.json
  def create
    @organization_catagory = OrganizationCatagory.new(organization_catagory_params)

    respond_to do |format|
      if @organization_catagory.save
        format.html { redirect_to @organization_catagory, notice: 'Organization catagory was successfully created.' }
        format.json { render :show, status: :created, location: @organization_catagory }
      else
        format.html { render :new }
        format.json { render json: @organization_catagory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organization_catagories/1
  # PATCH/PUT /organization_catagories/1.json
  def update
    respond_to do |format|
      if @organization_catagory.update(organization_catagory_params)
        format.html { redirect_to @organization_catagory, notice: 'Organization catagory was successfully updated.' }
        format.json { render :show, status: :ok, location: @organization_catagory }
      else
        format.html { render :edit }
        format.json { render json: @organization_catagory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organization_catagories/1
  # DELETE /organization_catagories/1.json
  def destroy
    @organization_catagory.destroy
    respond_to do |format|
      format.html { redirect_to organization_catagories_url, notice: 'Organization catagory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization_catagory
      @organization_catagory = OrganizationCatagory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organization_catagory_params
      params.require(:organization_catagory).permit(:name, :description)
    end
end

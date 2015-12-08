class PartnerListsController < ApplicationController
  before_action :set_partner_list, only: [:show, :edit, :update, :destroy]

  # GET /partner_lists
  # GET /partner_lists.json
  def index
    @partner_lists = PartnerList.all
  end

  # GET /partner_lists/1
  # GET /partner_lists/1.json
  def show
  end

  # GET /partner_lists/new
  def new
    @partner_list = PartnerList.new
  end

  # GET /partner_lists/1/edit
  def edit
  end

  # POST /partner_lists
  # POST /partner_lists.json
  def create
    @partner_list = PartnerList.new(partner_list_params)

    respond_to do |format|
      if @partner_list.save
        format.html { redirect_to @partner_list, notice: 'Partner list was successfully created.' }
        format.json { render :show, status: :created, location: @partner_list }
      else
        format.html { render :new }
        format.json { render json: @partner_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /partner_lists/1
  # PATCH/PUT /partner_lists/1.json
  def update
    respond_to do |format|
      if @partner_list.update(partner_list_params)
        format.html { redirect_to @partner_list, notice: 'Partner list was successfully updated.' }
        format.json { render :show, status: :ok, location: @partner_list }
      else
        format.html { render :edit }
        format.json { render json: @partner_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partner_lists/1
  # DELETE /partner_lists/1.json
  def destroy
    @partner_list.destroy
    respond_to do |format|
      format.html { redirect_to partner_lists_url, notice: 'Partner list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partner_list
      @partner_list = PartnerList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def partner_list_params
      params.require(:partner_list).permit(:organization_id)
    end
end

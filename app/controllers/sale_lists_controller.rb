class SaleListsController < ApplicationController
  before_action :set_sale_list, only: [:show, :edit, :update, :destroy]

  # GET /sale_lists
  # GET /sale_lists.json
  def index
    redirect_to "/"
  end

  # GET /sale_lists/1
  # GET /sale_lists/1.json
  def show
    render layout: false
  end

  # GET /sale_lists/new
  def new
    redirect_to "/"
  end

  # GET /sale_lists/1/edit
  def edit
    redirect_to "/"
  end

  # POST /sale_lists
  # POST /sale_lists.json
  def create
    redirect_to "/"
  end

  # PATCH/PUT /sale_lists/1
  # PATCH/PUT /sale_lists/1.json
  def update
    redirect_to "/"
  end

  # DELETE /sale_lists/1
  # DELETE /sale_lists/1.json
  def destroy
    redirect_to "/"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale_list
      @sale_list = SaleList.find_by_mwc_file_name(params[:mwc_file_name] + ".html")
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sale_list_params
      params.require(:sale_list).permit(:mwc_html, :mwc_file_name)
    end
end

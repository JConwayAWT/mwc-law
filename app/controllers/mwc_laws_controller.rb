class MwcLawsController < ApplicationController
  before_action :set_mwc_law, only: %i[ show edit update destroy ]

  # GET /mwc_laws or /mwc_laws.json
  def index
    @mwc_laws = MwcLaw.all
  end

  # GET /mwc_laws/1 or /mwc_laws/1.json
  def show
  end

  # GET /mwc_laws/new
  def new
    @mwc_law = MwcLaw.new
  end

  # GET /mwc_laws/1/edit
  def edit
  end

  # POST /mwc_laws or /mwc_laws.json
  def create
    @mwc_law = MwcLaw.new(mwc_law_params)

    respond_to do |format|
      if @mwc_law.save
        format.html { redirect_to @mwc_law, notice: "Mwc law was successfully created." }
        format.json { render :show, status: :created, location: @mwc_law }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mwc_law.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mwc_laws/1 or /mwc_laws/1.json
  def update
    respond_to do |format|
      if @mwc_law.update(mwc_law_params)
        format.html { redirect_to @mwc_law, notice: "Mwc law was successfully updated." }
        format.json { render :show, status: :ok, location: @mwc_law }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mwc_law.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mwc_laws/1 or /mwc_laws/1.json
  def destroy
    @mwc_law.destroy
    respond_to do |format|
      format.html { redirect_to mwc_laws_url, notice: "Mwc law was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mwc_law
      @mwc_law = MwcLaw.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mwc_law_params
      params.fetch(:mwc_law, {})
    end
end

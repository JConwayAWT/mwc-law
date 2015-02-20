class EmploymentApplicationsController < ApplicationController
  before_action :set_employment_application, only: [:show, :edit, :update, :destroy]

  # GET /employment_applications
  # GET /employment_applications.json
  def index
    @offices = []
    @offices << ["Delaware","Delaware"]
    @offices << ["District of Columbia", "District of Columbia"]
    @offices << ["Long Island","Long Island"]
    @offices << ["Maryland", "Maryland"]
    @offices << ["New Jersey","New Jersey"]
    @offices << ["New York","New York"]
    @offices << ["Pennsylvania","Pennsylvania"]
    @offices << ["Virginia", "Virginia"]

  end

  # GET /employment_applications/1
  # GET /employment_applications/1.json
  def show
  end

  # GET /employment_applications/new
  def new
    @employment_application = EmploymentApplication.new
  end

  # GET /employment_applications/1/edit
  def edit
  end

  # POST /employment_applications
  # POST /employment_applications.json
  def create
    @employment_application = EmploymentApplication.new(employment_application_params)

    respond_to do |format|
      if @employment_application.save
        # alert the appropriate person at MWC
        ApplicationMailer.new_employment_application(@employment_application.id).deliver!

        # destroy their resume to save space on the machine
        @employment_application.resume.destroy
        @employment_application.resume.clear
        @employment_application.save

        format.html { redirect_to "/", notice: 'Your employment application was received.  We will contact you shortly if we choose to proceed with your application.' }
        format.json { render :show, status: :created, location: @employment_application }
      else
        format.html { render :new, alert: 'There was an error while processing your application.  Please try again.' }
        format.json { render json: @employment_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employment_applications/1
  # PATCH/PUT /employment_applications/1.json
  def update
    respond_to do |format|
      if @employment_application.update(employment_application_params)
        format.html { redirect_to @employment_application, notice: 'Employment application was successfully updated.' }
        format.json { render :show, status: :ok, location: @employment_application }
      else
        format.html { render :edit }
        format.json { render json: @employment_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employment_applications/1
  # DELETE /employment_applications/1.json
  def destroy
    @employment_application.destroy
    respond_to do |format|
      format.html { redirect_to employment_applications_url, notice: 'Employment application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employment_application
      @employment_application = EmploymentApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employment_application_params
      params.require(:employment_application).permit(:name, :email, :message, :office_location, :resume)
    end
end

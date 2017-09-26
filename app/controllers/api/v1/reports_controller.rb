class API::V1::ReportsController < API::APIController
  before_action :set_report, only: [:show, :update, :destroy]

  swagger_controller :reports, "Report"

  swagger_api :index do
    summary "Fetches User's Reports"
    notes "This lists all the user's reports"
    response :ok, "Success", :Reports
    response :unauthorized
    response :not_acceptable, "The request you made is not acceptable"
    response :requested_range_not_satisfiable
  end
  # GET /reports
  def index
    @reports = Report.all
    render json: @reports
  end

  swagger_api :show do
    summary "Fetches a single Report"
    param :path, :id, :integer, :required, "Report id"
    response :ok, "Success", :Report
    response :unauthorized
    response :not_acceptable
    response :not_found
  end
  # GET /reports/:id
  def show
    render json: @report
  end


  swagger_api :create do
    summary "Creates a new Report"
    param :form, :report_type, :integer, :required, "Report Type id"
    param :form, :name, :string, :required, "Name"
    param :form, :start_date, :date, :required, "Start Date"
    param :form, :end_date, :date, :required, "End Date"
    param :form, :logo_enabled, :boolean, :required, "Logo Enabled"
    response :unauthorized
    response :not_acceptable
  end
  # POST /reports
  def create
    @report = Report.new(report_params)

    if @report.save
      redirect_to @report, notice: 'Report was successfully created.'
    else
      render :new
    end
  end

  swagger_api :update do
    summary "Updates an existing Report"
    param :path, :id, :integer, :required, "Report id"
    param :form, :report_type, :integer, :required, "Report Type id"
    param :form, :name, :string, :required, "Name"
    param :form, :start_date, :date, :required, "Start Date"
    param :form, :end_date, :date, :required, "End Date"
    param :form, :logo_enabled, :boolean, :required, "Logo Enabled"
    response :unauthorized
    response :not_acceptable
  end
  # PATCH/PUT /reports/:id
  def update
    if @report.update(report_params)
      redirect_to @report, notice: 'Report was successfully updated.'
    else
      render :edit
    end
  end

  swagger_api :destroy do
    summary "Deletes an existing Report"
    param :path, :id, :integer, :optional, "Report id"
    response :unauthorized
    response :not_found
  end
  # DELETE /reports/:id
  def destroy
    @report.destroy
    redirect_to reports_url, notice: 'Report was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report
      @report = Report.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def report_params
      params.require(:report).permit(:user_id, :report_type_id, :name, :start_date, :end_date, :notes, :logo_enabled)
    end
end

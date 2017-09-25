class API::V1::ReportsController < API::APIController
  before_action :set_report, only: [:show, :update, :destroy]

  swagger_controller :reports, "Report Management"

  swagger_api :index do
    summary "Fetches all Report items"
    notes "This lists all the user's reports"
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
    summary "Fetches a single Report item"
    param :path, :id, :integer, :optional, "Report Id"
    response :ok, "Success", :User
    response :unauthorized
    response :not_acceptable
    response :not_found
  end
  # GET /reports/:id
  def show
    render json: @report
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

  # PATCH/PUT /reports/:id
  def update
    if @report.update(report_params)
      redirect_to @report, notice: 'Report was successfully updated.'
    else
      render :edit
    end
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
      params.require(:report).permit(:user_id, :report_type_id, :report_type_option_ids, :name, :start_date, :end_date, :notes, :logo_enabled)
    end
end

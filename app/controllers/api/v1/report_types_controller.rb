class API::V1::ReportTypesController < API::APIController
  before_action :set_report_type, only: [:show, :update, :destroy]

  swagger_controller :report_types, "ReportType"

  swagger_api :index do
    summary "Fetches all Report Types"
    notes "This lists all the report_types"
    response :ok, "Success", :ReportTypes
    response :unauthorized
    response :not_acceptable, "The request you made is not acceptable"
    response :requested_range_not_satisfiable
  end
  # GET /report_types
  def index
    @report_types = ReportType.all
    render json: @report_types
  end

  swagger_api :show do
    summary "Fetches a single Report Type"
    param :path, :id, :integer, :required, "ReportType id"
    response :ok, "Success", :ReportType
    response :unauthorized
    response :not_acceptable
    response :not_found
  end
  # GET /report_types/:id
  def show
    render json: @report_type
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report_type
      @report_type = ReportType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def report_type_params
      params.require(:report_type).permit(:name, :description)
    end
end

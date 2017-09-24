class API::V1::ReportTypesController < API::APIController
  before_action :set_report_type, only: [:show, :update, :destroy]

  # GET /report_types
  def index
    @report_types = ReportType.all
    render json: @report_types
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

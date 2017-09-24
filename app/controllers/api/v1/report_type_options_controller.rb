class API::V1::ReportTypeOptionsController < API::APIController
  before_action :set_report_type_option, only: [:show, :update, :destroy]

  # GET /report_type_options
  def index
    @report_type_options = ReportTypeOption.all
    render json: @report_type_options
  end

  # GET /report_type_options/:id
  def show
    render json: @report_type_option
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report_type_option
      @report_type_option = ReportTypeOption.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def report_type_option_params
      params.require(:report_type_option).permit(:name, :description)
    end
end

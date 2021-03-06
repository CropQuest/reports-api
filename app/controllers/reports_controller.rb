class ReportsController < ApplicationController
  before_action :set_report, only: [:show, :edit, :update, :destroy]
  before_action :require_permission, only: [:show, :edit, :update, :destroy]

  # GET /reports
  def index
    @reports = current_user.reports
  end

  # GET /reports/1
  def show
  end

  # GET /reports/new
  def new
    @report = Report.new
    @report.start_date = Date.today - 3.days
  end

  # GET /reports/1/edit
  def edit
  end

  # POST /reports
  def create
    @report = current_user.reports.new(report_params)

    if @report.save
      redirect_to @report, notice: 'Report was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /reports/1
  def update
    if @report.update(report_params)
      redirect_to @report, notice: 'Report was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /reports/1
  def destroy
    @report.destroy
    redirect_to reports_url, notice: 'Report was successfully removed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report
      @report = Report.find(params[:id])
    end

    def require_permission
      if @report.user_id != current_user.id
        redirect_to root_url
      end
    end

    # Only allow a trusted parameter "white list" through.
    def report_params
      params.require(:report).permit(:report_type_id, :name, :start_date, :end_date, :notes, :logo_enabled)
    end
end

class Admin::ReportTypesController < ApplicationController
  before_action :require_report_admin
  before_action :set_report_type, only: [:show, :edit, :update, :destroy]

  # GET /admin/report_types
  def index
    @report_types = ReportType.all
  end

  # GET /admin/report_types/1
  def show
  end

  # GET /admin/report_types/new
  def new
    @report_type = ReportType.new
  end

  # GET /admin/report_types/1/edit
  def edit
  end

  # POST /admin/report_types
  def create
    @report_type = ReportType.new(report_type_params)

    if @report_type.save
      redirect_to admin_report_type_url(@report_type), notice: 'Report type was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/report_types/1
  def update
    if @report_type.update(report_type_params)
      redirect_to admin_report_type_url(@report_type), notice: 'Report type was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/report_types/1
  def destroy
    @report_type.destroy
    redirect_to admin_report_types_url, notice: 'Report type was successfully destroyed.'
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

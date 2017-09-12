class Admin::ReportTypeOptionsController < ApplicationController
  before_action :require_report_admin
  before_action :set_report_type_option, only: [:show, :edit, :update, :destroy]

  # GET /report_type_options
  def index
    @report_type_options = ReportTypeOption.all
  end

  # GET /report_type_options/1
  def show
  end

  # GET /report_type_options/new
  def new
    @report_type_option = ReportTypeOption.new
  end

  # GET /report_type_options/1/edit
  def edit
  end

  # POST /report_type_options
  def create
    @report_type_option = ReportTypeOption.new(report_type_option_params)

    if @report_type_option.save
      redirect_to @report_type_option, notice: 'Report type option was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /report_type_options/1
  def update
    if @report_type_option.update(report_type_option_params)
      redirect_to @report_type_option, notice: 'Report type option was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /report_type_options/1
  def destroy
    @report_type_option.destroy
    redirect_to report_type_options_url, notice: 'Report type option was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report_type_option
      @report_type_option = ReportTypeOption.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def report_type_option_params
      params.require(:report_type_option).permit(:report_type_id, :name)
    end
end

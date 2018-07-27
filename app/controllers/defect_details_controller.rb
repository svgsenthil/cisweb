class DefectDetailsController < ApplicationController
  before_action :get_defect_detail, only: [:show, :update, :destroy]

  def index
    @defect_details = DefectDetail.all()
    @defect_details = @defect_details.where(defect_id: params[:defect_id]) if params[:defect_id]
    if @defect_details
      render json: @defect_details, status: 200
    else
      render json: {errors: @defect_details.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    if @defect_detail
      render json: @defect_detail, status: 200
    else
      render json:'', status: 404
    end
  end

  def create
    @defect_detail = DefectDetail.new(defect_detail_params)
    
    #if params[:defect_detail][:picture]
    #  picture_params = params[:defect_detail][:picture]
    #  @defect_detail.add_picture(picture_params[:file_data], picture_params[:file_name])
    #end

    if @defect_detail.save
      render json: @defect_detail, status: 200
    else
      render json: {errors: @defect_detail.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    if @defect_detail.update(defect_detail_params)
      render json: @defect_detail, status: 200
    else
      render json: {errors: @defect_detail.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @defect_detail.destroy
  end

  private

  def get_defect_detail
    @defect_detail = DefectDetail.find_by(id: params[:id])
  end

  def defect_detail_params
    params.permit(:defect_id, :comment, :picture)
  end
end

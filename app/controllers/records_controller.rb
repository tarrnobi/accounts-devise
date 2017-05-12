class RecordsController < ApplicationController
  def index
    @records = current_user.records.all
  end

  def create
    @record = current_user.records.new(record_params)

    if @record.save
      render json: @record
    else
      render json: @record.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @record = current_user.records.find(params[:id])
    @record.destroy
    head :no_content
  end

  def update
    @record = current_user.records.find(params[:id])
    if @record.update(record_params)
      render json: @record
    else
      render json: @record.errors, status: :unprocessable_entity
    end
  end

  private
    def record_params
      params.require(:record).permit(:title, :amount,:date)
    end
end

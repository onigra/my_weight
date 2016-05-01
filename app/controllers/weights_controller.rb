class WeightsController < ApplicationController
  AUTHENTICATE_USER = { ENV["USER"] => ENV["PASSWORD"] }

  before_action :set_weight, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, only: [:show, :new, :edit, :update, :destroy] 

  def index
    @weights = Weight.all

    respond_to do |format|
      format.html
      format.json { render json: @weights }
    end
  end

  def show
    respond_to do |format|
      format.html
      format.json { render json: @weight }
    end
  end

  def new
    @weight = Weight.new
  end

  def edit
  end

  def create
    @weight = Weight.new(weight_params)

    respond_to do |format|
      if @weight.save
        SlackClient.new(weight_params["weight"]).post
        format.html { redirect_to @weight, notice: 'Weight was successfully created.' }
        format.json { render json: @weight, status: :created }
      else
        format.html { render action: 'new' }
        format.json { render json: @weight.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @weight.update(weight_params)
        format.html { redirect_to @weight, notice: 'Weight was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @weight.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @weight.destroy
    respond_to do |format|
      format.html { redirect_to weights_url }
      format.json { head :no_content }
    end
  end

  private

  def set_weight
    @weight = Weight.find(params[:id])
  end

  def weight_params
    params.require(:weight).permit(:weight)
  end

  def authenticate
    authenticate_or_request_with_http_digest do |name|
      AUTHENTICATE_USER[name]
    end
  end
end

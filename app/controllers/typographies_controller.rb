 class TypographiesController < ApplicationController 
  before_action :set_typography, only: [:show, :edit, :update, :destroy]

  # GET /typographies
  # GET /typographies.json
  def index
    @typographies = Typography.all
    @approved_typographies = Typography.where(include: "yes")
    @unapproved_typographies = Typography.where(include: "no")
    @current_user = current_user
  end

  # GET /typographies/1
  # GET /typographies/1.json
  def show
  end

  # GET /typographies/new
  def new
    @typography = current_user.typographies.build
    # @typography = Typography.new
  end

  # GET /typographies/1/edit
  def edit
  end

  # POST /typographies
  # POST /typographies.json
  def create
    @typography = current_user.typographies.build(typography_params)
    # @typography = Typography.new(typography_params)

    respond_to do |format|
      if @typography.save
        format.html { redirect_to @typography, notice: 'Typography was successfully created.' }
        format.json { render :show, status: :created, location: @typography }
      else
        format.html { render :new }
        format.json { render json: @typography.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typographies/1
  # PATCH/PUT /typographies/1.json
  def update
    respond_to do |format|
      if @typography.update(typography_params)
        format.html { redirect_to @typography, notice: 'Typography was successfully updated.' }
        format.json { render :show, status: :ok, location: @typography }
      else
        format.html { render :edit }
        format.json { render json: @typography.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typographies/1
  # DELETE /typographies/1.json
  def destroy
    @typography.destroy
    respond_to do |format|
      format.html { redirect_to typographies_url, notice: 'Typography was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typography
      @typography = Typography.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def typography_params
      params.require(:typography).permit(:title, :url, :source, :include, :admin, :image)
    end
 end

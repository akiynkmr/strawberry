class StrawberriesController < ApplicationController
  before_action :set_strawberry, only: [:show, :edit, :update, :destroy]

  # GET /strawberries
  # GET /strawberries.json
  def index
    @strawberries = Strawberry.all
  end

  # GET /strawberries/1
  # GET /strawberries/1.json
  def show
  end

  # GET /strawberries/new
  def new
    @strawberry = Strawberry.new
  end

  # GET /strawberries/1/edit
  def edit
  end

  # POST /strawberries
  # POST /strawberries.json
  def create
    @strawberry = Strawberry.new(strawberry_params)

    respond_to do |format|
      if @strawberry.save
        format.html { redirect_to @strawberry, notice: 'Strawberry was successfully created.' }
        format.json { render :show, status: :created, location: @strawberry }
      else
        format.html { render :new }
        format.json { render json: @strawberry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /strawberries/1
  # PATCH/PUT /strawberries/1.json
  def update
    respond_to do |format|
      if @strawberry.update(strawberry_params)
        format.html { redirect_to @strawberry, notice: 'Strawberry was successfully updated.' }
        format.json { render :show, status: :ok, location: @strawberry }
      else
        format.html { render :edit }
        format.json { render json: @strawberry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /strawberries/1
  # DELETE /strawberries/1.json
  def destroy
    @strawberry.destroy
    respond_to do |format|
      format.html { redirect_to strawberries_url, notice: 'Strawberry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_strawberry
      @strawberry = Strawberry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def strawberry_params
      params.require(:strawberry).permit(:title, :body)
    end
end

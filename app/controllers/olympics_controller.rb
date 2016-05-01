class OlympicsController < ApplicationController
  before_action :set_olympic, only: [:show, :edit, :update, :destroy]

  # GET /olympics
  # GET /olympics.json
  def index
    @olympics = Olympic.all
  end

  # GET /olympics/1
  # GET /olympics/1.json
  def show
  end

  # GET /olympics/new
  def new
    @olympic = Olympic.new
  end

  # GET /olympics/1/edit
  def edit
  end

  # POST /olympics
  # POST /olympics.json
  def create
    @olympic = Olympic.new(olympic_params)

    respond_to do |format|
      if @olympic.save
        format.html { redirect_to @olympic, notice: 'Olympic was successfully created.' }
        format.json { render :show, status: :created, location: @olympic }
      else
        format.html { render :new }
        format.json { render json: @olympic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /olympics/1
  # PATCH/PUT /olympics/1.json
  def update
    respond_to do |format|
      if @olympic.update(olympic_params)
        format.html { redirect_to @olympic, notice: 'Olympic was successfully updated.' }
        format.json { render :show, status: :ok, location: @olympic }
      else
        format.html { render :edit }
        format.json { render json: @olympic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /olympics/1
  # DELETE /olympics/1.json
  def destroy
    @olympic.destroy
    respond_to do |format|
      format.html { redirect_to olympics_url, notice: 'Olympic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_olympic
      @olympic = Olympic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def olympic_params
      params.require(:olympic).permit(:athlete_name, :event, :country, :medal_type, :event_date)
    end
end

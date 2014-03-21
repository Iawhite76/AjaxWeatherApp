class WeatherCitiesController < ApplicationController
  before_action :set_weather_city, only: [:show, :edit, :update, :destroy]

  # GET /weather_cities
  # GET /weather_cities.json
  def index
    @weather_cities = WeatherCity.all
  end

  # GET /weather_cities/1
  # GET /weather_cities/1.json
  def show
  end

  # GET /weather_cities/new
  def new
    @weather_city = WeatherCity.new
  end

  # GET /weather_cities/1/edit
  def edit
  end

  # POST /weather_cities
  # POST /weather_cities.json
  def create
    @weather_city = WeatherCity.new(weather_city_params)

    respond_to do |format|
      if @weather_city.save
        format.html { redirect_to @weather_city, notice: 'Weather city was successfully created.' }
        format.json { render action: 'show', status: :created, location: @weather_city }
        format.js {}
      else
        format.html { render action: 'new' }
        format.json { render json: @weather_city.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weather_cities/1
  # PATCH/PUT /weather_cities/1.json
  def update
    respond_to do |format|
      if @weather_city.update(weather_city_params)
        format.html { redirect_to @weather_city, notice: 'Weather city was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @weather_city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weather_cities/1
  # DELETE /weather_cities/1.json
  def destroy
    @weather_city.destroy
    respond_to do |format|
      format.html { redirect_to weather_cities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weather_city
      @weather_city = WeatherCity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weather_city_params
      params.require(:weather_city).permit(:name, :temperature)
    end
end

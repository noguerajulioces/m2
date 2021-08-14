# frozen_string_literal: true

module Admin
  class CitiesController < ApplicationController
    before_action :set_admin_city, only: %i[show edit update destroy]

    # GET /admin/cities or /admin/cities.json
    def index
      @admin_cities = City.all
    end

    # GET /admin/cities/1 or /admin/cities/1.json
    def show; end

    # GET /admin/cities/new
    def new
      @admin_city = City.new
    end

    # GET /admin/cities/1/edit
    def edit; end

    # POST /admin/cities or /admin/cities.json
    def create
      @admin_city = City.new(admin_city_params)

      respond_to do |format|
        if @admin_city.save
          format.html { redirect_to @admin_city, notice: 'City was successfully created.' }
          format.json { render :show, status: :created, location: @admin_city }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @admin_city.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /admin/cities/1 or /admin/cities/1.json
    def update
      respond_to do |format|
        if @admin_city.update(admin_city_params)
          format.html { redirect_to @admin_city, notice: 'City was successfully updated.' }
          format.json { render :show, status: :ok, location: @admin_city }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @admin_city.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /admin/cities/1 or /admin/cities/1.json
    def destroy
      @admin_city.destroy
      respond_to do |format|
        format.html { redirect_to admin_cities_url, notice: 'City was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_admin_city
      @admin_city = City.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_city_params
      params.require(:city).permit(:name, :department)
    end
  end
end

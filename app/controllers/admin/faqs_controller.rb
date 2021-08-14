# frozen_string_literal: true

module Admin
  class FaqsController < ApplicationController
    before_action :set_admin_faq, only: %i[show edit update destroy]

    # GET /admin/faqs or /admin/faqs.json
    def index
      @admin_faqs = Faq.all
    end

    # GET /admin/faqs/1 or /admin/faqs/1.json
    def show; end

    # GET /admin/faqs/new
    def new
      @admin_faq = Faq.new
    end

    # GET /admin/faqs/1/edit
    def edit; end

    # POST /admin/faqs or /admin/faqs.json
    def create
      @admin_faq = Faq.new(admin_faq_params)

      respond_to do |format|
        if @admin_faq.save
          format.html { redirect_to @admin_faq, notice: 'Faq was successfully created.' }
          format.json { render :show, status: :created, location: @admin_faq }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @admin_faq.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /admin/faqs/1 or /admin/faqs/1.json
    def update
      respond_to do |format|
        if @admin_faq.update(admin_faq_params)
          format.html { redirect_to @admin_faq, notice: 'Faq was successfully updated.' }
          format.json { render :show, status: :ok, location: @admin_faq }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @admin_faq.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /admin/faqs/1 or /admin/faqs/1.json
    def destroy
      @admin_faq.destroy
      respond_to do |format|
        format.html { redirect_to admin_faqs_url, notice: 'Faq was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_admin_faq
      @admin_faq = Faq.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_faq_params
      params.fetch(:admin_faq, {})
    end
  end
end

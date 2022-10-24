# frozen_string_literal: true

# Creates and displays all YouTeeEff objects
class YouTeeEffsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def home; end

  def show
    @you_tee_eff = YouTeeEff.find(params[:id])
  end

  def create
    @you_tee_eff = YouTeeEff.new(text: you_tee_eff_params[:text])
    respond_to do |format|
      if @you_tee_eff.save
        format.html { redirect_to you_tee_eff_path(@you_tee_eff), notice: 'UTF was successfully created.' }
      else
        format.html { render :home, status: :unprocessable_entity }
      end
    end
  end

  private

  def you_tee_eff_params
    params.permit(:text)
  end
end

class MedicationsController < ApplicationController
  def show
    @medication = Medication.find(params[:id])
    #@interaction = Interaction.find(@medication) if @medication.openfda.brand_name?
  end
end

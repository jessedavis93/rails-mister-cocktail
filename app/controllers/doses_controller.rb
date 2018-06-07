class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new

  end

  def destroy
  end

  private

  def doses_params
    params.require(:dose).permit(:description)
  end
end

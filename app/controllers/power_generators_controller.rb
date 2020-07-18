class PowerGeneratorsController < ApplicationController
  def index
    @q = PowerGenerator.ransack(params[:q])
    @power_generators = @q.result
  end

  def freight
    @power_generator = PowerGenerator.find(params[:id])
    
  end
end

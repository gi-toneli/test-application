class PowerGeneratorsController < ApplicationController
  def index
    @q = PowerGenerator.ransack(params[:q])
    @power_generators = @q.result
  end
end

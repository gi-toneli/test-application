class PowerGeneratorsController < ApplicationController
  def index
    @q = PowerGenerator.ransack(params[:q].try(:merge, m: 'or'))
    @power_generators = @q.result
    
  end
end

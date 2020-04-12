
class InterventionsController < ApplicationController
  
  before_action :authenticate_employee!

  def new
    @intervention = Intervention.new
  end

  def create
    
    @intervention = Intervention.new(intervention_params)
     #@intervention.author = intervention_params[:employee_id]
     author = current_employee.id

    if @intervention.save
      flash[:notice] = "Intervention Added "
      redirect_to :index
    else
      flash[:notice] = "Intervention Failed "
      raise StandardError, @intervention.errors.messages
      #redirect_to action:"new"
    end
  end

  private

  def intervention_params
    params.require(:intervention).permit(:author_id, :customer_id, :building_id, :battery_id, :column_id, :elevator_id, :employee_id, :report)
  end

  

end       
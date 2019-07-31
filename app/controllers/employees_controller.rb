class EmployeesController < ApplicationController



  def create
    @employee=Employee.new(employee_params)
    @employee.company=Company.find(params[:company_id])
    @employee.save
    redirect_to company_path(@employee.company)
end


private
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email, :company_id, :area_id)
  end


end

class InsuranceQueriesController < ApplicationController

  def index
    @insurance_query = InsuranceQuery.new
  end

  def create
    # insurance_query = InsuranceQuery.create(total_annual_income: params["insurance_query"]["total_annual_income"].to_i, savings: params["insurance_query"]["savings"].to_i, saved_for_retirement: params["insurance_query"]["saved_for_retirement"].to_i)
    insurance_query = InsuranceQuery.create(person_params)
    redirect_to show_path(insurance_query)
  end

  def show
    insurance_query = InsuranceQuery.find(params["id"])
    @recommendation = insurance_query.calculate_life_insurance.to_i
  end

   private
  
    def person_params
      params.require(:insurance_query).permit(:total_annual_income, :savings, :saved_for_retirement)
    end
end

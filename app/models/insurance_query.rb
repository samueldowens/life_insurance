class InsuranceQuery < ActiveRecord::Base

  def calculate_life_insurance
    self.total_annual_income * 10 * 0.7 - (self.savings + self.saved_for_retirement)
  end

end

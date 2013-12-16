class InsuranceQuery < ActiveRecord::Base

  def calculate_life_insurance
    self.annual_income * 10 * 0.7 - (self.savings + self.saved_for_retirement)
  end
  #45,155,154

end

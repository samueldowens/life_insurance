class InsuranceQueriesController < ApplicationController

  def index
    @insurance_query = InsuranceQuery.new
  end

  def create
    binding.pry
  end
end

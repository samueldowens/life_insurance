class CreateInsuranceQueries < ActiveRecord::Migration
  def change
    create_table :insurance_queries do |t|
      t.integer :total_annual_income
      t.integer :savings
      t.integer :saved_for_retirement
      t.timestamps
    end
  end
end

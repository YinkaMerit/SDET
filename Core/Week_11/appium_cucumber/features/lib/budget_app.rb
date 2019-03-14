require_relative 'pages/home_page.rb'
require_relative 'pages/budget_page.rb'

module BudgetApp

  def homepage
    Homepage.new($driver)
  end

  def budgetpage
    Budgetpage.new($driver)
  end

end

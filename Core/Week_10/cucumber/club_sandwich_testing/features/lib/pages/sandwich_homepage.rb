class SandwichHomepage

  include Capybara::DSL

  HOMEPAGE_URL = '/'
  SANDWICH_CONTENT = '.content'

    def visit_homepage
      visit(HOMEPAGE_URL)
    end

    def click_sandwich sandwich
      click_link(sandwich)
    end

    def count_sandwich
      find_all(SANDWICH_CONTENT).length
    end
end

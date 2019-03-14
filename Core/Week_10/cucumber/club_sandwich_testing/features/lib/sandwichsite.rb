require_relative 'pages/sandwich_homepage'
require_relative 'pages/sandwich_showpage'
require_relative 'pages/sandwich_editpage'

module SandwichSite

  def sandwich_homepage
    SandwichHomepage.new
  end

  def sandwich_showpage
    SandwichShowpage.new
  end

  def sandwich_editpage
    SandwichEditpage.new
  end

end

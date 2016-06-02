# frozen_string_literal: true
# page object for home page
class Home
  include Capybara::DSL

  def visible?
    has_css?('img[alt = CONEMO]')
  end

  def return_home
    find('.glyphicon-home').click
  end
end

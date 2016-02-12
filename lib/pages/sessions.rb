class Sessions
  include Capybara::DSL

  def open
    click_on 'Sesiones'
  end
end

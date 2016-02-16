class Sessions
  include Capybara::DSL

  def open
    click_on 'Sesiones'
  end
  
  def update_start_date_by(days)
    execute_script("localStorage.setItem('startDate', \'#{DateTime.now - days}\')")
  end
end

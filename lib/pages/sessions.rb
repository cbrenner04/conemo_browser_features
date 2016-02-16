class Sessions
  include Capybara::DSL

  def open_menu
    click_on 'Sesiones'
  end

  def has_menu_title?
    has_css?('h1', text: 'Sesiones')
  end

  def start_session_from_home
    click_on 'Inicio'
  end
  
  def update_start_date_by(days)
    execute_script("localStorage.setItem('startDate'," \
                   " \'#{DateTime.now - days}\')")
  end

  def has_title_present_on_home?(session)
    has_css?('.main-title', text: session.title)
  end

  def has_session_present?(session)
    has_css?('.well', text: session.title)
  end

  def open_session(session)
    find('.well', text: session.title).find('.btn', text: 'Inicio').click
  end

  def has_unread_sessions?(num)
    has_css?('.label', text: 'No leído', count: num)
  end

  def read_session(num)
    all('.btn', text: 'Inicio')[num].click
  end

  def scroll_to_and_click_home_button
    begin
      tries ||= 10
      execute_script('window.scrollBy(0,1000)')
      find('.glyphicon-home').click
    rescue Capybara::ElementNotFound,
           Selenium::WebDriver::Error::ElementNotVisibleError
      retry unless(tries -= 1).zero?
    end
  end
end

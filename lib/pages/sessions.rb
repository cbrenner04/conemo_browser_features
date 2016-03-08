# page object for sessions
class Sessions
  include Capybara::DSL

  def initialize
    @activity ||= [
      'Escuchar música',
      'Llamar a un amigo o familiar',
      'Hacer una caminata corta',
      'Leer un libro',
      'Cocinar algo',
      'Dibujar o pintar',
      'Arreglarte',
      'Ver una película',
      'Cantar',
      'Conversar con tu vecino',
      'Tejer',
      'Hacer jardinería'
    ].sample
  end

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

  def scroll_to_last_slide
    tries ||= 10
    execute_script('window.scrollBy(0,1000)')
    find('.glyphicon-home')
  rescue Capybara::ElementNotFound,
         Selenium::WebDriver::Error::ElementNotVisibleError
    retry unless (tries -= 1).zero?
  end

  def scroll_to_and_click_home_button
    tries ||= 10
    execute_script('window.scrollBy(0,1000)')
    find('.glyphicon-home').click
  rescue Capybara::ElementNotFound,
         Selenium::WebDriver::Error::ElementNotVisibleError
    retry unless (tries -= 1).zero?
  end

  def plan_activity
    select @activity, from: 'planned-activity-name'
  end

  def select_home_button
    find('.glyphicon-home').click
  end

  def respond_yes_to_planning_feedback
    has_text? "¿Pudiste hacerlo #{@activity}?"
    choose 'sí'
    has_text? '¡Excelente! ¿Cuánto te gustó hacer la actividad? Elige la ' \
              'respuesta que mejor describe tu experiencia con la activid' \
              'ad que hiciste.'
    response_1 = [
      '1 = No me gustó para nada',
      '2 = No me gustó',
      '3 = Ni me gustó ni me desagradó',
      '4 = Me gustó',
      '5 = Me gustó mucho'
    ].sample
    response_2 = [
      '1 = Muy insatisfecho/a',
      '2 = Insatisfecho/a',
      '3 = Ni satisfecho/a ni insatisfecho/a',
      '4 = Satisfecho/a',
      '5 = Muy satisfecho/a'
    ].sample
    select response_1, from: 'reported-activity-happiness'
    select response_2, from: 'reported-activity-worthwhile'
  end

  def respond_no_to_planning_feedback
    has_text? "¿Pudiste hacerlo #{@activity}?"
    choose 'no'
    has_text? 'Ser más activo te ayudará a sentirte mejor y a tener una vida' \
              ' más sana y feliz. Recuerda que todavía puedes seleccionar ot' \
              'ra actividad si quieres e intentar de nuevo. Lo importante es' \
              ' seguir intentando.'
  end
end

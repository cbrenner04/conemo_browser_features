# frozen_string_literal: true
# page object for sessions
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
    sleep(1)
    start_date = (Date.today - days)
    update_data(
      'participant_start_dates', 12,
      "{uuid: '722811d8-d5df-40f6-b1b3-5b685e530a9e', is_dirty: true, " \
      'client_created_at: 1464978552245, client_updated_at: 1464978552245, ' \
      "date: '#{start_date}'}"
    )
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

  def scroll_down
    execute_script('window.scrollBy(0,1000)')
  end

  def click_next
    all('.navigation-button').last.click
  end

  def click_previous
    first('.navigation-button').click
  end

  def go_back
    execute_script('window.history.back()')
  end

  def click_through_lesson
    unless has_css?('.glyphicon-home')
      loop do
        click_next
        break if has_css?('.glyphicon-home')
      end
    end
  end

  def plan_activity
    @activity ||= ['Escuchar música',
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
                   'Hacer jardinería'].sample
    select @activity, from: 'planned-activity-name'
  end

  def select_home_button
    find('.glyphicon-home').click
  end

  def update_planned_activity(planned_date:, follow_up_date:)
    sleep(1)
    update_data(
      'planned_activities', 14,
      "{uuid: '722811d8-d5df-40f6-b1b3-5b685e530a9e', is_dirty: true, " \
      "client_created_at: #{planned_date.strftime('%Q')}, client_updated_at: " \
      "#{planned_date.strftime('%Q')}, follow_up_at: " \
      "#{follow_up_date.strftime('%Q')}, how_worthwhile: null, is_complete: " \
      'null, is_help_wanted: null, lesson_guid: ' \
      "'f584a39b-c9b2-4a2f-9aff-f177fd44b85b', level_of_happiness: null, " \
      "name: '#{@activity}', planned_at: #{planned_date.strftime('%Q')}}"
    )
    execute_script('window.location.reload()')
  end

  def has_feedback_question?
    has_text?("¿Pudiste #{@activity}?") && has_css?('.feedback')
  end

  def has_no_response_alert?
    has_text?('Aún no has hecho tu selección. Por favor, presiona el rectá' \
              'ngulo blanco y selecciona una de las opciones de la lista a' \
              'ntes de pasar a la siguiente página.') &&
      has_css?('.no-response')
  end

  def respond_yes_to_planning_feedback
    first('.btn').click
    click_next
  end

  def has_yes_feedback_follow_up_questions?
    has_text?('¡Excelente! ¿Cuánto te gustó hacer la actividad? Elige la ' \
              'respuesta que mejor describe tu experiencia con la activid' \
              "ad que hiciste. #{responses_1.join(' ')} ¿Qué tan satisfe" \
              'cho/a te sentiste después de hacer la actividad? ' \
              "#{responses_2.join(' ')}") &&
      has_css?('.feedback')
  end

  def respond_to_feedback_follow_up_questions
    select responses_1.sample, from: 'reported-activity-happiness'
    select responses_2.sample, from: 'reported-activity-worthwhile'
  end

  def respond_no_to_planning_feedback
    all('.btn')[1].click
    click_next
  end

  def has_no_feedback_follow_up?
    has_text? 'Ser más activo te ayudará a sentirte mejor y a tener una vida' \
              ' más sana y feliz. Recuerda que todavía puedes seleccionar ot' \
              'ra actividad si quieres e intentar de nuevo. Lo importante es' \
              ' seguir intentando.'
  end

  private

  def update_data(table_name, key, new_data)
    sleep(1)
    execute_script(
      "var openRequest = indexedDB.open('conemo');
        openRequest.onsuccess = function(event) {

          var db = event.target.result;

          var startDateObjectStore = db.transaction(['#{table_name}'],
                                                    'readwrite')
                                       .objectStore('#{table_name}');

          var request = startDateObjectStore.get(#{key});

          request.onsuccess = function(event) {

            var data = request.result;

            data.value = #{new_data};

            startDateObjectStore.put(data);
          };
        };"
    )
    execute_script('window.location.reload()')
  end

  def responses_1
    @responses_1 ||= ['1 = No me gustó para nada',
                      '2 = No me gustó',
                      '3 = Ni me gustó ni me desagradó',
                      '4 = Me gustó',
                      '5 = Me gustó mucho']
  end

  def responses_2
    @responses_2 ||= ['1 = Muy insatisfecho/a',
                      '2 = Insatisfecho/a',
                      '3 = Ni satisfecho/a ni insatisfecho/a',
                      '4 = Satisfecho/a',
                      '5 = Muy satisfecho/a']
  end
end

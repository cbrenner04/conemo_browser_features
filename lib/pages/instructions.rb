# frozen_string_literal: true
# page object for instructions page
class Instructions
  include Capybara::DSL

  def open
    click_on 'Instrucciones'
  end

  def present?
    has_text? INSTRUCTIONS
  end

  INSTRUCTIONS = 'Instrucciones Cómo usar el programa CONEMO Durante 3 días ' \
    'fijos por semana recibirás una nueva sesión del programa CONEMO. Para' \
    ' verificar si hay una nueva sesión disponible, revisa todos los días o ' \
    'al menos cada dos días si el símbolo de una nueva notificación está ' \
    'presente en la esquina superior izquierda del celular. Cuando recibes ' \
    'una nueva sesión puedes apretar el símbolo de la notificación o ' \
    'directamente el símbolo de CONEMO para abrir el programa. Para entrar a ' \
    'la nueva sesión, aprieta “Inicio” en la pantalla de inicio de CONEMO. ' \
    'Si no pudiste entrar a dos sesiones seguidas de CONEMO, la enfermera te ' \
    'contactará para saber si tuviste alguna dificultad. Cómo solicitar ayuda' \
    ' Si en algún momento necesitas ayuda con el programa, el celular o ' \
    'tienes preguntas sobre el contenido de las sesiones, presiona el botón ' \
    '“Solicitar ayuda” en la pantalla principal del programa CONEMO. La ' \
    'enfermera se pondrá en contacto contigo tan pronto como sea posible. La ' \
    'enfermera no podrá responder a preguntas sobre tu salud física o ' \
    'emocional. En estos casos, consulta directamente con un doctor o ' \
    'enfermera en tu centro de salud. Si tuvieras una emergencia médica o si ' \
    'te estás sintiendo muy mal, por favor acércate a la emergencia más ' \
    'cercana. Cómo acceder a sesiones anteriores Si quieres volver a leer ' \
    'sesiones anteriores (de días pasados), aprieta el botón “Sesiones” en ' \
    'la pantalla principal de CONEMO. Si no hiciste una o más sesiones y ya ' \
    'has recibido la siguiente sesión, aprieta el botón “Sesiones” y realiza' \
    ' primero aquellas sesiones que aún no has finalizado (marcadas como no ' \
    'leídas) y luego ve a la sesión más reciente. Cómo revisar la sesión de ' \
    'entrenamiento La sesión de entrenamiento que hiciste en la primera cita' \
    ' con la enfermera está disponible en “Sesiones”. Es la primera sesión de' \
    ' la lista de sesiones.'
end

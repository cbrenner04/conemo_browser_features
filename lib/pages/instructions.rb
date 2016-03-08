# page object for instructions page
class Instructions
  include Capybara::DSL

  def open
    click_on 'Instrucciones'
  end

  def present?
    has_text? 'Instrucciones Cómo usar el programa CONEMO Durante 3 días fi' \
              'jos por semana recibirás una nueva sesión del programa CONEMO' \
              '. Para verificar si hay una nueva sesión disponible, revisa t' \
              'odos los días o al menos cada dos días si el símbolo de una n' \
              'ueva notificación está presente en la esquina superior izquie' \
              'rda del celular. Cuando recibes una nueva sesión puedes apret' \
              'ar el símbolo de la notificación o directamente el símbolo de' \
              ' CONEMO para abrir el programa. Para entrar a la nueva sesión' \
              ', aprieta “Inicio” en la pantalla de inicio de CONEMO. Si no ' \
              'pudiste entrar a dos sesiones seguidas de CONEMO, la enfermer' \
              'a te contactará para saber si tuviste alguna dificultad. Cómo' \
              ' pedir ayuda Si en algún momento necesitas ayuda con el progr' \
              'ama, el celular o tienes preguntas sobre el contenido de las ' \
              'sesiones, presiona el botón “Pedir ayuda” en la pantalla prin' \
              'cipal del programa CONEMO. La enfermera se pondrá en contacto' \
              ' contigo tan pronto como sea posible. La enfermera no podrá r' \
              'esponder a preguntas sobre tu salud física o emocional. En es' \
              'tos casos, consulta directamente con un doctor o enfermera en' \
              ' tu centro de salud. Si tuvieras una emergencia médica o si t' \
              'e estás sintiendo muy mal, por favor acércate a la emergencia' \
              ' más cercana. Cómo acceder a sesiones anteriores Si quieres v' \
              'olver a leer sesiones anteriores (de días pasados), aprieta e' \
              'l botón “Sesiones” en la pantalla principal de CONEMO. Si no ' \
              'hiciste una o más sesiones y ya has recibido la siguiente ses' \
              'ión, aprieta el botón “Sesiones” y realiza primero aquellas s' \
              'esiones que aún no has finalizado (marcadas como no leídas) y' \
              ' luego ve a la sesión más reciente. Cómo revisar la sesión de' \
              ' entrenamiento La sesión de entrenamiento que hiciste en la p' \
              'rimera cita con la enfermera está disponible en “Sesiones”. E' \
              's la primera sesión de la lista de sesiones.'
  end
end

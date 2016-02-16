class Sessions
  # page object for session 18
  class SessionEighteen
    include Capybara::DSL

    def present?
      has_css?('.well', text: 'Sesión final')
    end

    def open
      find('.well', text: 'Sesión final').find('.btn', text: 'Inicio').click
    end

    def has_session_content?
      has_text?('¡Continúa realizando las actividades que te hicieron sentir' \
                ' mejor! Tener un estilo de vida saludable y lograr cambios ' \
                'importantes requieren de tiempo y de esfuerzo. Si continúas' \
                ' haciendo tus actividades y usando las habilidades que has ' \
                'aprendido hasta ahora, tendrás una mejor salud física y emo' \
                'cional. Ésta es la última sesión de CONEMO. Esperamos que p' \
                'articipar en este programa te haya servido para sentirte me' \
                'jor. Si quieres revisar alguna de las sesiones nuevamente, ' \
                'estarán todas a tu disposición en este mismo programa. Dent' \
                'ro de poco te contactaramos para programar una cita para qu' \
                'e puedas reunirte con el equipo de investigación del proyec' \
                'to. El equipo de investigación quiere saber cómo estás y có' \
                'mo fue tu experiencia de participar en nuestro programa. Al' \
                ' final de la conversación deberás entregar el teléfono que ' \
                'has usado durante estas semanas en el programa. Esperamos q' \
                'ue participar te haya servido y que te sientas mejor ahora.' \
                ' ¡Sigue para adelante realizando tus actividades diarias!')
    end
  end
end

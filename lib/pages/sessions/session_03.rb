class Sessions
  # page object for session 3
  class SessionThree
    include Capybara::DSL

    def present?
      has_css?('.well', text: '¿Qué quieres lograr con CONEMO?')
    end

    def open
      find('.well', text: '¿Qué quieres lograr con CONEMO?')
        .find('.btn', text: 'Inicio').click
    end

    def has_session_content?
      has_text?('Son muchas las cosas que puedes hacer para ayudarte a senti' \
                'rte mejor. Una de ellas es aumentar la cantidad de activida' \
                'des placenteras y saludables en tu vida. Esto ha ayudado a ' \
                'muchas personas a sentirse más felices y satisfechas con su' \
                ' vida. Entendemos que eres una persona ocupada. Por eso est' \
                'e programa está diseñado para que te tome solo algunos minu' \
                'tos a la semana. ¡Tú eliges las actividades y el ritmo para' \
                ' realizarlas! Selecciona el objetivo que te gustaría lograr' \
                ' al terminar este programa:')
    end
  end
end

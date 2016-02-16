class Sessions
  # page object for session 11
  class SessionEleven
    include Capybara::DSL

    def present?
      has_css?('.well', text: 'Haz las cosas a tu propio ritmo')
    end

    def open
      find('.well', text: 'Haz las cosas a tu propio ritmo')
        .find('.btn', text: 'Inicio').click
    end

    def has_session_content?
      has_text?('Cuando te sientas sin energía o con mucho cansancio, es imp' \
                'ortante intentar hacer las cosas más despacio, un paso a la' \
                ' vez. Eso significa que vayas a tu propio ritmo y que plani' \
                'fiques tus actividades de tal manera que no tengas que hace' \
                'r todo al mismo tiempo, sino poco a poco. También significa' \
                ' saber con anticipación cuándo estarás con muchas tareas y ' \
                'asegurarte de no empezar a hacer más cosas de las que puede' \
                's manejar. Cuidarte es aprender a conocer y respetar tus pr' \
                'opios límites.')
    end
  end
end

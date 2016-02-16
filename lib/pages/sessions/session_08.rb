class Sessions
  # page object for session 8
  class SessionEight
    include Capybara::DSL

    def title
      'Puede ser difícil comenzar'
    end

    def has_session_content?
      has_text?('Sabemos que empezar a hacer actividades nuevas puede ser di' \
                'fícil, aún siendo actividades placenteras. En estos momento' \
                's es posible que pienses: ¨No tengo ganas en hacer nada¨ o ' \
                '¨debería usar mi tiempo en cosas más importantes¨. Estos pe' \
                'nsamientos son comunes cuando nos piden hacer actividades q' \
                'ue no están en nuestra rutina. Si no estás segura o seguro ' \
                'de comenzar una nueva actividad, tómate unos minutos para r' \
                'ecordar tus objetivos para este programa. Realizar activida' \
                'des o ser una persona activa puede ser el primer paso hacia' \
                ' tener una vida más saludable y feliz.')
    end
  end
end

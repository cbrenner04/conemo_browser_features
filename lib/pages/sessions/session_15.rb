class Sessions
  # page object for session 15
  class SessionFifteen
    include Capybara::DSL

    def title
      '¡No te olvides de tu objetivo!'
    end

    def has_session_content?
      has_text?('Alcanzar tu objetivo te ayudará a sentirte mejor y a tener ' \
                'una vida más saludable. Ahora que tienes una lista de activ' \
                'idades, planea cuándo las vas a hacer. Recuerda lo bien que' \
                ' te sentiste cuando hiciste alguna de las tareas que habías' \
                ' planeado. ¡Por eso, continúa!')
    end
  end
end

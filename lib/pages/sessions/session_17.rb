class Sessions
  # page object for session 17
  class SessionSeventeen
    include Capybara::DSL

    def present?
      has_css?('.well', text: '¡Continúa con tu rutina!')
    end

    def open
      find('.well', text: '¡Continúa con tu rutina!')
        .find('.btn', text: 'Inicio').click
    end

    def has_session_content?
      has_text?('Las cosas que son realmente importantes en nuestra vida req' \
                'uieren de tiempo y esfuerzo para ser alcanzadas. Cambiar tu' \
                ' estilo de vida no es fácil. Necesitas hacer una rutina y c' \
                'ontinuar con ella a pesar de que tengas imprevistos y dific' \
                'ultades. Solo aquello que hagas con frecuencia, se converti' \
                'rá en una costumbre. ¡Pasito a pasito se construye algo gra' \
                'nde!')
    end
  end
end

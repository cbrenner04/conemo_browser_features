class Sessions
  # page object for session 1
  class SessionOne
    include Capybara::DSL

    def open
      find('.well', text: ' ¡Bienvenido a CONEMO!')
        .find('.btn', text: 'Inicio').click
    end
  end
end

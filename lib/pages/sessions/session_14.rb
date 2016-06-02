# frozen_string_literal: true
class Sessions
  # page object for session 14
  class SessionFourteen
    include Capybara::DSL

    def title
      '¡Un paso a la vez!'
    end

    def has_session_content?
      has_text?('¡Un paso a la vez! Para iniciar el vídeo, por favor, presio' \
                'na el triángulo debajo del vídeo. Si esta semana elegiste u' \
                'na actividad para mejorar tu salud, pero ésta es muy difíci' \
                'l o muy grande, recuerda que puedes dividirla en pequeños p' \
                'asos o pequeñas tareas y escoger una para comenzar. Si ya h' \
                'as realizado la actividad elegida para esta semana, ¿por qu' \
                'é no eliges otra para practicar la nueva estrategia que aca' \
                'bas de aprender? Inserta acá la actividad elegida, luego, e' \
                'n el calendario, indica la fecha y la hora en la que planea' \
                's realizarla.')
    end
  end
end

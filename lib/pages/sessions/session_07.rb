# frozen_string_literal: true
class Sessions
  # page object for session 7
  class SessionSeven
    include Capybara::DSL

    def title
      'Planeando actividades para la semana.'
    end

    def has_session_content?
      has_text?('¡Planeando actividades para la semana! Para iniciar el víde' \
                'o, por favor, presiona el triángulo debajo del vídeo. Tómat' \
                'e unos minutos para pensar qué actividad placentera te gust' \
                'aría hacer esta semana. Elige una actividad que puedas hace' \
                'r esta semana. Puede ser una actividad sencilla o pequeña. ' \
                'Mira la siguiente lista de actividades placenteras y elige ' \
                'una. Escuchar música Tejer, bordar o coser Salir a caminar ' \
                'Participar en actividades de la comunidad Hacer deporte Jun' \
                'tarse con amigos Pasar tiempo con la familia Salir a comer ' \
                'con la familia o amigos Meditación Ir a la iglesia Hacer un' \
                'a parrillada con amigos o familia Viajar, ir a la playa o a' \
                'l campo Leer un libro Cocinar Salir en la noche a divertirs' \
                'e Hacer compras Ir al cine o al teatro Aprender algo nuevo ' \
                '(un idioma, un deporte, algo creativo, etc.) Hacer manualid' \
                'ades Trabajar como voluntario ¿Qué día planeas realizar la ' \
                'actividad? Coloca la fecha y hora de cuándo quieres realiza' \
                'rlas en el calendario abajo.')
    end
  end
end

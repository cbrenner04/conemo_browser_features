class Sessions
  # page object for session 2
  class SessionTwo
    include Capybara::DSL

    def present?
      has_css?('.well',
               text: 'Estar activo te ayudará a tener una vida más saludable')
    end

    def open
      find('.well',
           text: 'Estar activo te ayudará a tener una vida más saludable')
        .find('.btn', text: 'Inicio').click
    end

    def has_session_content?
      has_text?('Este programa te ayudará a tener una vida más saludable y f' \
                'eliz. El programa es sencillo, pero tendrás que esforzarte ' \
                'un poco y dedicarle algunos minutos a la semana. Te enseñar' \
                'emos algunas habilidades que han ayudado a muchas personas ' \
                'a disfrutar más de la vida. Cuando las personas se sienten ' \
                'desanimadas o decaídas se vuelven menos activas. Quizás alg' \
                'unas cosas que antes hacías sin dificultad, ahora requieren' \
                ' de ti un esfuerzo mucho más grande. Nos referimos a activi' \
                'dades que haces todos los días, como trabajar, hacer los qu' \
                'ehaceres de la casa, tomar tus medicamentos o ir al doctor.' \
                ' Éste programa te ayudará a superar estas dificultades y a ' \
                'retomar estas actividades que son buenas para tu bienestar ' \
                'y tu salud. Piensa en alguna actividad que antes disfrutaba' \
                's mucho pero que has dejado de hacer o no haces con la mism' \
                'a frecuencia. También pueden ser actividades saludables que' \
                ' antes disfrutabas, pero que últimamente has descuidado, co' \
                'mo por ejemplo hacer deporte o comer comidas sanas. Mira la' \
                ' siguiente lista de actividades placenteras y elige algunas' \
                '. Escuchar música Tejer, bordar o cocer Salir a caminar Par' \
                'ticipar en actividades de la comunidad Hacer deporte Juntar' \
                'se con amigos Pasar tiempo con la familia Salir a comer con' \
                ' la familia o amigos Meditación Ir a la iglesia Hacer una p' \
                'arrillada con amigos o familia Viajar, ir a la playa o al c' \
                'ampo Leer un libro Cocinar Salir en la noche a divertirse H' \
                'acer compras Ir al cine o al teatro Aprender algo nuevo (un' \
                ' idioma, un deporte, algo creativo, etc.) Hacer manualidade' \
                's Trabajar como voluntario Comer comidas sanas Gracias por ' \
                'compartir esta información con nosotros. Más adelante te da' \
                'remos algunas ideas para que estas actividades sean nuevame' \
                'nte parte de tu vida.')
    end
  end
end

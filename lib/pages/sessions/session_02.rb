# frozen_string_literal: true
class Sessions
  # page object for session 2
  class SessionTwo
    include Capybara::DSL

    def title
      'Estar activo te ayudará a tener una vida más saludable'
    end

    def has_session_content?
      has_text? CONTENT
    end

    CONTENT = 'Este programa te ayudará a tener una vida más saludable y fel' \
      'iz. El programa es sencillo, pero tendrás que esforzarte un poco y de' \
      'dicarle algunos minutos a la semana. Te enseñaremos algunas habilidad' \
      'es que han ayudado a muchas personas a disfrutar más de la vida. Cuan' \
      'do las personas se sienten desanimadas o decaídas se vuelven menos ac' \
      'tivas. Quizás algunas cosas que antes hacías sin dificultad, ahora re' \
      'quieren de ti un esfuerzo mucho más grande. Nos referimos a actividad' \
      'es que haces todos los días, como trabajar, hacer los quehaceres de l' \
      'a casa, tomar tus medicamentos o ir al doctor. Éste programa te ayuda' \
      'rá a superar estas dificultades y a retomar estas actividades que son' \
      ' buenas para tu bienestar y tu salud. Piensa en alguna actividad que ' \
      'antes disfrutabas mucho pero que has dejado de hacer o no haces con l' \
      'a misma frecuencia. También pueden ser actividades saludables que ant' \
      'es disfrutabas, pero que últimamente has descuidado, como por ejemplo' \
      ' hacer deporte o comer comidas sanas. Mira la siguiente lista de acti' \
      'vidades placenteras y elige algunas. Escuchar música Tejer, bordar o ' \
      'cocer Salir a caminar Participar en actividades de la comunidad Hacer' \
      ' deporte Juntarse con amigos Pasar tiempo con la familia Salir a come' \
      'r con la familia o amigos Meditación Ir a la iglesia Hacer una parril' \
      'lada con amigos o familia Viajar, ir a la playa o al campo Leer un li' \
      'bro Cocinar Salir en la noche a divertirse Hacer compras Ir al cine o' \
      ' al teatro Aprender algo nuevo (un idioma, un deporte, algo creativo,' \
      ' etc.) Hacer manualidades Trabajar como voluntario Comer comidas sana' \
      's Gracias por compartir esta información con nosotros. Más adelante t' \
      'e daremos algunas ideas para que estas actividades sean nuevamente pa' \
      'rte de tu vida.'
  end
end

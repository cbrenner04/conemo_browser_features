# frozen_string_literal: true
class Sessions
  # page object for session 4
  class SessionFour
    include Capybara::DSL

    def title
      'Realizar actividades placenteras nos hace sentir bien.'
    end

    def has_session_content?
      has_text?('Las actividades placenteras son aquellas que nos hacen sent' \
                'ir bien. Para algunas personas es escuchar música, para otr' \
                'as es pasar tiempo con los amigos o la familia, o salir a c' \
                'aminar. Revisa la siguiente lista de actividades y escoge 2' \
                ' o 3 actividades placenteras que antes hacías con frecuenci' \
                'a, PERO que ya NO estás haciendo. Escuchar música Tejer, bo' \
                'rdar o cocer Salir a caminar Participar en actividades de l' \
                'a comunidad Hacer deporte Juntarse con amigos Pasar tiempo ' \
                'con la familia Salir a comer con la familia o amigos Medita' \
                'ción Ir a la iglesia Hacer una parrillada con amigos o fami' \
                'lia Viajar, ir a la playa o al campo Leer un libro Cocinar ' \
                'Salir en la noche a divertirse Hacer compras Ir al cine o a' \
                'l teatro Aprender algo nuevo (un idioma, un deporte, algo c' \
                'reativo, etc.) Hacer manualidades Trabajar como voluntario ' \
                'Durante los próximos días, fíjate si es que tienes la oport' \
                'unidad de hacerlas ¡Recuerda estas oportunidades!')
    end
  end
end

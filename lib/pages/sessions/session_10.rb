class Sessions
  # page object for session 10
  class SessionTen
    include Capybara::DSL

    def present?
      has_css?('.well',
               text: 'Cumplir con nuestros deberes nos hace sentir aliviados')
    end

    def open
      find('.well',
           text: 'Cumplir con nuestros deberes nos hace sentir aliviados')
        .find('.btn', text: 'Inicio').click
    end

    def has_session_content?
      has_text?('La semana pasada intentamos encontrar las actividades que t' \
                'e daban más placer o alegría. Ahora queremos ayudarte a pen' \
                'sar en deberes y tareas. Estas pueden ser también placenter' \
                'as o divertidas, pero sobre todo te hacen sentir bien por h' \
                'aberlas realizado. Un buen inicio es empezar con cosas que ' \
                'te parezcan fáciles de hacer y que creas que puedes lograr.' \
                ' Poco a poco ganarás la confianza necesaria para ir haciend' \
                'o actividades más complejas. ¿Qué deberes y tareas puedes h' \
                'acer en los siguientes días? Puede ser algo muy sencillo, l' \
                'o importante es empezar. A continuación te mostramos una li' \
                'sta con ejemplos de actividades que a veces uno debe cumpli' \
                'r. Estas actividades pueden ser distintas para cada persona' \
                '. Luego de elegir tu actividad, debes abrir el calendario. ' \
                'Indica la fecha y la hora en la que planeas realizar la act' \
                'ividad elegida.')
    end
  end
end

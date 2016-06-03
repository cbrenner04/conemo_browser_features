# frozen_string_literal: true
class Sessions
  # page object for session 1
  class SessionOne
    include Capybara::DSL

    def title
      '¡Bienvenido a CONEMO!'
    end

    def has_slide_1_content?
      has_text? '¡Bienvenido a CONEMO! Este programa fue desarrollado para a' \
                'yudarte a mejorar tu salud física y emocional. Cuando tenem' \
                'os algún problema de salud, como diabetes o hipertensión, e' \
                's común que nos sintamos desanimados o con poca energía par' \
                'a hacer las cosas.'
    end

    def has_slide_2_content?
      has_text? 'Por eso, a veces dejamos de hacer nuestras actividades y ot' \
                'ras veces dejamos cosas importantes sin terminar. El objeti' \
                'vo de CONEMO es ayudarte a que mejores tu salud física y em' \
                'ocional, practicando actividades que te harán sentir mas sa' \
                'no, fuerte y feliz.'
    end

    def has_slide_3_content?
      has_text? 'Te sugeriremos algunas actividades para mejorar tu salud fí' \
                'sica, como tomar tu medicación o comer más sano. Otras acti' \
                'vidades tienen la finalidad de aumentar tu motivación, elev' \
                'ar tu estado de ánimo y lograr que estés más feliz.'
    end

    def has_slide_4_content?
      has_text? 'Queremos que te involucres en actividades que te hagan sent' \
                'ir más feliz y motivado. Por ejemplo, probar nuevas activid' \
                'ades en tu tiempo libre o pasar más tiempo con tus seres qu' \
                'eridos u otras cosas que puedas disfrutar.'
    end

    def has_slide_5_content?
      has_text? 'Así combinando actividades para mejorar tu salud física y t' \
                'u salud emocional, tendrás una vida más satisfactoria y feliz.'
    end

    def has_slide_6_content?
      has_text? 'Durante las 6 semanas que dura este programa, una enfermera' \
                ' o enfermero te acompañará, motivándote y aclarando tus dud' \
                'as. Así, podrás sacar lo máximo de este programa.'
    end

    def has_slide_7_content?
      has_text? 'Para iniciar el vídeo, por favor, presiona el triángulo deb' \
                'ajo del vídeo.'
    end

    def has_slide_8_content?
      has_text? 'Has aceptado participar en CONEMO por algún motivo. ¡Cuénta' \
                'nos por qué te gustaría tener una vida más saludable! Presi' \
                'one el rectángulo blanco y elige una o varias de las siguie' \
                'ntes opciones: Para ser más feliz Para sentirme mejor conmi' \
                'go mismo/a Para disfrutar más de la vida Para tener una sal' \
                'ud más fuerte Para volver a trabajar Para hacer feliz a mi ' \
                'familia y a mis amigos Para poder cuidar mejor a mi familia'
    end

    def has_slide_9_content?
      has_text? 'Esa es una muy buena razón. Es importante que recuerdes sie' \
                'mpre por qué te gustaría tener una vida más saludable. Ésta' \
                ' será una motivación importante para realizar tus actividad' \
                'es, aun cuando tengas que hacer cosas que sean difíciles al' \
                ' comienzo.'
    end

    def on_activity_planning_slide?
      has_text? '¡Intentemos! Por favor revisa la siguiente lista de activid' \
                'ades placenteras y selecciona una que NO hayas estado hacie' \
                'ndo últimamente pero te gustaría hacer entre HOY y MAÑANA'
    end

    def has_planned_activity_alert?
      has_text?('¡Muy bien! Intenta hacer esta actividad que has seleccionad' \
                'o entre hoy y mañana. Recuerda que puedes cambiar tu elecci' \
                'ón si deseas. En un par de días te preguntaremos cómo te fu' \
                'e.') && has_no_css?('.no-response')
    end

    def has_responses_saved?
      has_text? 'Tus respuestas han sido guardadas.'
    end
  end
end

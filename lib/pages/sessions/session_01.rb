class Sessions
  # page object for session 1
  class SessionOne
    include Capybara::DSL

    def title
      '¡Bienvenido a CONEMO!'
    end

    def has_session_content?
      has_text?('¡Bienvenido a CONEMO! Este programa fue desarrollado para a' \
                'yudarte a mejorar tu salud física y emocional. Cuando tenem' \
                'os algún problema de salud, como diabetes o hipertensión, e' \
                's común que nos sintamos desanimados o con poca energía par' \
                'a hacer las cosas. Por eso, a veces dejamos de hacer nuestr' \
                'as actividades y otras veces dejamos cosas importantes sin ' \
                'terminar. El objetivo de CONEMO es ayudarte a que mejores t' \
                'u salud física y emocional, practicando actividades que te ' \
                'harán sentir mas sano, fuerte y feliz. Te sugeriremos algun' \
                'as actividades para mejorar tu salud física, como tomar tu ' \
                'medicación o comer más sano. Otras actividades tienen la fi' \
                'nalidad de aumentar tu motivación, elevar tu estado de ánim' \
                'o y lograr que estés más feliz. Queremos que te involucres ' \
                'en actividades que te hagan sentir más feliz y motivado. Po' \
                'r ejemplo, probar nuevas actividades en tu tiempo libre o p' \
                'asar más tiempo con tus seres queridos u otras cosas que pu' \
                'edas disfrutar. Así combinando actividades para mejorar tu ' \
                'salud física y tu salud emocional, tendrás una vida más sat' \
                'isfactoria y feliz. Durante las 6 semanas que dura este pro' \
                'grama, una enfermera o enfermero te acompañará, motivándote' \
                ' y aclarando tus dudas. Así, podrás sacar lo máximo de este' \
                ' programa. Para iniciar el vídeo, por favor, presiona el tr' \
                'iángulo debajo del vídeo. Has aceptado participar en CONEMO' \
                ' por algún motivo. ¡Cuéntanos por qué te gustaría tener una' \
                ' vida más saludable! Presione el rectángulo blanco y elige ' \
                'una o varias de las siguientes opciones: Para ser más feliz' \
                ' Para sentirme mejor conmigo mismo/a Para disfrutar más de ' \
                'la vida Para tener una salud más fuerte Para volver a traba' \
                'jar Para hacer feliz a mi familia y a mis amigos Para poder' \
                ' cuidar mejor a mi familia Esa es una muy buena razón. Es i' \
                'mportante que recuerdes siempre por qué te gustaría tener u' \
                'na vida más saludable. Ésta será una motivación importante ' \
                'para realizar tus actividades, aun cuando tengas que hacer ' \
                'cosas que sean difíciles al comienzo.')
    end
  end
end

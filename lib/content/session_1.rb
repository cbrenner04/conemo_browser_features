# content for session one which is compared in sessions_spec.rb
module SessionOneContent
  def has_content?
    '¡Bienvenido a CONEMO! Este programa fue desarrollado para ayudarte ' \
    'a mejorar tu salud física y emocional. Cuando tenemos algún problem' \
    'a de salud, como diabetes o hipertensión, es común que nos sintamos' \
    ' desanimados o con poca energía para hacer las cosas. Por eso, a ve' \
    'ces dejamos de hacer nuestras actividades y otras veces dejamos cos' \
    'as importantes sin terminar. El objetivo de CONEMO es ayudarte a qu' \
    'emocional, practicando actividades que te harán sentir mas sano, fu' \
    'erte y feliz. Te sugeriremos algunas actividades para mejorar tu sa' \
    'lud física, como tomar tu medicación o comer más sano. Otras activi' \
    'dades tienen la finalidad de aumentar tu motivación, elevar tu esta' \
    'do de ánimo y lograr que estés más feliz. Queremos que te involucre' \
    's en actividades que te hagan sentir más feliz y motivado. Por ejem' \
    'plo, probar nuevas actividades en tu tiempo libre o pasar más tiemp' \
    'o con tus seres queridos u otras cosas que puedas disfrutar. Así co' \
    'mbinando actividades para mejorar tu salud física y tu salud emocio' \
    'nal, tendrás una vida más satisfactoria y feliz. Durante las 6 sema' \
    'nas que dura este programa, una enfermera o enfermero te acompañará' \
    ', motivándote y aclarando tus dudas. Así, podrás sacar lo máximo de' \
    ' este programa. Para iniciar el vídeo, por favor, presiona el trián' \
    'gulo debajo del vídeo. Has aceptado participar en CONEMO por algún ' \
    'motivo. ¡Cuéntanos por qué te gustaría tener una vida más saludable' \
    '! Presione el rectángulo blanco y elige una o varias de las siguien' \
    'tes opciones: Esa es una muy buena razón. Es importante que recuerd' \
    'es siempre por qué te gustaría tener una vida más saludable. Ésta s' \
    'erá una motivación importante para realizar tus actividades, aun cu' \
    'ando tengas que hacer cosas que sean difíciles al comienzo.'
  end
end

# create reference
module Kernel
  def session_1_content
    SessionOneContent
  end
end

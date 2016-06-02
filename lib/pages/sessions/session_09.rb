# frozen_string_literal: true
class Sessions
  # page object for session 9
  class SessionNine
    include Capybara::DSL

    def title
      'Encontrando las mejores actividades para ti.'
    end

    def has_session_content?
      has_text?('Has tenido casi una semana realizando actividades placenter' \
        'as. ¿Te parecieron más divertidas de lo que esperabas? ¿O quizás fu' \
        'eron más difíciles de lo que imaginabas? Ahora es el momento de pro' \
        'bar qué actividades son las que te hacen sentir mejor. Si alguna de' \
        ' las actividades de esta semana te ha hecho sentir muy bien, deberí' \
        'as seguir haciéndola. Las que no te funcionaron bien, reemplázalas ' \
        'por otras actividades y presta atención a cómo te hacen sentir. Es ' \
        'importante que intentes realizar diferentes actividades para descub' \
        'rir cuáles te hacen sentir bien, saludable y feliz. Incluso aquella' \
        's que no te gusten, te habrán ayudado a conocerte mejor. Sigue expe' \
        'rimentando para encontrar nuevas maneras para sentirte bien y estar' \
        ' sano.')
    end
  end
end

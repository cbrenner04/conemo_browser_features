class Sessions
  # page object for session 12
  class SessionTwelve
    include Capybara::DSL

    def title
      '¡La costumbre es lo que te hace seguir adelante!'
    end

    def has_session_content?
      has_text?('Muchas de nuestros comportamientos los hacemos de forma aut' \
                'omática, casi sin darnos cuenta. Muchas de nuestras tareas ' \
                'diarias se basan en hábitos. Para cambiar estos hábitos, pr' \
                'imero necesitas reconocerlos y planear cómo cambiarlos por ' \
                'algo diferente. Por ejemplo, en vez de ver televisión todas' \
                ' los noches, intenta hacer algo distinto algún día de la se' \
                'mana, como leer un libro, escuchar música o conversar con a' \
                'lguien. Si eres más consciente de tus acciones y de tus háb' \
                'itos, podrás tener la habilidad de elegir qué quieres hacer' \
                ' cada día, y, en consecuencia, sentirte diferente. Si eres ' \
                'persistente, puedes crear nuevos hábitos.')
    end
  end
end

class Sessions
  # page object for session 6
  class SessionSix
    include Capybara::DSL

    def present?
      has_css?('.well', text: '¡Cuidar tu salud es importante!')
    end

    def open
      find('.well', text: '¡Cuidar tu salud es importante!')
        .find('.btn', text: 'Inicio').click
    end

    def has_session_content?
      has_text?('Durante los últimos días, has prestado atención a actividad' \
                'es placenteras, así como deberes y tareas que has dejado de' \
                ' hacer. Ahora te invitamos a pensar en actividades que te a' \
                'yudarán a mejorar tu salud. Recuerda que mejorar tu salud f' \
                'ísica mejorará también tu salud emocional. Algunas personas' \
                ' creen que no está en sus manos mejorar su salud o que esto' \
                ' es muy difícil de lograr. ¡Eso no es verdad! Actividades s' \
                'encillas o cambios pequeños pueden hacer una gran diferenci' \
                'a. Caminar 30 minutos al día o comer una porción de frutas ' \
                'y otra de verduras son solo dos ejemplos de actividades que' \
                ' pueden mejorar tu salud en general. ¿Qué actividad te gust' \
                'aría intentar para mejorar tu salud? Mira la siguiente list' \
                'a y elige alguna. Salir a caminar o a correr Practicar un d' \
                'eporte (jugar vóley, fútbol, ir al gimnasio, ir a bailar) T' \
                'omar mis medicamentos correctamente Comer más frutas y verd' \
                'uras Comer menos dulces o grasas Ir al médico regularmente ' \
                'Controlar mi glucosa (azúcar en la sangre) Controlar mi pre' \
                'sión arterial El objetivo de las próximas semanas es inclui' \
                'r, poco a poco, nuevas actividades en tu vida diaria. Ser m' \
                'ás activo te ayudará a sentirte más animado y mejor contigo' \
                ' mismo. ¡Ya lo verás!')
    end
  end
end

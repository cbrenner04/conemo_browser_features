class Sessions
  # page object for session 5
  class SessionFive
    include Capybara::DSL

    def present?
      has_css?('.well',
               text: 'Terminar nuestras tareas nos hace sentir mejor.')
    end

    def open
      find('.well', text: 'Terminar nuestras tareas nos hace sentir mejor.')
        .find('.btn', text: 'Inicio').click
    end

    def has_session_content?
      has_text?('Durante los últimos días has prestado atención a algunas ac' \
                'tividades placenteras que últimamente han estado ausentes e' \
                'n tu vida. Ahora te invitamos a pensar en otro tipo de acti' \
                'vidades que son también importantes: los deberes y tareas. ' \
                'Son actividades que, al hacerlas, nos dan la sensación y sa' \
                'tisfacción del deber cumplido. Por ejemplo, terminar una ta' \
                'rea en la casa, ayudar a un familiar con un problema o cuid' \
                'ar tu salud: tomando tus medicaciones, haciendo ejercicios ' \
                'o comiendo más sanamente. Realizar más actividades placente' \
                'ras y deberes o tareas diariamente te ayudará a mejorar tu ' \
                'salud física y emocional. Así te sentirás mejor contigo mis' \
                'mo. Cuéntanos de alguna actividad o tarea que deberías habe' \
                'r hecho pero que que dejaste sin terminar. Por ejemplo, pag' \
                'ar tus cuentas, hacer tareas de la casa, mejorar tu aliment' \
                'ación, todo es válido. Revisa la siguiente lista de activid' \
                'ades y escoge 2 o 3 actividades que deberías cumplir, pero ' \
                'que has dejado de hacer. Hacer ejercicio Ayudar a un famili' \
                'ar Tomar mis medicamentos correctamente Pagar una cuenta Re' \
                'solver un problema personal Ir al médico Limpiar u ordenar ' \
                'la casa Salir a caminar Comer comida más sana Controlar mi ' \
                'nivel de azúcar sanguina Tener mi presión bajo control Dura' \
                'nte los próximos días, piensa cuáles son aquellos deberes y' \
                ' tareas que no has estado haciendo últimamente. Identifica ' \
                'y recuerda especialmente aquellas que, si las hicieras, te ' \
                'harían sentir satisfecho y orgulloso de ti mismo y que te a' \
                'yudarían a lograr tu objetivo en este programa. Fíjate si e' \
                's que tienes la oportunidad de hacerlas. ¡Recuerda estas op' \
                'ortunidades!')
    end
  end
end

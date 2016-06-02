# frozen_string_literal: true
class Sessions
  # page object for session 5
  class SessionFive
    include Capybara::DSL

    def title
      'Terminar nuestras tareas nos hace sentir mejor.'
    end

    def has_session_content?
      has_text? CONTENT
    end

    CONTENT = 'Durante los últimos días has prestado atención a algunas acti' \
      'vidades placenteras que últimamente han estado ausentes en tu vida. A' \
      'hora te invitamos a pensar en otro tipo de actividades que son tambié' \
      'n importantes: los deberes y tareas. Son actividades que, al hacerlas' \
      ', nos dan la sensación y satisfacción del deber cumplido. Por ejemplo' \
      ', terminar una tarea en la casa, ayudar a un familiar con un problema' \
      ' o cuidar tu salud: tomando tus medicaciones, haciendo ejercicios o c' \
      'omiendo más sanamente. Realizar más actividades placenteras y deberes' \
      ' o tareas diariamente te ayudará a mejorar tu salud física y emociona' \
      'l. Así te sentirás mejor contigo mismo. Cuéntanos de alguna actividad' \
      ' o tarea que deberías haber hecho pero que que dejaste sin terminar. ' \
      'Por ejemplo, pagar tus cuentas, hacer tareas de la casa, mejorar tu a' \
      'limentación, todo es válido. Revisa la siguiente lista de actividades' \
      ' y escoge 2 o 3 actividades que deberías cumplir, pero que has dejado' \
      ' de hacer. Hacer ejercicio Ayudar a un familiar Tomar mis medicamento' \
      's correctamente Pagar una cuenta Resolver un problema personal Ir al ' \
      'médico Limpiar u ordenar la casa Salir a caminar Comer comida más san' \
      'a Controlar mi nivel de azúcar sanguina Tener mi presión bajo control' \
      ' Durante los próximos días, piensa cuáles son aquellos deberes y tare' \
      'as que no has estado haciendo últimamente. Identifica y recuerda espe' \
      'cialmente aquellas que, si las hicieras, te harían sentir satisfecho ' \
      'y orgulloso de ti mismo y que te ayudarían a lograr tu objetivo en es' \
      'te programa. Fíjate si es que tienes la oportunidad de hacerlas. ¡Rec' \
      'uerda estas oportunidades!'
  end
end

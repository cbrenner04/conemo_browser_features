class Sessions
  # page object for session 13
  class SessionThirteen
    include Capybara::DSL

    def title
      'Actividades que mejoran tu salud'
    end

    def has_session_content?
      has_text?('Esperamos que la semana pasada hayas podido hacer alguna ac' \
                'tividad positiva. Aunque haya sido solo pequeña es importan' \
                'te. Pequeños pasos pueden generar grandes cambios. Ahora qu' \
                'eremos que pienses en actividades nuevas que pueden mejorar' \
                ' tu salud. Tal vez podrías salir a caminar o a correr, prac' \
                'ticar algún deporte, ir al gimnasio o seguir una dieta sana' \
                '. Estas actividades pueden ayudarte a mejorar tu salud físi' \
                'ca. Recuerda: mejorar tu salud física también puede mejorar' \
                ' tu salud emocional y hacer que te sientas mejor contigo mi' \
                'smo. ¿Te animas a empezar con alguna de estas actividades? ' \
                '¡Este cambio mejorará tu salud! ¿Qué actividad te gustaría ' \
                'experimentar para mejorar tu salud? Elige una actividad de ' \
                'la siguiente lista. Salir a caminar o a correr Practicar un' \
                ' deporte (jugar vóley, fútbol, ir al gimnasio, ir a bailar)' \
                ' Tomar mis medicamentos correctamente Comer más frutas y ve' \
                'rduras Comer menos dulces o grasas Ir al médico regularment' \
                'e Controlar mi glucosa (azúcar en la sangre) Controlar mi p' \
                'resión arterial Luego, en el calendario, indica la fecha y ' \
                'la hora en la que planeas realizar la actividad elegida.')
    end
  end
end

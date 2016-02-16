# page object for training page
class Training
  include Capybara::DSL

  def open
    click_on 'Sesión de entrenamiento'
  end

  def present?
    has_text? '¡Bienvenido a CONEMO! CONEMO es un programa que te permite le' \
              'er textos, mirar vídeos y responder preguntas, todo con el ob' \
              'jetivo de mejorar tu salud física y emocional. Esta sesión de' \
              ' entrenamiento contiene explicaciones y demostraciones de cóm' \
              'o usar cada una de las funciones de CONEMO. Te mostraremos có' \
              'mo Seleccionar “siguiente y atrás” Ver vídeos Elegir respuest' \
              'as Elegir varias respuestas Elegir una sola respuesta Retroce' \
              'der Abrir diálogos Ver las notificaciones de sesiones Usar el' \
              ' calendario Programar una hora Siguiente y atrás Cuando abres' \
              ' el aplicativo y la sesión que corresponde de ese día, lee el' \
              ' texto de esa página y luego presiona el botón “siguiente” Si' \
              ' quieres regresar a la página anterior presiona el botón “atr' \
              'ás”. Retroceder Siempre puedes apretar el botón “atrás” en tu' \
              ' teléfono si no quieres responder una pregunta en ese momento' \
              ' o si quieres regresar a la sesión. / Para volver a la página' \
              ' inicial de CONEMO, presiona el símbolo de la casita. Ver víd' \
              'eos Para ver un vídeo, presiona el triángulo debajo del vídeo' \
              ' Para pausar el vídeo, presiona el botón “pausa” Elegir respu' \
              'estas Para responder una pregunta o elegir actividades, simpl' \
              'emente presiona el rectángulo blanco. Se abrirá una página co' \
              'n todas las opciones. Para elegir una opción presiónala. Una ' \
              'vez que hayas hecho tu selección, presiona “Aceptar”. Elegir ' \
              'varias respuestas En algunas preguntas se puede elegir varias' \
              ' opciones. Para elegir cualquiera de esas opciones presiónala' \
              '. Si has elegido una respuesta y te gustaría cambiarla, presi' \
              'ona nuevamente la respuesta seleccionada para “des-marcarlo”.' \
              ' Acá un ejemplo: ¿Qué tipo de comida te gusta? Elige todas la' \
              's opciones que corresponden. Lomo saltado Arroz con pollo Cev' \
              'iche Papa a la huancaína Pizzas y pastas Carnes Pescados y Ma' \
              'riscos Frutas y verduras Elegir una sola respuesta En otras p' \
              'reguntas sólo debes elegir una opción de las presentes. Acá u' \
              'n ejemplo: ¿Cuál es tu color favorito? rojo verde azul amaril' \
              'lo otro Notificaciones de sesiones Además te mandaremos notif' \
              'icaciones para recordarte que hay una nueva sesión disponible'
  end
end

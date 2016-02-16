# page object for instructions page
class Instructions
  include Capybara::DSL

  def open
    click_on 'Instrucciones'
  end

  def present?
    has_text? 'Instrucciones ¿Cómo funciona el aplicativo? Debes ingresar al ' \
              'aplicativo CONEMO 3 veces a la semana. Cada vez que lo hagas, ' \
              'el aplicativo te dará nueva información y nuevas tareas. Cada ' \
              'vez que uses el aplicativo, aprenderás nuevas estrategias para' \
              ' mantenerte sano y feliz. Si olvidas ingresar al aplicativo má' \
              's de 2 veces seguidas, una enfermera te llamará para saber si ' \
              'todo está bien e invitarte a seguir usando CONEMO. Sesiones Si' \
              ' quieres mirar una de las sesiones anteriores debes apretar el' \
              ' botón “Sesiones” y ahí encontrarás la sesión que quieres usar' \
              '. Si pierdes una sesión o no la haces a tiempo, siempre puedes' \
              ' recuperarla apretando el botón “Sesiones”. Solicitar ayuda Si' \
              ' en algún momento necesitas ayuda de la enfermera, por favor a' \
              'prieta el botón “Solicitar ayuda”. Luego elige una de las sigu' \
              'ientes alternativas: Necesito ayuda con el aplicativo, Necesit' \
              'o ayuda de mi enfermera Tengo dificultades con la conexión de ' \
              'internet'
  end
end

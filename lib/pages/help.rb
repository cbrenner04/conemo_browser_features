# page object for the help page
class Help
  include Capybara::DSL

  def open
    click_on 'Contactar enfermera'
  end

  def ask_for_help
    click_on 'Solicitar ayuda'
  end

  def has_message?
    has_text? 'Muchas gracias. La enfermera ha sido contactada. Ella te ' \
              'llamará dentro de los siguientes 2 días laborales.'
  end
end

class Sessions
  # page object for session 16
  class SessionSixteen
    include Capybara::DSL

    def title
      '¡Los cambios toman tiempo!'
    end

    def has_session_content?
      has_text?('Por lo general, los cambios importantes no ocurren de un dí' \
                'a para el otro, sino que toman tiempo. Por eso, a veces es ' \
                'difícil darse cuenta de que estos cambios están sucediendo.' \
                ' Es importante que recuerdes todo lo que has aprendido y cr' \
                'ecido hasta el momento. Valora los cambios que has logrado,' \
                ' aunque algunos te parezcan pequeños. Ya sabes que pequeños' \
                ' cambios pueden ser el inicio de grandes cambios a lo largo' \
                ' del tiempo. Pensar en las cosas que no pudiste hacer te ay' \
                'udarán a aprender algo, pero no gastes mucho tiempo en esto' \
                '. Sigue adelante para que puedas alcanzar cambios más impor' \
                'tantes y tener una vida cada vez más saludable y feliz. Sab' \
                'emos que tomará un tiempo hasta que estos nuevos comportami' \
                'entos sean parte de tu rutina diaria, pero si eres persiste' \
                'nte, será cada vez más fácil y más natural. Para iniciar el' \
                ' vídeo, por favor, presiona el triángulo debajo del vídeo.')
    end
  end
end

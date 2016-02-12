class Configuration
  include Capybara::DSL

  def configure_user
    visit ENV['BASE_URL']
    fill_in 'configurationToken', with: 'it doesn\'t matter'
    click_on 'Inicio'
  end
end

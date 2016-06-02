# frozen_string_literal: true
# page object for configuration page
class Configuration
  include Capybara::DSL

  def configure_user
    visit ENV['BASE_URL']
    fill_in 'configurationToken', with: 'it doesn\'t matter'
    click_on 'Inicio'
  end

  def clear_data
    execute_script("indexedDB.deleteDatabase('conemo'); localStorage.clear()")
  end
end

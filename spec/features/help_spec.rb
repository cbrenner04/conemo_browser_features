# filename: ./spec/features/help_spec.rb

require './lib/pages/configuration'
require './lib/pages/help'
require './lib/pages/home'

def configuration
  configuration ||= Configuration.new
end

def help
  help ||= Help.new
end

def home
  home ||= Home.new
end

feature 'Help' do
  background do
    configuration.configure_user
  end

  scenario 'Participant asks for help' do
    help.open
    help.ask_for_help
    expect(help).to have_message
    home.return_home
    expect(home).to be_visible
  end
end

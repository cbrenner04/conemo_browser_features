# frozen_string_literal: true
# filename: ./spec/features/help_spec.rb

require './lib/pages/help'

def help
  @help ||= Help.new
end

feature 'Help' do
  scenario 'Participant asks for help' do
    help.open
    help.ask_for_help

    expect(help).to have_message

    home.return_home

    expect(home).to be_visible
  end
end
